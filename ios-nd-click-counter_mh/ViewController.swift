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
    var label2:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // MHH - Create label object and add to ViewController
        let label = UILabel()
        label.frame = CGRectMake(150,150,60,60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // MHH - 2nd test label object
        let label2 = UILabel()
        label2.frame = CGRectMake(150,175,60,60)
        label2.text = "0"
        view.addSubview(label2)
        self.label2 = label2
        
        // MHH - Create button object and add to ViewController
        let button = UIButton()
        button.frame = CGRectMake(150,250,90,30)
        button.setTitle ("Click up", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
        button.addTarget(self, action: #selector(ViewController.changeBackgroundColor), forControlEvents: UIControlEvents.TouchUpInside)


        // MHH - Create 2nd button object to decrement
        let button2 = UIButton()
        button2.frame = CGRectMake(150,290,90,30)
        button2.setTitle ("Click down", forState: .Normal)
        button2.setTitleColor(UIColor.blueColor(), forState: .Normal)
        view.addSubview(button2)
        
        button2.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
        button2.addTarget(self, action: #selector(ViewController.changeBackgroundColor), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount()
    {
        count += 1
        label.text = "\(self.count)"
        label2.text = label.text
    }
    
    func decrementCount()
    {
        count -= 1
        label.text = "\(self.count)"
        label2.text = label.text
    }

    func changeBackgroundColor()
    {
        if ( count % 4 == 0 )
        {
            view.backgroundColor = UIColor.whiteColor()
        }
        else if ( count % 4 == 1 )
        {
            view.backgroundColor = UIColor.redColor()
        }
        else if ( count % 4 == 2 )
        {
            view.backgroundColor = UIColor.greenColor()
        }
        else if ( count % 4 == 3 )
        {
            view.backgroundColor = UIColor.orangeColor()
        }

    }
}

