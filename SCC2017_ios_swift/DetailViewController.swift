//
//  DetailViewController.swift
//  SCC2017_ios_swift
//
//  Created by sak on 2017/06/30.
//  Copyright © 2017年 Kiroru Inc. All rights reserved.
//

import UIKit
import SDWebImage

class DetailViewController: UIViewController {

    var imageUrl:String?
    var jname:String?
    var ename:String?

    @IBOutlet var iv:UIImageView?
    @IBOutlet var tv1:UILabel?
    @IBOutlet var tv2:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        iv?.sd_setImage(with: URL(string: imageUrl!))
        tv1?.text = jname
        tv2?.text = ename
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func close() {
        self.dismiss(animated: false, completion: nil)
    }
}
