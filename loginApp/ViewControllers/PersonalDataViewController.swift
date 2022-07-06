//
//  InfoViewController.swift
//  loginApp
//
//  Created by user on 05.07.2022.
//

import UIKit

class PersonalDataViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var dateOfBirthLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var learningGoalLabel: UILabel!
    
    // MARK: Public Properties
    var dateOfBirth: String!
    var job: String!
    var company: String!
    var learningGoal: String!
    var petImage: String!
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        dateOfBirthLabel.text = dateOfBirth
        jobLabel.text = job
        companyLabel.text = company
        learningGoalLabel.text = learningGoal
      
    }
    

}
