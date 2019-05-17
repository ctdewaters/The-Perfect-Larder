//
//  LoginViewController.swift
//  The Perfect Larder
//
//  Created by Collin DeWaters on 5/17/19.
//  Copyright © 2019 Collin DeWaters. All rights reserved.
//

import UIKit

///`LoginViewController`: provides UI for signing in and creating accounts.
class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    

    //MARK: - `UIViewController` overrides.
    override func viewDidLoad() {
        super.viewDidLoad()

        //Setup views.
        self.setup()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Resign first responders.
        for subview in self.view.subviews {
            subview.resignFirstResponder()
        }
    }

    //MARK: - Setup.
    ///Sets up the view, and its visual components.
    func setup() {
        //Text fields.
        for subview in self.view.subviews {
            if let textField = subview as? UITextField {
                textField.textColor = .theme
                textField.layer.cornerRadius = 20
                textField.layer.sublayerTransform = CATransform3DMakeTranslation(16, 0, 0)
            }
            if let button = subview as? UIButton {
                button.layer.cornerRadius = 35 / 2
            }
        }
        
    }

}
