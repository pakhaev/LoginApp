//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Khusain on 31.03.2023.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setupGradientBackground()
        greetingLabel.text = "Привет, \(user.greet)!\nМое имя \(user.person.name)."
    }
}

extension UIView {
    func setupGradientBackground() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.purple.cgColor
        ]
        gradientLayer.shouldRasterize = true
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
