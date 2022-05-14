//
//  Book.swift
//  Library App
//
//  Created by Omar Tharwat on 5/14/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import UIKit
struct Book {
         var cover : UIImage?
         var title : String
         var author : String
         var type : BookType
     }
enum BookType {
    case computer , law , education
}
