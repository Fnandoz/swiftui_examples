//
//  CoreDataManager.swift
//  OrdersCoreData
//
//  Created by Fernando Gomes on 29/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager {
    
    static let shared = CoreDataManager(moc: NSManagedObjectContext.current)
    
    var moc: NSManagedObjectContext
    
    private init(moc: NSManagedObjectContext) {
        self.moc = moc
    }
    
    func getAllOrders() -> [Order] {
        var orders = [Order]()
        
        let orderRequest: NSFetchRequest<Order> = Order.fetchRequest()
        
        do {
            orders = try self.moc.fetch(orderRequest)
        } catch let error as NSError {
            print(error)
        }
        
        return orders
    }
    
}
