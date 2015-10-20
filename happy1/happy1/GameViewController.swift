//
//  GameViewController.swift
//  happy1
//
//  Created by ezioruan on 15/9/29.
//  Copyright (c) 2015年 ezioruan. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let spriteView = self.view as? SKView {
            spriteView.showsDrawCount = true
            spriteView.showsFPS = true
            spriteView.showsNodeCount = true
            
            let scence = TestSence()
            scence.size = spriteView.bounds.size
            spriteView.presentScene(scence)
            
        }
    }
    
    func handleTap(gestureRecognize: UIGestureRecognizer) {
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

}
