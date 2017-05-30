//
//  TutorialViewController.swift
//  test2
//
//  Created by John Mathew Escobal on 5/22/17.
//  Copyright © 2017 SOU. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController
{
    // Outlets:
    @IBOutlet weak var tutorialView: UIView!
    @IBOutlet weak var tutorialButton: UIButton!
    @IBOutlet weak var rulesLabel: UILabel!
    @IBOutlet weak var movesLabel: UILabel!
    
    
    // Type Properies:
    static let RULES: String = "Short Game:\nEach player begins with ten marbles in their star point or corner. One to nine marbles can be removed by clicking on the unwanted pieces. Any of the removed pieces can be recovered by clicking on an empty space. The goal is to be the first player to move their marbles to the opposite corner and to arrange them in the same pattern as they started with."
    static let MOVES: String = "A players turn consists of moving one marble to an adjacent empty space or jumping over adjacent marbles to an empty space. Multiple jumps are allowed during a turn. LONG JUMP CHINESE CHECKERS allows jumps over one or more marbles at a time. Double clicking on a marble at the end of a jump will end the turn. Before ending a turn, a player can click on any intermediate jump spot to return to that spot and then continue the turn on another path. A player can change marbles by clicking on any of their alternate marbles."
    
    
    // Stored Property:
    var inGame: Bool = false
    
    
    // Target-action:
    @IBAction func showCorrectScreen(_ sender: UIButton)
    {
        if inGame == true
        {
            performSegue(withIdentifier: "ShowBoardSegue", sender: self)
        }
        else if inGame == false
        {
            // Perform the segue with the indicated identifier.
            performSegue(withIdentifier: "ShowMainSegue", sender: self)
        }
        else
        {
            print("UNFORESEEN ERROR")
        }
    }
    
    
    // UIViewController Protocol Methods:
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // ViewController Background:
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background1.jpg")!)
        
        // Button Layers:
        tutorialButton.layer.cornerRadius = 20
        tutorialButton.layer.borderColor = UIColor.black.cgColor
        tutorialButton.layer.borderWidth = 3
        
        // View Layers:
        tutorialView.layer.cornerRadius = 20
        tutorialView.layer.borderColor = UIColor.black.cgColor
        tutorialView.layer.borderWidth = 3
        tutorialView.layer.opacity = 0.8
        
        // Labels Text:
        rulesLabel.text = TutorialViewController.RULES
        movesLabel.text = TutorialViewController.MOVES
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
