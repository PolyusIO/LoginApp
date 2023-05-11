//
//  LessonViewController.swift
//  LoginApp
//
//  Created by Сергей Поляков on 11.05.2023.
//

import UIKit

class LessonViewController: UIViewController {

    let test = User.getUser()
    
    
    // MARK: - Private property

    @IBOutlet var lessonTitleLabel: UILabel!
    


    private let lessonDoneLabel = UILabel()
    private let lessonProgressView = UIProgressView()
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch lessonTitleLabel.tag {
        case 0: lessonTitleLabel.text = test.educationProgress.first?.title
        default:
            lessonTitleLabel.text = "test"
        }
    }
    
    


}


