//
//  ViewController.swift
//  Training
//
//  Created by admin on 04/12/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class MyCustomViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        navigationItem.title = "1st View"
    }
    
    required init?(coder: NSCoder) {
        return nil
        
    }
    
    lazy var aView = MyCustomView()
    
    override func loadView() {
        view = aView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aView.sendButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
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
    
    @objc
    func buttonPressed(_ button: UIButton){
        print("Pressed")
    }
}

