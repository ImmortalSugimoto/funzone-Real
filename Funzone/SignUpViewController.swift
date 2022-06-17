//
//  SignUpViewController.swift
//  Funzone
//
//  Created by Liban Abdinur on 6/5/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var newPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SaveInfo(_ sender: Any) {
        
        var data = DBUser.dbUser.addData(nameValue: name.text!, passwordValue: newPassword.text!)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
