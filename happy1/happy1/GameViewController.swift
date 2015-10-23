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
            
            
            let buttons:Dictionary<String,UIButton> = ["TestScene":UIButton(),"PhysicsScene":UIButton()]
            var buttonCount = 0
            
            
            for (name,button) in buttons{
                
                button.setTitle(name, forState: .Normal)
                button.frame = CGRectMake(20,CGFloat(100 * buttonCount),140,140)
                button.backgroundColor = UIColor.blueColor()
                button.addTarget(self, action: "onClick:", forControlEvents:.TouchUpInside)
                view.addSubview(button)
                buttonCount++
                
            }
            
            //let scence = TestSence()
            //scence.size = spriteView.bounds.size
            //spriteView.presentScene(scence)
            
        }
    }
    
    func onClick(sender:AnyObject){
        let button = sender as! UIButton
        print("click in ",button.titleLabel)
        
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
