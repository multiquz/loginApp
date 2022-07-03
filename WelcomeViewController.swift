//
//  WelcomeViewController.swift
//  loginApp
//
//  Created by user on 03.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {


    @IBOutlet var welcomeMessageLabel: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Welcome, \(username ?? "")!"
    }
} 
