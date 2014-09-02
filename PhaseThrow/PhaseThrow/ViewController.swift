//
//  ViewController.swift
//  PhaseThrow
//
//  Created by Arjun Puri on 9/1/14.
//  Copyright (c) 2014 Arjun Puri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
 
    @IBOutlet var nextWordLabel: UILabel!
    @IBAction func nextWordButton(sender: UIButton) {
        
        var word: String? = nounDict.randomWord()
        if word != nil {
            self.nextWordLabel.text = word!
            self.nextWordLabel.textAlignment = NSTextAlignment.Center
        }
        
    }
    
    var nounDict: NounDictionary!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nounDict = NounDictionary()
        self.nextWordLabel.text = ""
       
    }


}

