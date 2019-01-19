//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Kim, David on 2019. 1. 18..
//  Copyright © 2019 David Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!"
    }
}


