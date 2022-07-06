//
//  HobbiesViewController.swift
//  loginApp
//
//  Created by user on 05.07.2022.
//

import UIKit

class HobbiesViewController: UIViewController {

    
    @IBOutlet var firstHobbyLabel: UILabel!
    @IBOutlet var secondHobbyLabel: UILabel!
    @IBOutlet var thirdHobbyLabel: UILabel!
    @IBOutlet var fourthHobbyLabel: UILabel!
    
    var firstHobby: String!
    var secondHobby: String!
    var thirdHobby: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstHobbyLabel.text = firstHobby
        secondHobbyLabel.text = secondHobby
        thirdHobbyLabel.text = thirdHobby
    }
}
