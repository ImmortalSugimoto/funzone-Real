//
//  SearchViewController.swift
//  Funzone
//
//  Created by Liban Abdinur on 6/2/22.
//

import UIKit
import WebKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func OpenGoogle(_ sender: Any) {
        var webKitView = WKWebView()
        let newurl = URL(string: "https://www.google.com")!
        webKitView.load(URLRequest(url: newurl))
        view = webKitView
        
        
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
