//
//  User+CoreDataProperties.swift
//  Funzone
//
//  Created by Liban Abdinur on 6/5/22.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var password: String?

}

extension User : Identifiable {

}
