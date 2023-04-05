//
//  BioViewController.swift
//  LoginApp
//
//  Created by Khusain on 04.04.2023.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet var bioLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setupGradientBackground()
        
        bioLabel.text = user.person.bio
    }
}
