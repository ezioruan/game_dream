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
        
        let sprite = SKSpriteNode(fileNamed: "diao")
        sprite?.position = CGPoint(x: 100, y: 100)
        
        addChild(sprite!)
    }
}
