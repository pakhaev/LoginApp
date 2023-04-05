//
//  UserViewController.swift
//  LoginApp
//
//  Created by Khusain on 04.04.2023.
//

import UIKit

final class UserViewController: UIViewController {
    
    @IBOutlet var personImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    @IBOutlet var whatImDoingLabel: UILabel!
    @IBOutlet var whyImDoingLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setupGradientBackground()
        personImage.image = UIImage(named: user.person.photo)
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = user.person.age.formatted()
        whatImDoingLabel.text = user.person.whatAmIDoingNow
        whyImDoingLabel.text = user.person.whyAmIWorking
    }
    
    override func viewDidLayoutSubviews() {
        personImage.layer.cornerRadius = personImage.frame.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else {return}
        
        bioVC.user = user
    }
    
}
