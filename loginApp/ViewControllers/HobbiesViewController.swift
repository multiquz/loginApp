//
//  HobbiesViewController.swift
//  loginApp
//
//  Created by user on 05.07.2022.
//

import UIKit

class HobbiesViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var firstHobbyLabel: UILabel!
    @IBOutlet var secondHobbyLabel: UILabel!
    @IBOutlet var thirdHobbyLabel: UILabel!
    @IBOutlet var hobbyLabels: [UILabel]!
    
    // MARK: Public Properties
    var user: User!
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        for (index, hobbyLabel) in hobbyLabels.enumerated() {
            hobbyLabel.text = user.person.hobbies[index].rawValue
        }
    }
}
