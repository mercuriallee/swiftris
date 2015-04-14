//
//  MediaPreload.swift
//  Swiftris
//
//  Created by Mercurial Lee on 15/4/14.
//  Copyright (c) 2015年 Bloc. All rights reserved.
//

import SpriteKit

enum GameSound {
    
    private static let levelupSoundAction      =  SKAction.playSoundFileNamed("levelup.mp3",waitForCompletion: false)
    private static let dropSoundAction         =  SKAction.playSoundFileNamed("drop.mp3",waitForCompletion: false)
    private static let gameoverSoundAction     =  SKAction.playSoundFileNamed("gameover.mp3",waitForCompletion: false)
    private static let themeSoundAction        =  SKAction.playSoundFileNamed("theme.mp3",waitForCompletion: true)
    private static let bombSoundAction         =  SKAction.playSoundFileNamed("bomb.mp3",waitForCompletion: false)
    
    case LevelUp
    case Drop
    case GameOver
    case Theme
    case Bomb
    
    func action() -> SKAction {
        switch self {
        case .LevelUp :
            return GameSound.levelupSoundAction
        case .Drop :
            return GameSound.dropSoundAction
        case .GameOver :
            return GameSound.gameoverSoundAction
        case .Theme:
            return GameSound.themeSoundAction
        case .Bomb :
            return GameSound.bombSoundAction
        }
    }
}
