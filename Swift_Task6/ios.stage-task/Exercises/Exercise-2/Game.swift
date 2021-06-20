//
//  Game.swift
//  DurakGame
//
//  Created by Дима Носко on 16.06.21.
//

import Foundation

protocol GameCompatible {
    var players: [Player] { get set }
}

struct Game: GameCompatible {
    var players: [Player]
}

extension Game {

    func defineFirstAttackingPlayer(players: [Player]) -> Player? {
        
        
        var a = 100
        var b: Int?
        
        for (index, player) in players.enumerated() {
            
            if player.hand!.count > 0 {
            for item in player.hand! {
                
                if item.isTrump == true && item.value.rawValue < a   {
                    
                   a = item.value.rawValue
                b = index
                    
                }
            }
        }
        
        }
        
        
        if b != nil {
            return players[b!]
        }
        
        return nil
    }
}
