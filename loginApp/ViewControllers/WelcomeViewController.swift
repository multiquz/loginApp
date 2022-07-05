//
//  WelcomeViewController.swift
//  loginApp
//
//  Created by user on 03.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var welcomeMessageLabel: UILabel!
    
    // MARK: Public Properties
    var username: String?
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Welcome, \(username ?? "")!"
    }
}
