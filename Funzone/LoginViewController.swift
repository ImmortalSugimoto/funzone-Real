//
//  LoginViewController.swift
//  Funzone
//
//  Created by Liban Abdinur on 5/27/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var errormsg: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    @IBAction func validate(_ sender: Any) {
        
        let data = DBUser.dbUser.getData()
        
        for d in data{
            
            if login.text != d.name || password.text != d.password{
                print("wrong info try again")
            }else{
                
                print("correct ")
                var storyboard = UIStoryboard(name: "Main", bundle: nil)
                var WelcomeScreen = storyboard.instantiateViewController(withIdentifier: "tab")
                present(WelcomeScreen,animated: true,completion: nil)
            }
            
        }
    }
    
    
    @IBAction func Remember(_ sender: UISwitch) {
        
        let data = DBUser.dbUser.getData()
        
        for d in data{
            
            if sender.isOn{
                
                let attribute: [String: Any] = [kSecClass as String : kSecClassGenericPassword, kSecAttrAccount as String : login.text, kSecValueData as String : password.text!.data(using: .utf8)]
                
                
                if SecItemAdd(attribute as CFDictionary, nil) == noErr{
                    print("data saved succesfully")
                    password.text = d.password
            
                    
                    
                }else{
                    print("got some error")
                }
                
                
                
            }else{
                print("error")
            }
            
            
            
            
        }
        
//        if sender.isOn{
//
//            let attribute: [String: Any] = [kSecClass as String : kSecClassGenericPassword, kSecAttrAccount as String : login.text, kSecValueData as String : password.text!.data(using: .utf8)]
//
//
//            if SecItemAdd(attribute as CFDictionary, nil) == noErr{
//                print("data saved succesfully")
//
//
//            }else{
//                print("got some error")
//            }
//
//
//
//        }else{
//            print("error")
//        }
//
//
        
        
        
        
        
        
        
        
//
//        if sender.isOn{
//
//            let data = DBUser.dbUser.getData()
//
//
//            for d in data{
//                let attribute: [String: Any] = [kSecClass as String :  kSecClassGenericPassword, kSecAttrAccount as String: login.text, kSecValueData as String: password.text!.data(using: .utf8)]
//
//                if SecItemAdd(attribute as CFDictionary, nil) == noErr{
//                    print("data saved successfully")
////
//                }else{
//                    print("gpt some errors")
//                }
//
//            }
//
//
//    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
    
}

    
