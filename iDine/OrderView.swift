//
//  OrderView.swift
//  iDine
//
//  Created by jlk on 1/28/25.
//

import SwiftUI

struct OrderView : View {
  @EnvironmentObject var order: Order
  var body: some View {
    NavigationStack {
      List {
        Section {
          ForEach(order.items) { item in
            HStack {
              Text(item.name)
              Spacer()
              Text("$\(item.price)")
            }
          }
        }
        Section {
          NavigationLink("Place Order") {
            Text("Check out")
          }
        }
      }
      .navigationTitle("Order")
    }
  }
}

#Preview {
  OrderView().environmentObject(Order())
}
