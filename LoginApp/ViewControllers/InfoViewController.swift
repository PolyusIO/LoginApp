//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Сергей Поляков on 11.05.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var personImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var sexLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewValues()
    }
    
    // MARK: - Private Methods
    private func setViewValues() {
        personImageView.layer.cornerRadius = 10
        personImageView.image = UIImage(named: "SergeyPolyakov")
        nameLabel.text = "Sergey"
        surnameLabel.text = person.surname
        sexLabel.text = person.sex
        ageLabel.text = person.age.formatted()
        jobLabel.text = person.job
        hobbyLabel.text = person.hobby
    }
}
