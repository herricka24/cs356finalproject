//
//  LJCC.swift
//  LongJumpChineseCheckers
//
//  Created by Austen Herrick on LJCC.NP/3LJCC.EM/17.
//  Copyright © 2LJCC.EM17 SOU. All rights reserved.
//

import Foundation

class LJCC {
    //stored properties
    var gamePhase: Int = LJCC.OBSTACLE_PHASE
    var selectedPosition: Int = LJCC.EM
    var picIn = [LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.EM,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,
                 LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.EM,LJCC.EM,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,
                 LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,
                 LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,
                 LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,
                 LJCC.NP,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,
                 LJCC.NP,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.NP,
                 LJCC.NP,LJCC.NP,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.NP,
                 LJCC.NP,LJCC.NP,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.NP,LJCC.NP,
                 LJCC.NP,LJCC.NP,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.NP,
                 LJCC.NP,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.NP,
                 LJCC.NP,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,
                 LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,
                 LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,
                 LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.EM,LJCC.EM,LJCC.EM,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,
                 LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.EM,LJCC.EM,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,
                 LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.EM,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP,LJCC.NP]
    var finalIndex: Int = 0
    //type properties
    static let CENTER_BOARD_POSITIONS = [56, 57, 58, 59, 60,
                                         69, 70, 71, 72, 73, 74,
                                         81, 82, 83, 84, 85, 86, 87,
                                         94, 95, 96, 97, 98, 99, 100, 101,
                                         106, 107, 108, 109, 110, 111, 112, 113, 114,
                                         120, 121, 122, 123, 124, 125, 126, 127,
                                         133, 134, 135, 136, 137, 138, 139,
                                         147, 148, 149, 150, 151, 152,
                                         160, 161, 162, 163, 164]
    static let NP: Int = 5//NOT Part of Board
    static let RE: Int = 11//RED marble
    static let GR: Int = 4//GREEN marble
    static let PU: Int = 7//PURPLE marble
    static let BL: Int = 1//BLUE marble
    static let OB: Int = 6//OBSTACLE marble
    static let PI: Int = 9//PINK marble
    static let AQ: Int = 10//AQUA marble
    static let EM: Int = 0//EMPTY Space
    static let FIRST_INDEX = 0
    //Phases
    static let OBSTACLE_PHASE = 1000
    //methods
    func changeImage(boardPosition: Int) {//the clicked position is given as a String from the button tag
        if gamePhase == LJCC.OBSTACLE_PHASE && picIn[boardPosition] == LJCC.EM && obstacleIsAllowed(boardPosition: boardPosition) == true {
            picIn[boardPosition] = LJCC.OB;
        }//endif
        if gamePhase == LJCC.OBSTACLE_PHASE && picIn[boardPosition] == LJCC.OB {
            picIn[boardPosition] = LJCC.EM;
        }//endif
        else if (gamePhase == LJCC.OBSTACLE_PHASE) {
            return;
        }//endelseif
    }//end func changeImage
    func obstacleIsAllowed (boardPosition: Int) -> Bool {
        for currIndex in LJCC.FIRST_INDEX..<LJCC.CENTER_BOARD_POSITIONS.count {
            if LJCC.CENTER_BOARD_POSITIONS[currIndex] == boardPosition {
                return true;
            }//endif
        }//endfor
        return false;
    }//end func obstacleIsAllowed
    
}//end class
