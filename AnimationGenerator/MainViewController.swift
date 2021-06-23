//
//  ViewController.swift
//  AnimationGenerator
//
//  Created by Anna Ostapenko on 22.06.21.
//

import Spring


class MainViewController: UIViewController {
    
    @IBOutlet weak var animatedImageView: SpringImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedRunAnimation(_ sender: SpringButton) {
        animatedImageView.animation = Animation.animations.randomElement()?.rawValue ?? "flash"
        animatedImageView.curve = Animation.curves.randomElement()?.rawValue ?? "linear"
        animatedImageView.force = CGFloat.random(in: 0...5)
        animatedImageView.duration = CGFloat.random(in: 0.3...2)
        animatedImageView.delay = CGFloat.random(in: 0...1)
        animatedImageView.velocity = CGFloat.random(in: 0.1...3)
        animatedImageView.repeatCount = Float.random(in: 1...3)
        animatedImageView.scaleX = CGFloat.random(in: 0.1...2)
        animatedImageView.rotate = CGFloat.random(in: 0...90)
        animatedImageView.animate()
    }
}

