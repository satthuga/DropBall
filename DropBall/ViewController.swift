//
//  ViewController.swift
//  DropBall
//
//  Created by Apple on 09/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var thaButton: UIButton!
    @IBOutlet weak var ballView: UIImageView!
    
    var h = 400 // chiều cao h tính từ đáy
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ballView.layer.cornerRadius = ballView.bounds.height/2

        ballView.center = CGPoint(x: view.center.x, y: view.frame.height - CGFloat(h))
        
        thaButton.center = CGPoint(x: view.center.x, y: ballView.center.y - 70)


    }


    @IBAction func onPress(_ sender: Any) {
        UIView.animate(withDuration: 3) {
            self.ballView.center.y = self.view.frame.height - self.ballView.bounds.height/2
        }
    }
    
}

