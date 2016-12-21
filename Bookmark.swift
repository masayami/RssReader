//
//  Bookmarks.swift
//  MyPlayground1213
//
//  Created by  intern on 2016/12/14.
//  Copyright © 2016年 hanga. All rights reserved.
//


import RealmSwift

class Bookmark: Object {
    dynamic var title = ""
    dynamic var detail = ""
    dynamic var link = ""
    dynamic var date: NSDate? = nil
}
