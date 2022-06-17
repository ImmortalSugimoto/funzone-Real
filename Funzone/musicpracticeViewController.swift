//
//  musicpracticeViewController.swift
//  Funzone
//
//  Created by Liban Abdinur on 6/3/22.
//

import UIKit
import AVFoundation

class musicpracticeViewController: UIViewController {

    var audioPlayer: AVAudioPlayer?
    
    var musicFile : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let filePath = Bundle.main.path(forResource: musicFile, ofType: "mp3")
        
        let theurl = URL(fileURLWithPath: filePath!)
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: theurl)
        }
        catch{
            print("file not found")
        }
        
        //pizza
        
        
    }
    
    
    @IBAction func startMusic(_ sender: Any) {
        
        musicFile = "f"
        audioPlayer?.play()
        
    }
    
    
    @IBAction func stopMusic(_ sender: Any) {
        
        audioPlayer?.stop()
        
    }
    
    
    
//
//    @IBAction func startMusic(_ sender: Any) {
//        musicFile = "f"
//
//        audioPlayer?.play()
//
//    }
//
//    @IBAction func stopMusic(_ sender: Any) {
//        audioPlayer?.stop()
//
//    }
}
