//
//  ViewController.swift
//  Training
//
//  Created by admin on 04/12/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction
    func buttonTapped() {
        print(NSLocalizedString("hello_world", comment: ""))
    }

    @IBOutlet
    var button: UIButton!
    
    @IBOutlet
    var label: UILabel!

}

