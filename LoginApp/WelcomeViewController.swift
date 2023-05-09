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
        welcomeLabel.text = "Welcome, \(name ?? "User")!"
    }
}
