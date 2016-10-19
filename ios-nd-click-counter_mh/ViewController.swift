//
//  ViewController.swift
//  ios-nd-click-counter_mh
//
//  Created by Mike Huffaker on 10/19/16.
//  Copyright © 2016 Mike Huffaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // MHH - Create label object and add to ViewController
        let label = UILabel()
        label.frame = CGRectMake(150,150,60,60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // MHH - Create button object and add to ViewController
        let button = UIButton()
        button.frame = CGRectMake(150,250,60,60)
        button.setTitle ("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    func incrementCount()
    {
        count += 1
        label.text = "\(self.count)"
    }

}

