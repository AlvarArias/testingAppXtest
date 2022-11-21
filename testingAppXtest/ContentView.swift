//
//  ContentView.swift
//  testingAppXtest
//
//  Created by Alvar Arias on 2022-11-07.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var user: User
    @State var showLogin = false
    
    var body: some View {
        VStack {

        Text(!user.isLoggedIn ? "Welcome!" : "Welcome \(user.username)!")
                    .font(.title)
         
                Spacer().frame(height: 20)
         
            
            Button(action: {
                if !user.isLoggedIn {
                    showLogin = true
                } else {
                    user.logout()
                }
            }, label: {
                Text(!user.isLoggedIn ? "Login" : "Logout")
            })
            .accessibilityLabel("loginButton")
        }
        .sheet(isPresented: $showLogin) {
                LoginView()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
