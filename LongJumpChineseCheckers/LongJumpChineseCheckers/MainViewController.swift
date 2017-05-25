//
//  MainViewController.swift
//  test2
//
//  Created by John Mathew Escobal on 5/22/17.
//  Copyright © 2017 SOU. All rights reserved.
//

import UIKit

class MainViewController: UIViewController
{
    // Outlets:
    @IBOutlet weak var twoPlayersButton: UIButton!
    @IBOutlet weak var threePlayersButton: UIButton!
    @IBOutlet weak var fourPlayersButton: UIButton!
    @IBOutlet weak var sixPlayersButton: UIButton!
    @IBOutlet weak var tutorialButton: UIButton!
    @IBOutlet weak var menuView: UIView!
    
    
    // Target-actions:
    @IBAction func showTwoPlayersBoard(_ sender: UIButton)
    {
        // Perform the segue with the indicated identifier.
        performSegue(withIdentifier: "ShowBoardSegue", sender: self)
    }
    
    @IBAction func showThreePlayersBoard(_ sender: UIButton)
    {
        // Perform the segue with the indicated identifier.
        performSegue(withIdentifier: "ShowBoardSegue", sender: self)
    }
    
    @IBAction func showFourPlayersBoard(_ sender: UIButton)
    {
        // Perform the segue with the indicated identifier.
        performSegue(withIdentifier: "ShowBoardSegue", sender: self)
    }
    
    @IBAction func showSixPlayersBoard(_ sender: UIButton)
    {
        // Perform the segue with the indicated identifier.
        performSegue(withIdentifier: "ShowBoardSegue", sender: self)
    }
    
    @IBAction func showTutorialScreen(_ sender: UIButton)
    {
        // Perform the segue with the indicated identifier.
        performSegue(withIdentifier: "ShowTutorialSegue", sender: self)
    }
    
    
    // UIViewController Protocol Methods:
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // ViewController Background:
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background1.jpg")!)
        
        // Button Layers:
        twoPlayersButton.layer.cornerRadius = 20
        twoPlayersButton.layer.borderColor = UIColor.black.cgColor
        twoPlayersButton.layer.borderWidth = 3
        
        threePlayersButton.layer.cornerRadius = 20
        threePlayersButton.layer.borderColor = UIColor.black.cgColor
        threePlayersButton.layer.borderWidth = 3
        
        fourPlayersButton.layer.cornerRadius = 20
        fourPlayersButton.layer.borderColor = UIColor.black.cgColor
        fourPlayersButton.layer.borderWidth = 3
        
        sixPlayersButton.layer.cornerRadius = 20
        sixPlayersButton.layer.borderColor = UIColor.black.cgColor
        sixPlayersButton.layer.borderWidth = 3
        
        tutorialButton.layer.cornerRadius = 20
        tutorialButton.layer.borderColor = UIColor.black.cgColor
        tutorialButton.layer.borderWidth = 3
        
        // View Layers:
        menuView.layer.cornerRadius = 20
        menuView.layer.borderColor = UIColor.black.cgColor
        menuView.layer.borderWidth = 3
        menuView.layer.opacity = 0.8
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?) // Prepare to perform a segue.
    {
        if let destinationVC : TutorialViewController = segue.destination as? TutorialViewController
        {
            destinationVC.inGame = false
        }
    }
}
