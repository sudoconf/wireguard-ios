//
//  Interface+CoreDataProperties.swift
//  WireGuard
//
//  Created by Jeroen Leenarts on 24-05-18.
//  Copyright © 2018 WireGuard. All rights reserved.
//
//

import Foundation
import CoreData

extension Interface {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Interface> {
        return NSFetchRequest<Interface>(entityName: "Interface")
    }

    @NSManaged public var fwMark: Int32
    @NSManaged public var listenPort: Int16
    @NSManaged public var privateKey: String?
    @NSManaged public var mtu: Int32
    @NSManaged public var dns: String?
    @NSManaged public var table: String?
    @NSManaged public var profile: Profile?
    @NSManaged public var adresses: NSSet?

}

// MARK: Generated accessors for adresses
extension Interface {

    @objc(addAdressesObject:)
    @NSManaged public func addToAdresses(_ value: Address)

    @objc(removeAdressesObject:)
    @NSManaged public func removeFromAdresses(_ value: Address)

    @objc(addAdresses:)
    @NSManaged public func addToAdresses(_ values: NSSet)

    @objc(removeAdresses:)
    @NSManaged public func removeFromAdresses(_ values: NSSet)

}