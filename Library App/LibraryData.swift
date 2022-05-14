//
//  LibraryData.swift
//  Library app
//
//  Created by SAFCSP.
//  Copyright © SAFCSP. All rights reserved.
//

import UIKit

extension ViewController {
    
    func loadLibrary() -> [Book] {
        //MARK - .computer
               books.append(Book(cover: #imageLiteral(resourceName: "book4"), title: "أدوبي إنديزاين CS6",author: "الدار العربية للعلوم ناشرون", type: .computer))
               books.append(Book(cover: #imageLiteral(resourceName: "book6"), title: "تنقيب البيانات في التطبيقات الآمنة",
                                 author: "علاء حسين الحمامي", type: .computer))
               books.append(Book(cover: #imageLiteral(resourceName: "book5"), title: "الاسلوب الليّن لتحسين تجربة المستخدم",
                                 author: "إريك ريس" , type: .computer))
        
        //MARK - .education
               books.append(Book(cover: #imageLiteral(resourceName: "book8"), title: "برنامج الذكاءات المتعدد للأطفال",
                                 author: "مركز ديبونو لتعليم التفكير‎", type: .education))
               
                   books.append(Book(cover:  #imageLiteral(resourceName: "book9"), title: "كيف تنمي مهارات طفلك الموهوب",
                                     author: "راندا عبدالعليم منير", type: .education))
                   books.append(Book(cover: #imageLiteral(resourceName: "book7"), title: "برنامج مهارات ",
                                     author: "شماء هلال", type: .education))

             
            //MARK - .low
                    books.append(Book(cover: #imageLiteral(resourceName: "1"), title: "المدخل لدراسة العلوم القانونية",
                                      author: "رزق الريس ‎/‎ خالد الرويس", type: .law))
                    books.append(Book(cover: #imageLiteral(resourceName: "3"), title: "مبادىء المرافعات الشرعية الجزء الثاني",
                                      author: "محمود علي عبدالسلام وافي", type: .law))
                    books.append(Book(cover: #imageLiteral(resourceName: "2"), title: "التراضي في تكوين عقود التجارة الالكترونية",
                                      author: "جهاد محمود عبدالمبدي‎" , type: .law))
        return books
    }
}

