//
//  TestScene.swift
//  happy1
//
//  Created by ezioruan on 15/10/20.
//  Copyright © 2015年 ezioruan. All rights reserved.
//

import SpriteKit



class TestSence: SKScene {
    
    var contentCreated = false
    
    override func didMoveToView(view: SKView) {
        if contentCreated == false{
            createScenceContents()
            contentCreated = true
        }
    }
    
    func createScenceContents(){
        backgroundColor = UIColor.blueColor()
        scaleMode = .AspectFill
        
        let texture = SKTexture(imageNamed: "diao")
        
        let sprite = SKSpriteNode(texture: texture)
        sprite.position = CGPoint(x: 200, y: 200)
        sprite.name = "diao"
        
        
        
        let label = SKLabelNode(text: "click me to next scenc")
        label.position =  CGPoint(x: 250, y: 500)
        label.name = "label"
        
        
        addChild(label)
        
        addChild(sprite)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches{
            let location = touch.locationInNode(self)
            let node = nodeAtPoint(location)
            print(node)
            if (node.name == "diao"){
                print("click in diao")
                jumpToEzioScene()
            }
        }
        
    }
    
    
    
    
    func jumpToEzioScene(){
        let crossFace = SKTransition.crossFadeWithDuration(0.5)
        let ezioScene = EzioScene()
        ezioScene.size = (view?.bounds.size)!
        view?.presentScene(ezioScene, transition: crossFace)
        
    }
    
    
    
    
    
    
    
}
