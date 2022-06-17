//
//  NotesViewController.swift
//  Funzone
//
//  Created by Liban Abdinur on 5/30/22.
//

import UIKit

class NotesViewController: UIViewController {
    @IBOutlet weak var noteLabel: UILabel!
    
    @IBOutlet weak var noteTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func save(_ sender: Any) {
        
        let attribute: [String: Any] = [kSecClass as String : kSecClassGenericPassword, kSecAttrAccount as String: noteTextField.text,kSecValueData as String: noteTextField.text!.data(using: .utf8)]
        
        if SecItemAdd(attribute as CFDictionary, nil) == noErr{
            var answer = "data saved"
            noteLabel.text = answer
        }else{
            
            var result = "error"
            noteLabel.text = result
        }
    }
    @IBAction func view(_ sender: Any) {
        
        let req : [String: Any] = [kSecClass as String: kSecClassGenericPassword,kSecAttrAccount as String:noteTextField.text, kSecReturnAttributes as String: true, kSecReturnData as String: true]

        var res: CFTypeRef?
//pizza
        if SecItemCopyMatching(req as CFDictionary, &res) == noErr{

            let data = res as? [String: Any]
            
            let thenote1 = (data![kSecAttrAccount as String] as? String)!

            let thenote = (data![kSecValueData as String] as? Data)!
            let read = String(data: thenote, encoding: .utf8)!

            var show = "\(thenote1)"
            noteLabel.text = show



        }else{
            var failure = "didn't work try again please"
            noteLabel.text = failure

        }
        
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
