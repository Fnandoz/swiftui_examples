//
//  ContentView.swift
//  OrdersCoreData
//
//  Created by Fernando Gomes on 29/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderListVM: OrderListViewModel
    
    init() {
        self.orderListVM = OrderListViewModel()
    }
    
    var body: some View {
        List(self.orderListVM.orders) { order in
            HStack {
                Image(order.type)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                Text(order.name)
                    .font(.title)
                    .padding(.leading, 10)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
