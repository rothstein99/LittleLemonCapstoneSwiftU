//
//  Dish+CoreDataProperties.swift
//  LittleLemonCapstoneSwiftUI
//
//  Created by Brad Rothstein on 8/30/26.
//
//

public import Foundation
public import CoreData


public typealias DishCoreDataPropertiesSet = NSSet

extension Dish {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dish> {
        return NSFetchRequest<Dish>(entityName: "Dish")
    }

    @NSManaged public var image: String?
    @NSManaged public var price: String?
    @NSManaged public var title: String?

}

extension Dish : Identifiable {

}
