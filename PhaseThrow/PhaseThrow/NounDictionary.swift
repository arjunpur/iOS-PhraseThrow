//
//  NounDictionary.swift
//  PhaseThrow
//
//  Created by Arjun Puri on 9/1/14.
//  Copyright (c) 2014 Arjun Puri. All rights reserved.
//

import UIKit

class NounDictionary: NSObject {
    var wordList : [String]?
    
    override init(){
        super.init()
        
        var mainBundle = NSBundle.mainBundle()
        var filePath : String? = mainBundle.pathForResource("nounlist", ofType: ".txt")
        if (filePath != nil){
            var words : String = NSString.stringWithContentsOfFile(filePath!, encoding: NSUTF8StringEncoding, error: nil)
            self.wordList = words.componentsSeparatedByString("\n")
        }
    }
    
    
    func randomWord() -> String? {
        if (self.wordList != nil){
            var index = arc4random_uniform(UInt32(self.wordList!.count))
            var word: String = self.wordList![Int(index)]
            return word
        }
        return nil
    }
}
