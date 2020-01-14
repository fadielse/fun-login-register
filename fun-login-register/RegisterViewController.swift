//
//  RegisterViewController.swift
//  fun-login-register
//
//  Created by Fadilah Hasan on 14/01/20.
//  Copyright © 2020 Fadilah Hasan. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var buttonLogIn: UIButton!
    @IBOutlet weak var labelLogIn: UILabel!
    @IBOutlet weak var viewRegisterHeader: UIView!
    @IBOutlet weak var viewRegister: UIView!
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldConfirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    @IBAction func onButtonLogInTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        viewRegister.layer.cornerRadius = viewRegister.frame.width / 2.2
        textFieldName.attributedPlaceholder = NSAttributedString(string: "Name",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFieldEmail.attributedPlaceholder = NSAttributedString(string: "Email",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFieldPassword.attributedPlaceholder = NSAttributedString(string: "Password",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFieldConfirmPassword.attributedPlaceholder = NSAttributedString(string: "Confirm Password",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        self.hero.isEnabled = true
        imageBackground.hero.id = "background"
        buttonLogIn.hero.id = "login"
        labelLogIn.hero.id = "label-login"
        viewRegister.hero.id = "register"
        viewRegisterHeader.hero.id = "Register-Header"
        
        viewRegisterHeader.hero.modifiers = [.duration(0.8)]
    }
}
