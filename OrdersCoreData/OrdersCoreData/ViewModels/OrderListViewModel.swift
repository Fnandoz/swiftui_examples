//
//  OrderListViewModel.swift
//  OrdersCoreData
//
//  Created by Fernando Gomes on 29/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class OrderListViewModel: ObservableObject {
    
    @Published
    var orders = [OrderViewModel]()
    
    init() {
        fetchAllOrders()
    }
    
    func fetchAllOrders() {
        self.orders = CoreDataManager.shared.getAllOrders().map(OrderViewModel.init)
    }
}

class OrderViewModel: Identifiable {
    var id = UUID()
    var name = ""
    var type = ""
    
    init(order: Order) {
        self.name = order.name!
        self.type = order.type!
    }
}
