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
    
    let messageArray =
        ["May the force be with you",
         "Live long and prosper",
         "To infinity and beyond",
         "Space is big. You just won't believe how vastly, hugely, mind-boggligly big it is"]
    
    var index = 0
    
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
        print("Button touched")
        
        let nextString = self.messageArray[index]
        self.messageLabel.text = nextString
        index += 1 // ++ is not available in swift3
        index %= self.messageArray.count
        
//        if labelState {
//            messageLabel.text = "Live long and prosper"
//        } else {
//            messageLabel.text = "May the force be with you"
//        }
//        
//        labelState = !labelState;
//        
//        button.setTitle("Ouch", for: .normal)
    }
}

