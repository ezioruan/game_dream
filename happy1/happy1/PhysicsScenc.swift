//
//  PhysicsScenc.swift
//  happy1
//
//  Created by ezioruan on 15/10/23.
//  Copyright © 2015年 ezioruan. All rights reserved.
//

import SpriteKit


class PhysicsScene: SKScene {
    
    
    override func didMoveToView(view: SKView) {
        
        let sprite = SKSpriteNode(color: SKColor.redColor(), size: CGSize(width: 100, height: 100))
        sprite.position = CGPoint(x: frame.minX, y: frame.minY)
        sprite.physicsBody = SKPhysicsBody(rectangleOfSize: sprite.size)
        
        addChild(sprite)
        
    }
    
    
    
    
}
