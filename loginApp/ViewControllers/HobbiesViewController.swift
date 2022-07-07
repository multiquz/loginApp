//
//  HobbiesViewController.swift
//  loginApp
//
//  Created by user on 05.07.2022.
//

import UIKit

class HobbiesViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var hobbyLabels: [UILabel]!
    
    // MARK: Public Properties
    var user: User!
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if hobbyLabels.count == user.person.hobbies.count {
            for index in 0..<hobbyLabels.count {
                hobbyLabels[index].text = user.person.hobbies[index].rawValue
            }
        }
    }
}
