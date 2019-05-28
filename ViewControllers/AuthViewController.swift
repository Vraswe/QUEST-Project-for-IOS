//
//  AuthViewController.swift
//  QUEST
//
//  Created by Павел on 15/05/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import UIKit
import Firebase

class AuthViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var warnLabel: UILabel!
    @IBOutlet weak var provePassword: UITextField!
    @IBOutlet weak var SignInTapped: UIButton!
    @IBOutlet weak var RegistTapped: UIButton!
    @IBOutlet weak var smallSignInButton: UIButton!
    
    
    
    func displayWarn(withText text: String) {
        warnLabel.text = text
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: { [weak self] in
            self?.warnLabel.alpha = 1
        }) { [weak self] complete in
            self?.warnLabel.alpha = 0
        }
    }
    
    @IBAction func SignInTapped(_ sender: UIButton) {
        
        guard let email = emailField.text, let password = passwordField.text, email != "", password != "" else {
            displayWarn(withText: "Некорректные данные!")
            return
        }
            Auth.auth().signIn(withEmail: email, password: password, completion: { [weak self] (user, error) in
                if error != nil {
                    self?.displayWarn(withText: "Логин или пароль неверны!")
                    return
                }
                if user != nil {
                    self?.tabBarController?.viewControllers?.insert(removedItem!, at: 3)
                    removedItem = self?.tabBarController?.viewControllers?.remove(at: 2)
//                    self?.dismiss(animated: true, completion: nil)
                    return
                }
                self?.displayWarn(withText: "Нет такого пользователя!")
            })
        //}
        
        
    }
    @IBAction func RegistrationTapped(_ sender: UIButton) {
        if SignInTapped.isHidden == false {
            initRegistration ()
        

        } else {
        
        guard let email = emailField.text, let password = passwordField.text, email != "", password != "", provePassword.text == passwordField.text else {
            displayWarn(withText: "Проверьте данные!")
            return
        }
        Auth.auth().createUser(withEmail: email, password: password, completion: { [weak self] (user, error) in
                if error != nil {
                self?.displayWarn(withText: "Не удалось создать нового пользователя!")
                    return
                } else {
                self?.warnLabel.textColor = UIColor.green
                self?.displayWarn(withText: "Успешно!")
                self?.initSignIn()
            }
            })
            
    }
    }
    
    
    @IBAction func smallSignInButtonTapped(_ sender: Any) {
        initSignIn()
    }
    
    func initSignIn () {
        passwordField.text = ""
        provePassword.text = ""
        warnLabel.textColor = UIColor.red
        SignInTapped.isHidden = false
        provePassword.isHidden = true
        smallSignInButton.isHidden = true
        
        RegistTapped.backgroundColor = #colorLiteral(red: 0.2068199515, green: 0.2297245264, blue: 0.3126906157, alpha: 1)
        RegistTapped.titleLabel?.font = UIFont(name: "System", size: CGFloat(14))
        RegistTapped.titleLabel?.text = "Зарегистрироваться"
        RegistTapped.setTitle("Зарегистрироваться", for: .normal)
    }
    
    func initRegistration () {
        provePassword.text = ""
        provePassword.isHidden = false
        SignInTapped.isHidden = true
        smallSignInButton.isHidden = false
        
        RegistTapped.backgroundColor = #colorLiteral(red: 0.9744965434, green: 0.7292923331, blue: 0.2823907137, alpha: 1)
        RegistTapped.layer.cornerRadius = RegistTapped.frame.height / 2
        RegistTapped.titleLabel?.font = UIFont(name: "Helvetica Neue", size: CGFloat(18))
        RegistTapped.titleLabel?.text = "Регистрация"
        RegistTapped.setTitle("Регистрация", for: .normal)
        
        provePassword.text = ""
        emailField.text = ""
        passwordField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SignInTapped.layer.cornerRadius = SignInTapped.frame.height / 2
        warnLabel.alpha = 0
        provePassword.isHidden = true
        smallSignInButton.isHidden = true
    }
}
