//
//  testingAppXtestApp.swift
//  testingAppXtest
//
//  Created by Alvar Arias on 2022-11-07.
//

import SwiftUI

@main
struct testingAppXtestApp: App {
    
    var user = User()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(user)
        }
    }
}
