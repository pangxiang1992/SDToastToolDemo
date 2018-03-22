//
//  ViewController.swift
//  SDToastToolDemo
//
//  Created by pangxiang on 3/22/18.
//  Copyright © 2018 pangxiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var contentView = UIView.init(frame: CGRect.init(x: 100, y: 100, width: 300, height: 300))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        contentView.backgroundColor = UIColor.yellow
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
}

