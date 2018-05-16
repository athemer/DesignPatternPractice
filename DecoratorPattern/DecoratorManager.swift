//
//  DecoratorManager.swift
//  DecoratorPattern
//
//  Created by kuanhuachen on 2018/5/16.
//  Copyright © 2018年 athemer. All rights reserved.
//

import Foundation

class PubgPlayerManager {
    
    func AK47Level1VestPlayer() -> PubgPlayer
    {
        return AK47PubgPlayerDecorator(pubgPlayerDecorator: Level1VestPubgPlayerDecorator(pubgPlayerDecorator: PubgPlayer()))
    }
    
    func M4A1Level1VestPlayer() -> PubgPlayer
    {
        return M4A1PubgPlayerDecorator(pubgPlayerDecorator: Level1VestPubgPlayerDecorator(pubgPlayerDecorator: PubgPlayer()))
    }
    
}

