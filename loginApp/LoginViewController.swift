//
//  ViewController.swift
//  loginApp
//
//  Created by user on 03.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var usernameLabel: UITextField!
    @IBOutlet var passwordLabel: UITextField!
    
    // MARK: Private Properties
    private let username = "Jeremy"
    private let password = "Password"
    
    
    // MARK: Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeViewController = segue.destination as? WelcomeViewController else { return }
        welcomeViewController.username = usernameLabel.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: IB Actions
    @IBAction func loginButtonTapped() {
        if usernameLabel.text != username || passwordLabel.text != password {
            showAlert(
                with: "Wrong Credentials",
                and: "Enter correct username and/or password"
            )
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
    }
    
    @IBAction func remindUsername() {
        showAlert(with: "Don't worry", and: "Your username is \(username)")
    }
    
    @IBAction func remindPassword() {
        showAlert(with: "Don't worry", and: "Your username is \(password)")
    }
    
    // MARK: Private Methods
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(action)
        
        present(alert, animated: true)
        
        erasePassword()
    }
    
    private func erasePassword() {
        passwordLabel.text = ""
    }
}
