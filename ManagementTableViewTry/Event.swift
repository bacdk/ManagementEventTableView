//
//  Event.swift
//  ManagementTableViewTry
//
//  Created by miceli on 5/13/17.
//  Copyright © 2017 Dau Khac Bac. All rights reserved.
//

import Foundation
import UIKit

class Event
{
    var title: String           //biến lưu tên sự kiện (event)
    var description: String     //biến lưu chi tiết sự kiện
    
    //Một sự kiện chuẩn: gồm tên và chi tiết
    init(titled: String, description: String)
    {
        self.title = titled
        self.description = description
    }
}
