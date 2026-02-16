//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//My enhanced version

import UIKit

class ViewController: UIViewController {
    //these are my dice and rollcount vaariables
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    @IBOutlet weak var rollCountLabe: UILabel!
    var rollCount = 0
    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //this is me loading in my dice images into the code
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageView3.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageView4.image = UIImage(imageLiteralResourceName: "DiceOne")
        
        //this is me changing the text of the label to roll count
        rollCountLabe.text = "Roll Count: 0"
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {

        //this is me making my dice image array and randomize
        let diceArray = [ UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"),UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"),UIImage(imageLiteralResourceName: "DiceFive"),UIImage(imageLiteralResourceName: "DiceSix")]
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        diceImageView3.image = diceArray[Int.random(in: 0...5)]
        diceImageView4.image = diceArray[Int.random(in: 0...5)]
        
        //this is me changing the value of roll count and then changing the next label to the new value
        rollCount += 1
                rollCountLabe.text = "Roll Count: \(rollCount)" 
    }
    
    //this is me establishing a reset button and changing all the dice to go back to DiceOne image and resetting rollcount value and text to zero
    @IBAction func resetButton(_ sender: UIButton) {
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageView3.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageView4.image = UIImage(imageLiteralResourceName: "DiceOne")
        rollCount=0
        rollCountLabe.text = "Roll Count: \(rollCount)"
    }
   

}

