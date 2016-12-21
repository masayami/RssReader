//
//  DetailViewController.swift
//  MyPlayground1213
//
//  Created by  intern on 2016/12/14.
//  Copyright © 2016年 hanga. All rights reserved.
//

import UIKit
import RealmSwift

class DetailViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var item: Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let i = item else {
            return
        }
        
        if let url = URL(string: i.link) {
            let request = URLRequest(url: url)
            webView.loadRequest(request)
        }
    }
    
    @IBAction func addBookmark(_ sender: AnyObject) {
        
        guard let i = item else {
            return
        }
        
        let bookmark = Bookmark()
        bookmark.title = i.title
        bookmark.detail = i.detail
        bookmark.link = i.link
        bookmark.date = NSDate()
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(bookmark)
        }
    }
}
