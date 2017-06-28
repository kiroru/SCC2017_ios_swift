//
//  ViewController.swift
//  SCC2017_ios_swift
//
//  Created by sak on 2017/06/26.
//  Copyright © 2017年 Kiroru Inc. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    class Item : NSObject {
        let BASE_URL = "https://kiroru-inc.jp/share/scc2017/"
        let imageUrl:String
        let jname:String
        let ename:String
        
        init(imageUrl:String, jname:String, ename:String) {
            self.imageUrl = BASE_URL + imageUrl
            self.jname = jname
            self.ename = ename
        }
    }
    
    var items:[Item] = []
    
    @IBOutlet var tableView:UITableView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        items.append(Item(imageUrl: "Japan.png", jname: "日本", ename: "Japan"))
        items.append(Item(imageUrl: "China.png", jname: "中国", ename: "China"))
        items.append(Item(imageUrl: "USA.png", jname: "アメリカ", ename: "America"))
        items.append(Item(imageUrl: "England.png", jname: "イギリス", ename: "England"))
        items.append(Item(imageUrl: "France.png", jname: "フランス", ename: "France"))
        
        tableView?.dataSource = self
        tableView?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")!
        let item = items[indexPath.row]
        
        let iv = cell.viewWithTag(1) as! UIImageView
        iv.sd_setImage(with: URL(string: item.imageUrl)!)

        let tv1 = cell.viewWithTag(2) as! UILabel
        tv1.text = item.jname
        
        let tv2 = cell.viewWithTag(3) as! UILabel
        tv2.text = item.ename
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}

