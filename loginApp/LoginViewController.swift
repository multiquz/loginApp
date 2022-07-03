//
//  ViewController.swift
//  loginApp
//
//  Created by user on 03.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var usernameLabel: UITextField!
    @IBOutlet var passwordLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeViewController = segue.destination as? WelcomeViewController else { return }
        welcomeViewController.username = usernameLabel.text
        
    }
    
    @IBAction func loginButtonTapped() {
        if usernameLabel.text != "Jeremy" || passwordLabel.text != "Password" {
            showCredentialsAlert()
            eraseCredentials()
        }
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        eraseCredentials()
    }
    
    @IBAction func remindUsername() {
        let alert = UIAlertController(
            title: "Don't you worry!",
            message: "Your username is Jeremy",
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true)
        eraseCredentials()
    }
    
    @IBAction func remindPassword() {
        let alert = UIAlertController(
            title: "Don't you worry!",
            message: "Your password is Password",
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true)
        eraseCredentials()
    }
    
    
    private func showCredentialsAlert() {
        let alert = UIAlertController(
            title: "Wrong credentials",
            message: "Enter correct username and/or password",
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    private func eraseCredentials() {
        usernameLabel.text = ""
        passwordLabel.text = ""
    }
    
}
