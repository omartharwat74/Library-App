//
//  Cell.swift
//  Library App
//
//  Created by Omar Tharwat on 5/14/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var authorName: UILabel!
    
   
  

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
