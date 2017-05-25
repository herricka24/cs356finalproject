//
//  GameBoard.swift
//  test2
//
//  Created by John Mathew Escobal on 5/22/17.
//  Copyright © 2017 SOU. All rights reserved.
//

import UIKit

class GameBoard: UIViewController {
    //color constants
    static let RED_COLOR = UIColor.red
    static let GREEN_COLOR = UIColor.green
    static let PURPLE_COLOR = UIColor.purple
    static let BLUE_COLOR = UIColor.blue
    static let PINK_COLOR = UIColor.magenta
    static let AQUA_COLOR = UIColor.init(red: 0, green: 247, blue: 255, alpha: 1)
    static let GRAY = UIColor.lightGray
    static let BLACK = UIColor.darkGray
    //type properties
    static let NOT_PART_OF_BOARD = 5
    static let RED: Int = 11
    static let GREEN: Int = 4
    static let PURPLE: Int = 7
    static let BLUE: Int = 1
    static let PINK: Int = 9
    static let AQUA: Int = 10
    //board position outlets
    @IBOutlet weak var c6: UIButton?
    @IBOutlet weak var c19: UIButton!
    @IBOutlet weak var c20: UIButton!
    @IBOutlet weak var c31: UIButton!
    @IBOutlet weak var c32: UIButton!
    @IBOutlet weak var c33: UIButton!
    @IBOutlet weak var c44: UIButton!
    @IBOutlet weak var c45: UIButton!
    @IBOutlet weak var c46: UIButton!
    @IBOutlet weak var c47: UIButton!
    @IBOutlet weak var c52: UIButton!
    @IBOutlet weak var c53: UIButton!
    @IBOutlet weak var c54: UIButton!
    @IBOutlet weak var c55: UIButton!
    @IBOutlet weak var c56: UIButton!
    @IBOutlet weak var c57: UIButton!
    @IBOutlet weak var c58: UIButton!
    @IBOutlet weak var c59: UIButton!
    @IBOutlet weak var c60: UIButton!
    @IBOutlet weak var c61: UIButton!
    @IBOutlet weak var c62: UIButton!
    @IBOutlet weak var c63: UIButton!
    @IBOutlet weak var c64: UIButton!
    @IBOutlet weak var c66: UIButton!
    @IBOutlet weak var c67: UIButton!
    @IBOutlet weak var c68: UIButton!
    @IBOutlet weak var c69: UIButton!
    @IBOutlet weak var c70: UIButton!
    @IBOutlet weak var c71: UIButton!
    @IBOutlet weak var c72: UIButton!
    @IBOutlet weak var c73: UIButton!
    @IBOutlet weak var c74: UIButton!
    @IBOutlet weak var c75: UIButton!
    @IBOutlet weak var c76: UIButton!
    @IBOutlet weak var c77: UIButton!
    @IBOutlet weak var c79: UIButton!
    @IBOutlet weak var c80: UIButton!
    @IBOutlet weak var c81: UIButton!
    @IBOutlet weak var c82: UIButton!
    @IBOutlet weak var c83: UIButton!
    @IBOutlet weak var c84: UIButton!
    @IBOutlet weak var c85: UIButton!
    @IBOutlet weak var c86: UIButton!
    @IBOutlet weak var c87: UIButton!
    @IBOutlet weak var c88: UIButton!
    @IBOutlet weak var c89: UIButton!
    @IBOutlet weak var c93: UIButton!
    @IBOutlet weak var c94: UIButton!
    @IBOutlet weak var c95: UIButton!
    @IBOutlet weak var c96: UIButton!
    @IBOutlet weak var c97: UIButton!
    @IBOutlet weak var c98: UIButton!
    @IBOutlet weak var c99: UIButton!
    @IBOutlet weak var c100: UIButton!
    @IBOutlet weak var c101: UIButton!
    @IBOutlet weak var c102: UIButton!
    @IBOutlet weak var c106: UIButton!
    @IBOutlet weak var c107: UIButton!
    @IBOutlet weak var c108: UIButton!
    @IBOutlet weak var c109: UIButton!
    @IBOutlet weak var c110: UIButton!
    @IBOutlet weak var c111: UIButton!
    @IBOutlet weak var c112: UIButton!
    @IBOutlet weak var c113: UIButton!
    @IBOutlet weak var c114: UIButton!
    @IBOutlet weak var c119: UIButton!
    @IBOutlet weak var c120: UIButton!
    @IBOutlet weak var c121: UIButton!
    @IBOutlet weak var c122: UIButton!
    @IBOutlet weak var c123: UIButton!
    @IBOutlet weak var c124: UIButton!
    @IBOutlet weak var c125: UIButton!
    @IBOutlet weak var c126: UIButton!
    @IBOutlet weak var c127: UIButton!
    @IBOutlet weak var c128: UIButton!
    @IBOutlet weak var c131: UIButton!
    @IBOutlet weak var c132: UIButton!
    @IBOutlet weak var c133: UIButton!
    @IBOutlet weak var c134: UIButton!
    @IBOutlet weak var c135: UIButton!
    @IBOutlet weak var c136: UIButton!
    @IBOutlet weak var c137: UIButton!
    @IBOutlet weak var c138: UIButton!
    @IBOutlet weak var c139: UIButton!
    @IBOutlet weak var c140: UIButton!
    @IBOutlet weak var c141: UIButton!
    @IBOutlet weak var c144: UIButton!
    @IBOutlet weak var c145: UIButton!
    @IBOutlet weak var c146: UIButton!
    @IBOutlet weak var c147: UIButton!
    @IBOutlet weak var c148: UIButton!
    @IBOutlet weak var c149: UIButton!
    @IBOutlet weak var c150: UIButton!
    @IBOutlet weak var c151: UIButton!
    @IBOutlet weak var c152: UIButton!
    @IBOutlet weak var c153: UIButton!
    @IBOutlet weak var c154: UIButton!
    @IBOutlet weak var c155: UIButton!
    @IBOutlet weak var c156: UIButton!
    @IBOutlet weak var c157: UIButton!
    @IBOutlet weak var c158: UIButton!
    @IBOutlet weak var c159: UIButton!
    @IBOutlet weak var c160: UIButton!
    @IBOutlet weak var c161: UIButton!
    @IBOutlet weak var c162: UIButton!
    @IBOutlet weak var c163: UIButton!
    @IBOutlet weak var c164: UIButton!
    @IBOutlet weak var c165: UIButton!
    @IBOutlet weak var c166: UIButton!
    @IBOutlet weak var c167: UIButton!
    @IBOutlet weak var c168: UIButton!
    @IBOutlet weak var c174: UIButton!
    @IBOutlet weak var c175: UIButton!
    @IBOutlet weak var c176: UIButton!
    @IBOutlet weak var c177: UIButton!
    @IBOutlet weak var c187: UIButton!
    @IBOutlet weak var c188: UIButton!
    @IBOutlet weak var c189: UIButton!
    @IBOutlet weak var c201: UIButton!
    @IBOutlet weak var c202: UIButton!
    @IBOutlet weak var c214: UIButton!
    //tuple array
    var circleArray: [(UIButton?, Int)] = []
    
