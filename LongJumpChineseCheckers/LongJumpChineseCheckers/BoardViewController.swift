//
//  BoardViewController.swift
//  test2
//
//  Created by John Mathew Escobal on 5/22/17.
//  Copyright © 2017 SOU. All rights reserved.
//

import UIKit

class BoardViewController: UIViewController
{
    // Outlets:
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var l1: UILabel!
    @IBOutlet var red: [UIButton]!
    @IBOutlet var green: [UIButton]!
    @IBOutlet var purple: [UIButton]!
    @IBOutlet var blue: [UIButton]!
    @IBOutlet var pink: [UIButton]!
    @IBOutlet var aqua: [UIButton]!
    @IBOutlet var white: [UIButton]!
    @IBOutlet var black: [UIButton]!
    
    
    // Type Properties:
    static let RED = UIColor.red
    static let GREEN = UIColor.green
    static let PURPLE = UIColor.purple
    static let BLUE = UIColor.blue
    static let PINK = UIColor.magenta
    static let AQUA = UIColor.init(red: 0, green: 247, blue: 255, alpha: 1)
    static let GRAY = UIColor.lightGray
    static let BLACK = UIColor.darkGray
    
    
    // Action-actions:
    @IBAction func quitGameShowsMainScreen(_ sender: UIButton)
    {
        // Perform the segue with the indicated identifier.
        performSegue(withIdentifier: "ShowMainSegue", sender: self)
    }
    
    @IBAction func showTutorialScreen(_ sender: UIButton)
    {
        // Perform the segue with the indicated identifier.
        performSegue(withIdentifier: "ShowTutorialSegue", sender: self)
    }
    
    @IBAction func clickedMarble(_ sender: UIButton)
    {
        let marblePosition = Int(sender.tag)
        print(marblePosition)
    }
    
    
    // Methods:
    func circle(circle: UIButton, color: UIColor)
    {
        circle.layer.cornerRadius = 25
        circle.layer.borderColor = UIColor.black.cgColor
        b3.layer.borderWidth = 2
        circle.layer.backgroundColor = color.cgColor
    }
    
    func obstacles()
    {
        for index in 0..<black.count
        {
            circle(circle: black[index], color: BoardViewController.BLACK)
        }
    }
    
    func zeroPlayer()
    {
        for index in 0..<red.count
        {
            circle(circle: red[index], color: BoardViewController.GRAY)
        }
        for index in 0..<green.count
        {
            circle(circle: green[index], color: BoardViewController.GRAY)
        }
        for index in 0..<purple.count
        {
            circle(circle: purple[index], color: BoardViewController.GRAY)
        }
        for index in 0..<blue.count
        {
            circle(circle: blue[index], color: BoardViewController.GRAY)
        }
        for index in 0..<pink.count
        {
            circle(circle: pink[index], color: BoardViewController.GRAY)
        }
        for index in 0..<aqua.count
        {
            circle(circle: aqua[index], color: BoardViewController.GRAY)
        }
        for index in 0..<white.count
        {
            circle(circle: white[index], color: BoardViewController.GRAY)
        }
    }
    
    func twoPlayers()
    {
        for index in 0..<red.count
        {
            circle(circle: red[index], color: BoardViewController.RED)
        }
        for index in 0..<green.count
        {
            circle(circle: green[index], color: BoardViewController.GRAY)
        }
        for index in 0..<purple.count
        {
            circle(circle: purple[index], color: BoardViewController.GRAY)
        }
        for index in 0..<blue.count
        {
            circle(circle: blue[index], color: BoardViewController.BLUE)
        }
        for index in 0..<pink.count
        {
            circle(circle: pink[index], color: BoardViewController.GRAY)
        }
        for index in 0..<aqua.count
        {
            circle(circle: aqua[index], color: BoardViewController.GRAY)
        }
        for index in 0..<white.count
        {
            circle(circle: white[index], color: BoardViewController.GRAY)
        }
    }
    
    func threePlayers()
    {
        for index in 0..<red.count
        {
            circle(circle: red[index], color: BoardViewController.GRAY)
        }
        for index in 0..<green.count
        {
            circle(circle: green[index], color: BoardViewController.GREEN)
        }
        for index in 0..<purple.count
        {
            circle(circle: purple[index], color: BoardViewController.GRAY)
        }
        for index in 0..<blue.count
        {
            circle(circle: blue[index], color: BoardViewController.BLUE)
        }
        for index in 0..<pink.count
        {
            circle(circle: pink[index], color: BoardViewController.GRAY)
        }
        for index in 0..<aqua.count
        {
            circle(circle: aqua[index], color: BoardViewController.AQUA)
        }
        for index in 0..<white.count
        {
            circle(circle: white[index], color: BoardViewController.GRAY)
        }
    }
    
    func fourPlayers()
    {
        for index in 0..<red.count
        {
            circle(circle: red[index], color: BoardViewController.GRAY)
        }
        for index in 0..<green.count
        {
            circle(circle: green[index], color: BoardViewController.GREEN)
        }
        for index in 0..<purple.count
        {
            circle(circle: purple[index], color: BoardViewController.PURPLE)
        }
        for index in 0..<blue.count
        {
            circle(circle: blue[index], color: BoardViewController.GRAY)
        }
        for index in 0..<pink.count
        {
            circle(circle: pink[index], color: BoardViewController.PINK)
        }
        for index in 0..<aqua.count
        {
            circle(circle: aqua[index], color: BoardViewController.AQUA)
        }
        for index in 0..<white.count
        {
            circle(circle: white[index], color: BoardViewController.GRAY)
        }
    }
    
    func sixPlayers()
    {
        for index in 0..<red.count
        {
            circle(circle: red[index], color: BoardViewController.RED)
        }
        for index in 0..<green.count
        {
            circle(circle: green[index], color: BoardViewController.GREEN)
        }
        for index in 0..<purple.count
        {
            circle(circle: purple[index], color: BoardViewController.PURPLE)
        }
        for index in 0..<blue.count
        {
            circle(circle: blue[index], color: BoardViewController.BLUE)
        }
        for index in 0..<pink.count
        {
            circle(circle: pink[index], color: BoardViewController.PINK)
        }
        for index in 0..<aqua.count
        {
            circle(circle: aqua[index], color: BoardViewController.AQUA)
        }
        for index in 0..<white.count
        {
            circle(circle: white[index], color: BoardViewController.GRAY)
        }
    }

    
    // UIViewController Protocol Methods:
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // ViewController Background:
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background1.jpg")!)
        
        // Buttons Layers:
        b1.layer.cornerRadius = 20
        b1.layer.borderColor = UIColor.black.cgColor
        b1.layer.borderWidth = 3
        
        b2.layer.cornerRadius = 20
        b2.layer.borderColor = UIColor.black.cgColor
        b2.layer.borderWidth = 3
        
        b3.layer.cornerRadius = 20
        b3.layer.borderColor = UIColor.black.cgColor
        b3.layer.borderWidth = 3
        
        // Label Layers:
        l1.layer.cornerRadius = 20
        l1.layer.borderColor = UIColor.black.cgColor
        l1.layer.backgroundColor = UIColor.black.cgColor
        l1.layer.opacity = 0.5
        
        // Circles
        //zeroPlayer()
        //twoPlayers()
        //obstacles()
        //threePlayers()
        //fourPlayers()
        //sixPlayers()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue:UIStoryboardSegue, sender: Any?) // Prepare to perform a segue.
    {
        if let destinationVC : TutorialViewController = segue.destination as? TutorialViewController
        {
            destinationVC.inGame = true
        }
    }
}

