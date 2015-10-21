//
//  EzioScenc.swift
//  happy1
//
//  Created by ezioruan on 15/10/21.
//  Copyright © 2015年 ezioruan. All rights reserved.
//

import SpriteKit



class EzioScene: SKScene {
    
    
    override func didMoveToView(view: SKView) {
        
        
        backgroundColor = SKColor.brownColor()
        scaleMode = .AspectFill
        
        let sprite = SKSpriteNode(texture: SKTexture(imageNamed: "cri"))
        sprite.position = CGPoint(x: 200, y: 200)
        
       sprite.setScale(0.1)
        
        addChild(sprite)
    }
    
    
}
