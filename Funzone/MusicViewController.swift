//
//  MusicViewController.swift
//  Funzone
//
//  Created by Liban Abdinur on 5/30/22.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var songNames = ["Stardust","lost","fighter","moon"]
    var songCovers = ["Stardust","luffy-3","Master","moon"]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! MusicCollectionViewCell
        
        
        cell.layer.cornerRadius = 5.0
        cell.layer.masksToBounds = true
        cell.backgroundColor = .black
        cell.name.text = songNames[indexPath.row]
        cell.img.image = UIImage(named: songCovers[indexPath.row])
        cell.name.textColor = .white
        cell.name.textAlignment = .center
        
        
        
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row{
            
        case 0:
            let storyboard1 = UIStoryboard(name: "Main", bundle: nil)
            let musicplayer = storyboard1.instantiateViewController(withIdentifier: "player") as! musicpracticeViewController
            musicplayer.musicFile = songNames[indexPath.row]
            self.present(musicplayer, animated: true,completion: nil)
            
        case 1:
            let storyboard1 = UIStoryboard(name: "Main", bundle: nil)
            let musicplayer = storyboard1.instantiateViewController(withIdentifier: "player") as! musicpracticeViewController
            musicplayer.musicFile = songNames[indexPath.row]
            self.present(musicplayer, animated: true,completion: nil)
        case 2:
            let storyboard1 = UIStoryboard(name: "Main", bundle: nil)
            let musicplayer = storyboard1.instantiateViewController(withIdentifier: "player") as! musicpracticeViewController
            musicplayer.musicFile = songNames[indexPath.row]
            self.present(musicplayer, animated: true,completion: nil)
            
            
        case 3:
            let storyboard1 = UIStoryboard(name: "Main", bundle: nil)
            let musicplayer = storyboard1.instantiateViewController(withIdentifier: "player") as! musicpracticeViewController
            musicplayer.musicFile = songNames[indexPath.row]
            self.present(musicplayer, animated: true,completion: nil)
            
        default:
            print("")
            
            
            
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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

}
