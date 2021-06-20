//
//  Player.swift
//  DurakGame
//
//  Created by Дима Носко on 15.06.21.
//

import Foundation

protocol PlayerBaseCompatible {
    var hand: [Card]? { get set }
}

final class Player: PlayerBaseCompatible {
    var hand: [Card]?

    func checkIfCanTossWhenAttacking(card: Card) -> Bool {
        
        var a = false
        
        if hand!.count > 0 {
        for item in hand! {
            
            if item.value.rawValue == card.value.rawValue {
            
             a = true
            }
        }
        }
        
      return  a
    }

    func checkIfCanTossWhenTossing(table: [Card: Card]) -> Bool {
        
        var a = false
        
        if hand!.count > 0 {
            
            for  item in hand! {
                
            
                for (key, value) in table {
                    
                    if item.value.rawValue == key.value.rawValue ||  item.value.rawValue == value.value.rawValue {
                        
                        a = true
                    }
                }
                
                
                
                }
             
        }
        
        
        
        
        
      return  a
    }
}
