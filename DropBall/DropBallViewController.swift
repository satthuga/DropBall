//
//  DropBallViewController.swift
//  DropBall
//
//  Created by Apple on 09/06/2021.
//

import UIKit

class DropBallViewController: ViewController {

    
    @IBOutlet weak var circleView: UIView!
    var h = 600
    var newHeight = 0
    var timerDown: Timer!
    var timerUp: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        circleView.layer.cornerRadius = circleView.bounds.height/2
        
        circleView.center = CGPoint(x: view.center.x, y: view.frame.height - CGFloat(h))
        
        newHeight = h
        
        while CGFloat(newHeight) > circleView.bounds.height/2 {
        
        timerDown = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ballDown), userInfo: nil, repeats: false)
        timerUp = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ballUp), userInfo: nil, repeats: false)
        }
        
    }
    
    
    @objc func ballDown() {
        if CGFloat(newHeight) > circleView.bounds.height/2 {
                self.circleView.center.y = self.view.frame.height

            self.newHeight = self.newHeight - 50
        } else {
            timerUp.invalidate()
        }
        
    }
    
    @objc func ballUp() {
        if CGFloat(newHeight) > circleView.bounds.height/2 {
               
                self.circleView.center.y = self.view.frame.height - CGFloat(self.newHeight)
                
            
            self.newHeight = self.newHeight - 50
        } else {
            timerUp.invalidate()
        }
        
    }
    
}
        

    
