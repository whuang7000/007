//
//  ViewController.swift
//  DoubleZeroSeven
//
//  Created by William Huang on 1/12/19.
//  Copyright © 2019 Inspyre. All rights reserved.
//

import UIKit

class DoubleZeroSevenViewController: UIViewController {

    var game = DoubleZeroSeven()
    
    
    @IBAction func chooseAction(_ sender: UIButton) {
        if let action = sender.currentTitle {
            switch action {
            case "Shield":
                game.playerOne!.shield()
            case "Reload":
                game.playerOne!.reload()
            case "Shoot":
                game.playerOne!.shoot()
            default:
                break
            }
            game.playRound()
        }
    }
    
    
}

