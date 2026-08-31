/*
import SwiftUI

@main
struct LittleLemonCapstoneSwiftUIApp: App {
    
    var body: some Scene {
        WindowGroup {
            if UserDefaults.standard.bool(forKey: "isLoggedIn") {
                Home()
            } else {
                Onboarding()
            }
        }
    }
}

*/

import SwiftUI

@main
struct LittleLemonCapstoneSwiftUIApp: App {
    @AppStorage("isLoggedIn") private var isLoggedIn = false

    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                Home()
            } else {
                Onboarding()
            }
        }
    }
}

