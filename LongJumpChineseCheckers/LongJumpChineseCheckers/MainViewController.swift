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
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var tutorialButton: UIButton!
    @IBOutlet weak var v1: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // ViewController Background
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background1.jpg")!)
        
        // Button Styles
        b1.layer.cornerRadius = 20
        b1.layer.borderColor = UIColor.black.cgColor
        b1.layer.borderWidth = 3
        
        b2.layer.cornerRadius = 20
        b2.layer.borderColor = UIColor.black.cgColor
        b2.layer.borderWidth = 3
        
        b3.layer.cornerRadius = 20
        b3.layer.borderColor = UIColor.black.cgColor
        b3.layer.borderWidth = 3
        
        b4.layer.cornerRadius = 20
        b4.layer.borderColor = UIColor.black.cgColor
        b4.layer.borderWidth = 3
        
        tutorialButton.layer.cornerRadius = 20
        tutorialButton.layer.borderColor = UIColor.black.cgColor
        tutorialButton.layer.borderWidth = 3
        
        // View
        v1.layer.cornerRadius = 20
        v1.layer.borderColor = UIColor.black.cgColor
        v1.layer.borderWidth = 3
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
