//
//  ViewController.swift
//  threePageApp
//
//  Created by Marij on 22/10/2018.
//  Copyright © 2018 Marij. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainMenuButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        for button in mainMenuButtons {
            button.layer.cornerRadius = 8
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

