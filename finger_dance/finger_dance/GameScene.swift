//
//  GameScene.swift
//  finger_dance
//
//  Created by ezioruan on 15/11/18.
//  Copyright (c) 2015年 ezioruan. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var sprites:[SKShapeNode] = []
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 45;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel)
    }
    
    func getSprite() -> SKShapeNode{
        let sprite =  SKShapeNode(rectOfSize: CGSize(width: 300, height: 100))
        sprite.fillColor = SKColor.blueColor()
        
        sprite.xScale = 0.5
        sprite.yScale = 0.5
        return sprite
    }
    
    
    func render(sprite:SKShapeNode){
        if sprites.count < 2{
            self.addChild(sprite)
            sprites.append(sprite)
        }else{
            let firstSprite = sprites.removeFirst()
            self.removeChildrenInArray([firstSprite])
        }
        
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            
            //let sprite = SKSpriteNode(imageNamed:"Spaceship")
            let sprite = getSprite()
            sprite.position = location
            
            render(sprite)
            
        }
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
