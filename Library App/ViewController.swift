//
//  ViewController.swift
//  Library App
//
//  Created by Omar Tharwat on 5/14/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    var books = [Book]()
    var bookFiltered = [Book]()
    var scopeId = 0
    // MARK : OUTLETS
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        searchBar.delegate = self
        customizeSearchBar()
        books = loadLibrary()
        books = reloadWithScope(selectedScope: scopeId)
        
    }


}
extension ViewController : UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookFiltered.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BooksTvCell", for: indexPath) as! Cell
        cell.imageView?.image = bookFiltered[indexPath.row].cover
        cell.bookName.text = bookFiltered[indexPath.row].title
        cell.authorName.text = bookFiltered[indexPath.row].author
        
        return cell
    }
    func reloadWithScope(selectedScope : Int) -> [Book] {
        scopeId = selectedScope
        switch selectedScope {
        case 0:
            return books.filter({$0.type == BookType.computer})
            case 2:
            return books.filter({$0.type == BookType.education})
            case 1:
            return books.filter({$0.type == BookType.law})
        default:
            return [Book]()
        }
        
        
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        bookFiltered = reloadWithScope(selectedScope: scopeId)
        if !searchText.isEmpty {
            bookFiltered = bookFiltered.filter({$0.title.contains(searchText)})
        }
        tableView.reloadData()
    }
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        bookFiltered = reloadWithScope(selectedScope: selectedScope)
        tableView.reloadData()
    }
    func customizeSearchBar(){
        if let textField = searchBar.value(forKey: "searchField") as? UITextField {
            textField.textAlignment = .right
        }
    }
    
}
