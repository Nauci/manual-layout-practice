//
//  ViewController.swift
//  ManualLayoutExam
//
//  Created by Sophie Zhou on 9/12/17.
//  Copyright © 2017 Sophie Zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.aButton.addTarget(self, action: #selector(aButtonPressed), for: UIControlEvents.touchUpInside)
        self.bButton.addTarget(self, action: #selector(bButtonPressed), for: UIControlEvents.touchUpInside)
        self.cButton.addTarget(self, action: #selector(cButtonPressed), for: UIControlEvents.touchUpInside)
    }

    @objc func aButtonPressed() {
        let vc = AViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @objc func bButtonPressed() {
        let vc = BViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @objc func cButtonPressed() {
        let vc = CViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

