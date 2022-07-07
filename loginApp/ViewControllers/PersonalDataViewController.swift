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
    var user: User!
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        dateOfBirthLabel.text = user.person.dateOfBirth
        jobLabel.text = user.person.job
        companyLabel.text = user.person.company
        learningGoalLabel.text = user.person.learningGoal
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let petViewController = segue.destination as? PetViewController else { return }
        petViewController.user = user
    }
}
