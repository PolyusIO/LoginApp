//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Сергей Поляков on 09.05.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradient()
        welcomeLabel.text = "Welcome, \(name ?? "User")!"
    }
    
    private func gradient() {
        let startColor = CGColor(
            red: 193 / 255,
            green: 114 / 255,
            blue: 128 / 255,
            alpha: 1.0
        )
        let endColor = CGColor(
            red: 118 / 255,
            green: 152 / 255,
            blue: 222 / 255,
            alpha: 1.0
        )
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [startColor, endColor]
        gradientLayer.startPoint = CGPoint.zero
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
