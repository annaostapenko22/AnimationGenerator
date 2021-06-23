//
//  ViewController.swift
//  AnimationGenerator
//
//  Created by Anna Ostapenko on 22.06.21.
//

import Spring


class MainViewController: UIViewController {
    
    @IBOutlet weak var planetAnimatedImageView: SpringImageView!
    @IBOutlet weak var alienMessage: UILabel!
    @IBOutlet weak var runAnimationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runAnimationButton.layer.cornerRadius = 20
    }
    
    @IBAction func tappedRunAnimation(_ sender: SpringButton) {
        generateRandomAnimation()
        generateAlienMessage()
    }
    
    private func generateAlienMessage() {
        alienMessage.text = """
        animation: \(planetAnimatedImageView.animation)
        curve: \(planetAnimatedImageView.curve)
        force: \(String(format: "%.3f", planetAnimatedImageView.force))
        duration: \(String(format: "%.3f", planetAnimatedImageView.duration))
        velocity: \(String(format: "%.3f", planetAnimatedImageView.velocity))
        delay: \(String(format: "%.3f",planetAnimatedImageView.delay))
        repeatCount: \(String(format: "%.2f",planetAnimatedImageView.repeatCount))
        scaleX: \(String(format: "%.3f",planetAnimatedImageView.scaleX))
        rotate: \(String(format: "%.3f",planetAnimatedImageView.rotate))
        """
    }
    
    private func generateRandomAnimation() {
        planetAnimatedImageView.animation = Animation.animations.randomElement()?.rawValue ?? "flash"
        planetAnimatedImageView.curve = Animation.curves.randomElement()?.rawValue ?? "linear"
        planetAnimatedImageView.force = CGFloat.random(in: 0...5)
        planetAnimatedImageView.duration = CGFloat.random(in: 0.3...2)
        planetAnimatedImageView.delay = CGFloat.random(in: 0...1)
        planetAnimatedImageView.velocity = CGFloat.random(in: 0.1...3)
        planetAnimatedImageView.repeatCount = Float.random(in: 1...3)
        planetAnimatedImageView.scaleX = CGFloat.random(in: 0.1...2)
        planetAnimatedImageView.rotate = CGFloat.random(in: 0...90)
        planetAnimatedImageView.animate()
    }
}

