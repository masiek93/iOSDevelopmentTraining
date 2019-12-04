//
//  ViewController.swift
//  Training
//
//  Created by admin on 04/12/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        navigationItem.title = "1st View"
        
    }
    
    override func loadView() {
        super.loadView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    @IBAction
    func buttonTapped() {
        performSegue(withIdentifier: "push", sender: self)
        print(NSLocalizedString("hello_world", comment: ""))
    }

    @IBOutlet
    var button: UIButton!
    
    @IBOutlet
    var label: UILabel!

}

