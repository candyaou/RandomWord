//
//  ViewController.swift
//  RandomWord
//
//  Created by Paspana Assarasee on 12/9/16.
//  Copyright © 2016 Paspana Assarasee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var wordField: UITextField!
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var wordSet: UILabel!
    @IBOutlet weak var result: UILabel!
    
    var setOfWord = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        wordField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //init String to store text
        let word = textField.text!
        
        //Add word to set of word
        setOfWord.append(word)
        
        //print set of word
        wordSet.text = setOfWord.joined(separator: "\t")
        print(setOfWord)
        
        //Delete text from textField
        textField.text = ""
    }
    
    @IBAction func getWord(_ sender: UIButton) {
        //random result
        let randomNumber = Int(arc4random_uniform(UInt32(setOfWord.count)))
        print(setOfWord[randomNumber])
        result.text = setOfWord[randomNumber]
    }

}

