//
//  ViewController.swift
//  LoginApp
//
//  Created by Khusain on 31.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    private let loginValue = "user"
    private let passwordValue = "password"
    
    private var greetingText: String {
        "Welcome, \(loginValue)!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else {return}
        
        greetingVC.greetingText = greetingText
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func loginTapped() {
        if loginTF.text != loginValue || passwordTF.text != passwordValue {
            invalidInputAlert()
            return
        }
    }
    
    @IBAction func forgotLoginTapped() {
        forgotDataAlert(message: "Your login is \(loginValue)🤌")
    }
    
    @IBAction func forgotPasswordTapped() {
        forgotDataAlert(message: "Your password is \(passwordValue)🤌")
    }
}

extension LoginViewController {
    private func forgotDataAlert(message: String) {
        let alert = UIAlertController(
            title: "Oops!",
            message: message,
            preferredStyle: .alert
        )
        let alertOkAction = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(alertOkAction)
        present(alert, animated: true)
    }
    
    private func invalidInputAlert() {
        let alert = UIAlertController(
            title: "Invalid login or password",
            message: "Please, enter correct login and password!",
            preferredStyle: .alert
        )
        let alertOkAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTF.text = ""
        }

        alert.addAction(alertOkAction)
        present(alert, animated: true)
    }
}
