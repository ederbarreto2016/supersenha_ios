//
//  ViewController.swift
//  SuperSenha
//
//  Created by Éder Barreto on 16/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfTotalPasswords: UITextField!
    
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    @IBOutlet weak var swLeters: UISwitch!
    
    @IBOutlet weak var swNumbers: UISwitch!
    
    @IBOutlet weak var swCapitalLetters: UISwitch!
    
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordsViewController
        if let numberOfPasswords = Int(tfTotalPasswords.text!) {
            passwordsViewController.numberOfPasswords = numberOfPasswords
        }
        
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!) {
            passwordsViewController.numberOfCharacters = numberOfCharacters
        }
        
        passwordsViewController.useLetters = swLeters.isOn
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordsViewController.useSpecialCharacters = swSpecialCharacters.isOn
        view.endEditing(true)
    }
}