    //other
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
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // GameBoard Background
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
        
        // Label Styles
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
    
    func circle(circle: UIButton, color: UIColor)
    {
        circle.layer.cornerRadius = 25
        circle.layer.borderColor = UIColor.black.cgColor
        b3.layer.borderWidth = 2
        //circle.layer.backgroundColor = UIColor.RED.cgColor
        circle.layer.backgroundColor = color.cgColor
    }
    
    func obstacles()
    {
        for index in 0..<black.count
        {
            circle(circle: black[index], color: GameBoard.BLACK)
        }
    }
    
    func zeroPlayer()
    {
        for index in 0..<red.count
        {
            circle(circle: red[index], color: GameBoard.GRAY)
        }
        for index in 0..<green.count
        {
            circle(circle: green[index], color: GameBoard.GRAY)
        }
        for index in 0..<purple.count
        {
            circle(circle: purple[index], color: GameBoard.GRAY)
        }
        for index in 0..<blue.count
        {
            circle(circle: blue[index], color: GameBoard.GRAY)
        }
        for index in 0..<pink.count
        {
            circle(circle: pink[index], color: GameBoard.GRAY)
        }
        for index in 0..<aqua.count
        {
            circle(circle: aqua[index], color: GameBoard.GRAY)
        }
        for index in 0..<white.count
        {
            circle(circle: white[index], color: GameBoard.GRAY)
        }
    }
    
    func twoPlayers()
    {
        for index in 0..<red.count
        {
            circle(circle: red[index], color: GameBoard.RED_COLOR)
        }
        for index in 0..<green.count
        {
            circle(circle: green[index], color: GameBoard.GRAY)
        }
        for index in 0..<purple.count
        {
            circle(circle: purple[index], color: GameBoard.GRAY)
        }
        for index in 0..<blue.count
        {
            circle(circle: blue[index], color: GameBoard.BLUE_COLOR)
        }
        for index in 0..<pink.count
        {
            circle(circle: pink[index], color: GameBoard.GRAY)
        }
        for index in 0..<aqua.count
        {
            circle(circle: aqua[index], color: GameBoard.GRAY)
        }
        for index in 0..<white.count
        {
            circle(circle: white[index], color: GameBoard.GRAY)
        }
    }
    
