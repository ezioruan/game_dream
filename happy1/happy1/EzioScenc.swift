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
        let sprite2 = SKSpriteNode(imageNamed: "cri")
        sprite.position = CGPoint(x: 200, y: 200)
        
        sprite.setScale(0.3)
        addChild(sprite)
        
        
        let moveUp = SKAction.moveBy(CGVector(dx: 300, dy: 100), duration: 1.0)
        let fadeOut = SKAction.fadeOutWithDuration(2.5)
        let runBlock = SKAction.runBlock { () -> Void in
            print("Hello in EzioScene")
        }
        
        let remove = SKAction.removeFromParent()
        
        let moveAndFade = SKAction.group([moveUp,fadeOut])
        
        let sequence = SKAction.sequence([moveAndFade,runBlock,remove])
        
        sprite.runAction(sequence)
        
        
        addChild(sprite2)
        
        sprite2.runAction(SKAction.sequence([SKAction.scaleBy(CGFloat(0.3), duration: 0.3),SKAction.moveTo(CGPoint(x: 400, y: 400), duration: 1.0)]))
        
    }
    
    
}
