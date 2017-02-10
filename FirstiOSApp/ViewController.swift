//
//  ViewController.swift
//  FirstDemo
//
//  Created by Wing Chau on 3/2/2017.
//  Copyright © 2017 Devtography. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    private var labelState = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        messageLabel.text = "Behold oh master!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func doButtonTap(_ sender: Any) {
        if labelState {
            messageLabel.text = "Live long and prosper"
        } else {
            messageLabel.text = "May the force be with you"
        }
        
        labelState = !labelState;
        
        button.setTitle("Ouch", for: .normal)
    }
}

