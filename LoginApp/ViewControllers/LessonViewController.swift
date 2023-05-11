//
//  LessonViewController.swift
//  LoginApp
//
//  Created by Сергей Поляков on 11.05.2023.
//

import UIKit

class LessonViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var lessonTitleLabels: [UILabel]!
    @IBOutlet var lessonDoneLabels: [UILabel]!
    @IBOutlet var lessonProgressViews: [UIProgressView]!
    
    // MARK: - Public Properties
    var educationProgress: [Lesson]!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewValues()
        resetProgress()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setProgress()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        resetProgress()
    }
    
    // MARK: - Private Methods
    private func setViewValues() {
        for i in 0...educationProgress.count - 1 {
            lessonTitleLabels[i].text = educationProgress[i].title
            lessonDoneLabels[i].text = educationProgress[i].description
            lessonProgressViews[i].progress = 0
        }
    }
    
    private func setProgress() {
        for i in 0...educationProgress.count - 1 {
            let value = Float(educationProgress[i].done) / Float(educationProgress[i].total)
            lessonProgressViews[i].setProgress(value, animated: true)
        }
    }
    
    private func resetProgress() {
        for i in 0...educationProgress.count - 1 {
            lessonProgressViews[i].progress = 0
        }
    }
}
