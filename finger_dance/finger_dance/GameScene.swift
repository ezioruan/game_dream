//
//  GameScene.swift
//  finger_dance
//
//  Created by ezioruan on 15/11/18.
//  Copyright (c) 2015年 ezioruan. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 45;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            
            //let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            let sprite =  SKShapeNode(rectOfSize: CGSize(width: 300, height: 100))
            sprite.fillColor = SKColor.blueColor()
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
