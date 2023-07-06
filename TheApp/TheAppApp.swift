//
//  TheAppApp.swift
//  TheApp
//
//  Created by Andrew Beshay on 8/22/22.
//

import SwiftUI

@main
struct TheAppApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .preferredColorScheme(.dark)

        }
    }
}
