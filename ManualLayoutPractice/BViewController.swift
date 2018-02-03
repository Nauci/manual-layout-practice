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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
    }

}
