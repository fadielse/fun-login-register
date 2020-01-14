//
//  LoginViewController.swift
//  fun-login-register
//
//  Created by Fadilah Hasan on 14/01/20.
//  Copyright © 2020 Fadilah Hasan. All rights reserved.
//

import UIKit
import Hero

class LoginViewController: UIViewController {

    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var viewLogin: UIView!
    @IBOutlet weak var labelLogIn: UILabel!
    @IBOutlet weak var viewRegister: UIView!
    @IBOutlet weak var viewSignUp: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView() {
        viewRegister.layer.cornerRadius = viewRegister.frame.width / 2.2
        
        imageBackground.hero.id = "background"
        viewLogin.hero.id = "login"
        labelLogIn.hero.id = "label-login"
        viewRegister.hero.id = "register"
        viewSignUp.hero.id = "Register-Header"
    }
    
    @IBAction func onButtonSignUpTapped(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Register", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
