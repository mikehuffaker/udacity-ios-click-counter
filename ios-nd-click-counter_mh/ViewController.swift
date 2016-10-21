//
//  ViewController.swift
//  ios-nd-click-counter_mh
//
//  Created by Mike Huffaker on 10/19/16.
//  Copyright © 2016 Mike Huffaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    var count = 0
    @IBOutlet var label:UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        
    }

    @IBAction func incrementCount()
    {
        count += 1
        label.text = "\(self.count)"
    }

}

