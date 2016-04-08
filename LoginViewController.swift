//
//  LoginViewController.swift
//  iOSMusicManage
//
//  Created by Cristian Miguel Pinto Quinto on 08/04/16.
//  Copyright © 2016 Cristian Pinto. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func loginTo(sender: UIButton) {
        
        //usernameCorrect()
        //passwordCorrect()
        
        let email = "test@test.com"
        let password = "Passw0rd"
        let backendless = Backendless.sharedInstance()
        backendless.userService.login(email, password: password, response: { (logedInUser) -> Void in
            // Código en caso de login correcto
            let email = logedInUser.email
            print("Hola \(email)")
            },
            error: { (error) -> Void in
                // Código en caso de error en el login
                let message = error.message
                print("Error en login: \(message)")
        })
        
        performSegueWithIdentifier("LoginToNavigation", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //security passwordField

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func passwordCorrect( ) {
        
    }
    
    func usernameCorrect( ) {
        
    }

}
