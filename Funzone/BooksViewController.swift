//
//  BooksViewController.swift
//  Funzone
//
//  Created by Liban Abdinur on 5/30/22.
//

import UIKit
import PDFKit


class BooksViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var pics = ["ice cave","jets","knight","rocket"]
    var name = ["frozen palace","sonic speed","Knights","Rockets"]
    
    var pdfView : PDFView? = nil 
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! BooksCollectionViewCell
        
        
        cell.layer.cornerRadius = 5.0
        cell.layer.masksToBounds = true
        cell.backgroundColor = .black
        cell.bookName.text = name[indexPath.row]
        cell.bookImg.image =  UIImage(named: pics[indexPath.row])
        cell.bookName.textColor = .white
        
        //pizza
        
        
        
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row{
            
        case 0:
            
            let storyObject = UIStoryboard(name: "Main", bundle: nil)
            let pdfScreenVC = storyObject.instantiateViewController(withIdentifier: "pdfscreen") as! PDFViewController
            pdfScreenVC.pdfName = name[indexPath.row]
            self.present(pdfScreenVC, animated: true,completion: nil)
            
        case 1:
            let storyObject = UIStoryboard(name: "Main", bundle: nil)
            let pdfScreenVC = storyObject.instantiateViewController(withIdentifier: "pdfscreen") as! PDFViewController
            pdfScreenVC.pdfName = name[indexPath.row]
            self.present(pdfScreenVC, animated: true,completion: nil)
        case 2:
            let storyObject = UIStoryboard(name: "Main", bundle: nil)
            let pdfScreenVC = storyObject.instantiateViewController(withIdentifier: "pdfscreen") as! PDFViewController
            pdfScreenVC.pdfName = name[indexPath.row]
            self.present(pdfScreenVC, animated: true,completion: nil)
        
        case 3:
            let storyObject = UIStoryboard(name: "Main", bundle: nil)
            let pdfScreenVC = storyObject.instantiateViewController(withIdentifier: "pdfscreen") as! PDFViewController
            pdfScreenVC.pdfName = name[indexPath.row]
            self.present(pdfScreenVC, animated: true,completion: nil)
        
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
