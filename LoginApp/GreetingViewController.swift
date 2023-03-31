//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Khusain on 31.03.2023.
//

import UIKit

final class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var greetingText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupGradientBackground()
        greetingLabel.text = greetingText
    }
}

extension GreetingViewController {
    private func setupGradientBackground() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.purple.cgColor
        ]
        gradientLayer.shouldRasterize = true
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
