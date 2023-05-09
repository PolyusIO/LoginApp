//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Сергей Поляков on 09.05.2023.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func forgotUserNameButtonPressed() {
        showAlert(title: "Oops!", message: "Your name is user 😉")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Oops!", message: "Your password is pass 😉")
    }
    
    

}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let alertAction = UIAlertAction(
            title: "OK",
            style: .default
        )
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}

