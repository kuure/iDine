//
//  iDineApp.swift
//  iDine
//
//  Created by jlk on 1/25/25.
//

import SwiftUI

@main

struct iDineApp: App {
  @StateObject var order = Order()

  var body: some Scene {
    WindowGroup {
      MainView()
        .environmentObject(order)
    }
  }
}
