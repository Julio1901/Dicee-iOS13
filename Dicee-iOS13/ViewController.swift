//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var diceImageViewOne: UIImageView!
     
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        changeRollNumber()
    }
    
    
    func changeRollNumber(){
       sortDicesImage()
    }
   
    
    private func sortDicesImage() {
        let allSidesOfTheDice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageViewOne.image = allSidesOfTheDice.randomElement()
        diceImageTwo.image = allSidesOfTheDice.randomElement()
    }
    
  
    
    
}