    func threePlayers()
    {
        for index in 0..<red.count
        {
            circle(circle: red[index], color: GameBoard.GRAY)
        }
        for index in 0..<green.count
        {
            circle(circle: green[index], color: GameBoard.GREEN_COLOR)
        }
        for index in 0..<purple.count
        {
            circle(circle: purple[index], color: GameBoard.GRAY)
        }
        for index in 0..<blue.count
        {
            circle(circle: blue[index], color: GameBoard.BLUE_COLOR)
        }
        for index in 0..<pink.count
        {
            circle(circle: pink[index], color: GameBoard.GRAY)
        }
        for index in 0..<aqua.count
        {
            circle(circle: aqua[index], color: GameBoard.AQUA_COLOR)
        }
        for index in 0..<white.count
        {
            circle(circle: white[index], color: GameBoard.GRAY)
        }
    }
    
    func fourPlayers()
    {
        for index in 0..<red.count
        {
            circle(circle: red[index], color: GameBoard.GRAY)
        }
        for index in 0..<green.count
        {
            circle(circle: green[index], color: GameBoard.GREEN_COLOR)
        }
        for index in 0..<purple.count
        {
            circle(circle: purple[index], color: GameBoard.PURPLE_COLOR)
        }
        for index in 0..<blue.count
        {
            circle(circle: blue[index], color: GameBoard.GRAY)
        }
        for index in 0..<pink.count
        {
            circle(circle: pink[index], color: GameBoard.PINK_COLOR)
        }
        for index in 0..<aqua.count
        {
            circle(circle: aqua[index], color: GameBoard.AQUA_COLOR)
        }
        for index in 0..<white.count
        {
            circle(circle: white[index], color: GameBoard.GRAY)
        }
    }
    
    func sixPlayers()
    {
        for index in 0..<red.count
        {
            circle(circle: red[index], color: GameBoard.RED_COLOR)
        }
        for index in 0..<green.count
        {
            circle(circle: green[index], color: GameBoard.GREEN_COLOR)
        }
        for index in 0..<purple.count
        {
            circle(circle: purple[index], color: GameBoard.PURPLE_COLOR)
        }
        for index in 0..<blue.count
        {
            circle(circle: blue[index], color: GameBoard.BLUE_COLOR)
        }
        for index in 0..<pink.count
        {
            circle(circle: pink[index], color: GameBoard.PINK_COLOR)
        }
        for index in 0..<aqua.count
        {
            circle(circle: aqua[index], color: GameBoard.AQUA_COLOR)
        }
        for index in 0..<white.count
        {
            circle(circle: white[index], color: GameBoard.GRAY)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setCircleArray() {
        circleArray = [(nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c6, 6), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c19, 19), (c20, 20), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c31, 31), (c32, 32), (c33, 33), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c44, 44), (c45, 45), (c46, 46), (c47, 47), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c52, 52), (c53, 53), (c54, 54), (c55, 55), (c56, 56), (c57, 57), (c58, 58), (c59, 59), (c60, 60), (c61, 61), (c62, 62), (c63, 63), (c64, 64), (nil, GameBoard.NOT_PART_OF_BOARD), (c66, 66), (c67, 67), (c68, 68), (c69, 69), (c70, 70), (c71, 71), (c72, 72), (c73, 73), (c74, 74), (c75, 75), (c76, 76), (c77, 77), (nil, GameBoard.NOT_PART_OF_BOARD), (c79, 79), (c80, 80), (c81, 81), (c82, 82), (c83, 83), (c84, 84), (c85, 85), (c86, 86), (c87, 87), (c88, 88), (c89, 89), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c93, 93), (c94, 94), (c95, 95), (c96, 96), (c97, 97), (c98, 98), (c99, 99), (c100, 100), (c101, 101), (c102, 102), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c106, 106), (c107, 107), (c108, 108), (c109, 109), (c110, 110), (c111, 111), (c112, 112), (c113, 113), (c114, 114), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c119, 119), (c120, 120), (c121, 121), (c122, 122), (c123, 123), (c124, 124), (c125, 125), (c126, 126), (c127, 127), (c128, 128), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c131, 131), (c132, 132), (c133, 133), (c134, 134), (c135, 135), (c136, 136), (c137, 137), (c138, 138), (c139, 139), (c140, 140), (c141, 141), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c144, 144), (c145, 145), (c146, 146), (c147, 147), (c148, 148), (c149, 149), (c150, 150), (c151, 151), (c152, 152), (c153, 153), (c154, 154), (c155, 155), (c156, 156), (c157, 157), (c158, 158), (c159, 159), (c160, 160), (c161, 161), (c162, 162), (c163, 163), (c164, 164), (c165, 165), (c166, 166), (c167, 167), (c168, 168), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c174, 174), (c175, 175), (c176, 176), (c177, 177), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c187, 187), (c188, 188), (c189, 189), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c201, 201), (c202, 202), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (c214, 214), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD), (nil, GameBoard.NOT_PART_OF_BOARD)]
    }

}

