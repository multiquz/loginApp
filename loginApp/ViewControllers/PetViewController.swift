//
//  PetViewController.swift
//  loginApp
//
//  Created by user on 05.07.2022.
//

import UIKit

class PetViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var petImageView: UIImageView!
    
    // MARK: Public Properties
    var user: User!
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        petImageView.image = UIImage(named: user.person.image)
    }
}
