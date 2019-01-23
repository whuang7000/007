//
//  ComputerPlayer.swift
//  DoubleZeroSeven
//
//  Created by William Huang on 1/12/19.
//  Copyright © 2019 Inspyre. All rights reserved.
//

import Foundation

class ComputerPlayer: Player
{
    func pickAction() {
        if self.ammoCount == 0 {
            reload()
        } else {
            let random = Int(arc4random_uniform(3))
            switch random {
            case 0:
                reload()
            case 1:
                shield()
            case 2:
                shoot()
            default:
                reload()
            }
        }
    }
    
    override func getCurrentAction() -> String {
        pickAction()
        return currentAction ?? "?"
    }
}
