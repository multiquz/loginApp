//
//  ViewController.swift
//  loginApp
//
//  Created by user on 03.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: Private Properties
    
    private let user = User.getUser()
    
    // MARK: Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarViewController = segue.destination as? UITabBarController else { return }
        guard let tabVarViewControllers = tabBarViewController.viewControllers else { return }
        
        tabVarViewControllers.forEach { viewController in
            if let welcomeViewController = viewController as? WelcomeViewController {
                welcomeViewController.user = user
                
            } else if let hobbiesViewController = viewController as? HobbiesViewController {
                hobbiesViewController.user = user
                
            } else if let navigationViewController = viewController as? UINavigationController {
                guard let personalDataViewController = navigationViewController.topViewController as? PersonalDataViewController else { return }
                personalDataViewController.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: IB Actions
    //try guard please instead if
    @IBAction func loginButtonTapped() {
        guard usernameTextField.text == user.username && passwordTextField.text == user.password else {
            showAlert(with: "Wrong Credentials", and: "Enter correct username and/or password")
            return
        }
        performSegue(withIdentifier: "showWelcomeViewController", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        passwordTextField.text = ""
        usernameTextField.text = ""
    }
    
    @IBAction func remindUsername() {
        showAlert(with: "Don't worry", and: "Your username is \(user.username)")
    }
    
    @IBAction func remindPassword() {
        showAlert(with: "Don't worry", and: "Your username is \(user.password)")
    }
    
    // MARK: Private Methods
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        
        alert.addAction(action)
        present(alert, animated: true)
    }
}
