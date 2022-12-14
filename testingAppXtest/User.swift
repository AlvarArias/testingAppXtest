//
//  User.swift
//  testingAppXtest
//
//  Created by Alvar Arias on 2022-11-07.
//

import Foundation
import Combine


class User: ObservableObject {
    @Published var isLoggedIn = false
    @Published var username = ""
    @Published var password = ""
 
    func login() -> Bool {
        guard username == "test" && password == "pass" else {
            return false
        }
        password = ""
        isLoggedIn = true
        return true
    }
    
    func logout() {
            isLoggedIn = false
            username = ""
        }
    
}
