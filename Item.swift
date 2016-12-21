//
//  Item.swift
//  MyPlayground1213
//
//  Created by  intern on 2016/12/13.
//  Copyright © 2016年 hanga. All rights reserved.
//
import Ji
import SDWebImage

class Item {
    var title = ""
    var detail = ""
    var link = ""
    var imgUrl: URL?
    var jiDoc: Ji? = nil {
        didSet {
            if let img = jiDoc?.xPath("//img[@class='entry-image']")?.first {
                imgUrl = URL(string: img["src"]!)
            }else{
                imgUrl = nil
            }
        }
    }
    
}
