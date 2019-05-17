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
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var logoImage: UIImageView!
    
    //MARK: - `UIViewController` overrides.
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Setup views.
        self.setup()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Resign first responders.
        for subview in self.view.subviews {
            subview.resignFirstResponder()
        }
    }
    
    override var disablesAutomaticKeyboardDismissal: Bool {
        return false
    }

    //MARK: - Setup.
    ///Sets up the view, and its visual components.
    func setup() {
        //Parallax effect constants.
        let foregroundParallaxConstant: CGFloat = 15.0
        let backgroundParallaxConstant: CGFloat = 45.0
        
        //Text fields.
        for subview in self.view.subviews {
            if let textField = subview as? UITextField {
                textField.textColor = .theme
                textField.layer.cornerRadius = 20
                textField.layer.sublayerTransform = CATransform3DMakeTranslation(16, 0, 0)
                textField.addParallaxEffect(withMovementConstant: foregroundParallaxConstant)
            }
            if let button = subview as? UIButton {
                button.layer.cornerRadius = 35 / 2
            }
        }
        
        self.logoImage.addParallaxEffect(withMovementConstant: foregroundParallaxConstant)
        self.backgroundImage.addParallaxEffect(withMovementConstant: backgroundParallaxConstant)
    }

}
