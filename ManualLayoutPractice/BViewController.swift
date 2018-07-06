//
//  BViewController.swift
//  ManualLayoutExam
//
//  Created by Sophie Zhou on 9/13/17.
//  Copyright © 2017 Sophie Zhou. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.title = "B"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let a = UIView()
    let b = UIView()
    let c = UIView()
    let d = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        a.addSubview(d)
        a.addSubview(c)
        a.addSubview(b)
        self.view.addSubview(a)
        
        a.backgroundColor = UIColor(red: 35/255, green: 207/255, blue: 231/255, alpha: 1)
        b.backgroundColor = UIColor.white
        c.backgroundColor = UIColor.white
        d.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let w = self.view.bounds.width
        let h = self.view.bounds.height
        
        let margin = w * 0.03
        let padding = w * 0.035
    
        a.frame = CGRect(x: margin, y: margin, width: w * 0.94, height: h * 0.3)
        b.frame = CGRect(x: padding, y: padding, width: w * 0.19, height: a.bounds.height - padding * 2)
        c.frame = CGRect(x: padding * 2 + b.bounds.width, y: padding, width: a.bounds.width - padding * 3 - b.bounds.width, height: h * 0.09)
        d.frame = CGRect(x: padding * 2 + b.bounds.width, y: c.bounds.height + padding * 2, width: c.bounds.width, height: a.bounds.height - padding * 3 - c.bounds.height)
        
    }

    
}
