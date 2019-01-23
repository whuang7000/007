//
//  DoubleZeroSeven.swift
//  DoubleZeroSeven
//
//  Created by William Huang on 1/12/19.
//  Copyright © 2019 Inspyre. All rights reserved.
//

import Foundation

class DoubleZeroSeven
{
    var isStarted = false
    var playerOne: Player?
    var playerTwo: Player?
    
    init() {
        self.isStarted = true
        self.playerOne = Player()
        self.playerTwo = ComputerPlayer()
    }
    
    func playRound() {
        if self.isStarted {
            let actionOne = playerOne!.getCurrentAction()
            let actionTwo = playerTwo!.getCurrentAction()
            print("Player 1 is \(actionOne)ing")
            print("Player 2 is \(actionTwo)ing")
            if actionOne == "megashoot" {
                if actionTwo == "shoot" || actionTwo == "megashoot" {
                    endGame(winner: 3)
                } else {
                    endGame(winner: 1)
                }
            }
            else if actionTwo == "megashoot" {
                if actionOne == "shoot" {
                    endGame(winner: 3)
                } else {
                    endGame(winner: 2)
                }
            }
            else if actionOne == "shoot" {
                if actionTwo == "shoot" {
                    endGame(winner: 3)
                } else if actionTwo == "reload" {
                    endGame(winner: 1)
                }
            }
            else if actionTwo == "shoot" {
                if actionOne == "reload" {
                    endGame(winner: 2)
                }
            }
        }
    }
    
    func endGame(winner: Int) {
        switch winner {
        case 1:
            print("Player 1 wins!")
        case 2:
            print("Player 2 wins!")
        case 3:
            print("Tie")
        default:
            print("Unexpected ending")
        }
        startNewGame()
    }
    
    func startNewGame() {
        print("Starting new game...")
        self.playerOne!.ammoCount = 0
        self.playerTwo!.ammoCount = 0
        self.playerOne!.currentAction = nil
        self.playerTwo!.currentAction = nil
    }
}
