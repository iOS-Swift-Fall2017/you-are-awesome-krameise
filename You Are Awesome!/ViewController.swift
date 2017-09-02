//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Michelle Krameisen on 8/27/17.
//  Copyright © 2017 Krameisen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    //this code executes when the view controller loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        if messageLabel.text == "You Are Awesome!" {
            messageLabel.text = "You Are Great!"
        } else {
            messageLabel.text = "You Are Awesome!"
        }
        messageLabel.textColor = UIColor.red
    }
    
}

