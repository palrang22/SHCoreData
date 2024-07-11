//
//  PhoneBook+CoreDataClass.swift
//  SHCoreData
//
//  Created by 김승희 on 7/10/24.
//
//

import Foundation
import CoreData

@objc(PhoneBook)
public class PhoneBook: NSManagedObject {
    public static let className = "PhoneBook"
    public enum Key {
        static let name = "name"
        static let phoneNumber = "phoneNumber"
    }
}
