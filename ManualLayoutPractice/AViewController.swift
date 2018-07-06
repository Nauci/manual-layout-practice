//
//  AViewController.swift
//  ManualLayoutExam
//
//  Created by Sophie Zhou on 9/12/17.
//  Copyright © 2017 Sophie Zhou. All rights reserved.
//

import UIKit

class AViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.title = "A"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let a = UIView()
    let b = UIView()
    let c = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        a.backgroundColor = UIColor.red
        b.backgroundColor = UIColor.green
        c.backgroundColor = UIColor.blue
        
        b.addSubview(c)
        a.addSubview(b)
        self.view.addSubview(a)
        
        self.view.backgroundColor = UIColor.white

    }
    
    override func viewWillAppear(_ animated: Bool) {
        a.frame = CGRect(x:0, y:0, width: a.superview!.bounds.width, height: a.superview!.bounds.width)
        b.frame = CGRect(x:50, y:50, width: b.superview!.bounds.width-100, height: b.superview!.bounds.height-100)
        c.frame = CGRect(x:50, y:50, width: c.superview!.bounds.width-100, height: c.superview!.bounds.height-100)
    }
}
