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
    @IBOutlet var fourthHobbyLabel: UILabel!
    
    // MARK: Public Properties
    var firstHobby: String!
    var secondHobby: String!
    var thirdHobby: String!
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        firstHobbyLabel.text = firstHobby
        secondHobbyLabel.text = secondHobby
        thirdHobbyLabel.text = thirdHobby
    }
}
