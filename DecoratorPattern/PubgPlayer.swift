//
//  PubgPlayer.swift
//  DecoratorPattern
//
//  Created by kuanhuachen on 2018/5/16.
//  Copyright © 2018年 athemer. All rights reserved.
//

import Foundation

enum Vest
{
    case Level1
    case Level2
    case Level3
}

enum Weapon
{
    case M4A1
    case AK47
    case Kar98k
}

class PubgPlayer {
    
    var vest: Vest?
    
    var weapon: Weapon?
    
//    func attackPoint(weapon: Weapon?) -> Double { return 50.0 }
//
//    func defensePoint(vest: Vest?) -> Double { return 0.0 }
    
    func attackPoint() -> Double { return 50.0 }
    
    func defensePoint() -> Double { return 0.0 }
    
}

class PubgPlayerDecorator: PubgPlayer {
    
    let pubgPlayerDecorator: PubgPlayer!
    
    init(pubgPlayerDecorator: PubgPlayer)
    {
        self.pubgPlayerDecorator = pubgPlayerDecorator
    }
    
//    override func attackPoint(weapon: Weapon?) -> Double
//    {
//        return pubgPlayerDecorator.attackPoint(weapon: pubgPlayerDecorator.weapon)
//    }
//
//    override func defensePoint(vest: Vest?) -> Double
//    {
//        return pubgPlayerDecorator.defensePoint(vest: pubgPlayerDecorator.vest)
//    }
    
    override func attackPoint() -> Double
    {
        return pubgPlayerDecorator.attackPoint()
    }
    
    override func defensePoint() -> Double {
        return pubgPlayerDecorator.defensePoint()
    }
    
}


class AK47PubgPlayerDecorator: PubgPlayerDecorator {

    override init(pubgPlayerDecorator: PubgPlayer) {
        super.init(pubgPlayerDecorator: pubgPlayerDecorator)
    }
    
    override func attackPoint() -> Double {
        return super.attackPoint() + 50.0
    }
    
}

class M4A1PubgPlayerDecorator: PubgPlayerDecorator {
    
    override init(pubgPlayerDecorator: PubgPlayer) {
        super.init(pubgPlayerDecorator: pubgPlayerDecorator)
    }
    
    override func attackPoint() -> Double {
        return super.attackPoint() + 45.0
    }
}

class Level1VestPubgPlayerDecorator: PubgPlayerDecorator {
    
    override init(pubgPlayerDecorator: PubgPlayer) {
        super.init(pubgPlayerDecorator: pubgPlayerDecorator)
    }
    
    override func defensePoint() -> Double {
        return super.defensePoint() + 30.0
    }
}














