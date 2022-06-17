//
//  DBFunzone.swift
//  Funzone
//
//  Created by Liban Abdinur on 6/1/22.
//

import Foundation
import UIKit
import CoreData


class DBUser{
    
    static var dbUser = DBUser()
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    
    
    
    
    func addData(nameValue: String, passwordValue: String){
        
        let user = NSEntityDescription.insertNewObject(forEntityName: "User", into: context!) as! User
        
        user.name = nameValue
        user.password = passwordValue
        
        do{
            try context?.save()
            print("login info saved")
        }
        catch{
            print("error occured ")
        }
        
        
    }
    
    func getData() -> [User]{
        
        var user = [User]()
        
        var fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        
        do{
            user = try context?.fetch(fetchRequest) as! [User]
           
        }
        catch{
            print("could not fetch data ")
        }
        
        return user
        
    }
    
    func getOneData(name: String) -> User{
        
        var user = User()
        var fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        fetchRequest.predicate = NSPredicate(format: "name == %@", name)
        
        fetchRequest.fetchLimit = 1
        
        do{
            let request = try context?.fetch(fetchRequest) as! [User]
            if(request.count != 0 ){
                user = request.first!
                
            }
            else{
                print("data not found")
            }
        }
        catch{
            print("error")
        }
        return user
    }
    
    func updateData(name: String, password: String){
        var user = User()
        
        var fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        fetchRequest.predicate = NSPredicate(format: "name == %@", name)
        
        do{
            let use = try context?.fetch(fetchRequest)
            if (use?.count != 0){
                user = use?.first as! User
                user.password = password
                try context?.save()
                print("data updated")
            }
        }catch{
            print("error in update")
        }
    }
    
    func deleteData(name: String){
        
        var fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        fetchRequest.predicate = NSPredicate(format: "name == %@", name)
        
        do{
            let user = try context?.fetch(fetchRequest)
            context?.delete(user?.first as! User)
            try context?.save()
            print("data was deleted")
        }
        catch{
            print("error in deleting")
        }
        
    }
    
    
    
}
