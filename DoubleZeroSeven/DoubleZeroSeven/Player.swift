//
//  Player.swift
//  DoubleZeroSeven
//
//  Created by William Huang on 1/12/19.
//  Copyright © 2019 Inspyre. All rights reserved.
//

import Foundation

class Player
{
    var ammoCount = 0
    var currentAction: String?
    
    func reload() {
        self.ammoCount += 1
        self.currentAction = "reload"
    }
    
    func shield() {
        self.currentAction = "shield"
    }
    
    func shoot() {
        if self.ammoCount == 0 {
            reload()
        }
        else if self.ammoCount >= 4 {
            self.currentAction = "megashoot"
        } else {
            self.ammoCount -= 1
            self.currentAction = "shoot"
        }
    }
    
    func getCurrentAction() -> String {
        return self.currentAction ?? "?"
    }
}
