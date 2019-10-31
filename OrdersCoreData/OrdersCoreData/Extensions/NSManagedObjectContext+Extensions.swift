//
//  NSManagedObjectContext+Extensions.swift
//  OrdersCoreData
//
//  Created by Fernando Gomes on 29/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension NSManagedObjectContext {
    static var current: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
