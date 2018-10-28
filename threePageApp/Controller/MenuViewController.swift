//
//  MenuViewController.swift
//  threePageApp
//
//  Created by Marij on 24/10/2018.
//  Copyright © 2018 Marij. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet var menuButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        var num = 1
        for button in menuButtons {
            button.layer.cornerRadius = 8
            button.tag = num
            num += 1
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ItemsTableViewController
        {
            let vc = segue.destination as? ItemsTableViewController
            let button = sender as? UIButton
            vc?.foodType = (button?.titleLabel?.text)!
        }
    }
    
    @IBAction func touchButton(_ sender: UIButton) {
        performSegue(withIdentifier: "segueToItemsMenu", sender: sender)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

 

}
