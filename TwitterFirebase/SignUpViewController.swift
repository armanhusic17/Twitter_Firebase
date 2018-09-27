//
//  SignUpViewController.swift
//  TwitterFirebase
//
//  Created by Arman Husic on 9/26/18.
//  Copyright © 2018 Arman Husic. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var signUp: UIBarButtonItem!
    
    var databaseReference = Database.database().reference()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUp.isEnabled = false

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func didPressSignUp(_ sender: Any) {
        
        signUp.isEnabled = false
        
        Auth.auth().createUser(withEmail: email.text!, password: password.text!, completion:  { (user, error) in
            
            })
    }
        
    @IBAction func didPressCancel(_ sender: Any) {
        
        
        dismiss(animated: true, completion: nil)
        
    }
    
        
    
    @IBAction func textDidChange(_ sender: UITextField) {
        
        if((email.text?.characters.count)! > 0 && (password.text?.characters.count)! > 0) {
            signUp.isEnabled = true
        }else{
            signUp.isEnabled = false
        }
        
        
    }
    
        
        
}
