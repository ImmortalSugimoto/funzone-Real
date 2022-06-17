//
//  Note+CoreDataProperties.swift
//  Funzone
//
//  Created by Liban Abdinur on 6/6/22.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var title: String?
    @NSManaged public var id: Int32
    @NSManaged public var desc: String?
    @NSManaged public var deletedData: Date?

}

extension Note : Identifiable {

}
