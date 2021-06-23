//
//  ViewController.swift
//  AnimationGenerator
//
//  Created by Anna Ostapenko on 22.06.21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var animationView: UIImageView!
    private var originCoordinate: CGFloat?
    override func viewDidLoad() {
        super.viewDidLoad()
        originCoordinate = animationView.frame.origin.x
    }


    @IBAction func runAnimation(_ sender: UIButton) {
//        pulsate(sender: sender)
//        UIView.animate(
//            withDuration: 0.5,
//            delay: 0,
//            options: [.autoreverse, .repeat],
//            animations: {
//                if self.animationView.frame.origin.x == self.originCoordinate {
//                    self.animationView.frame.origin.x -= 40
//                } else {
//                    self.animationView.frame.origin.x += 40
//                }
//            }
//        )
        pulsate(sender: animationView)
    }
    
    func shakeAnimation() {
        
    }
    
    func pulsate(sender: UIView) {
      
        let animation = CASpringAnimation(keyPath: "opacity")

    }
}

