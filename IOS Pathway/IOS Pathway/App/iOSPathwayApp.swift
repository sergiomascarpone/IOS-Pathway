//
//  iOSPathwayApp.swift
//  IOS Pathway
//
//  Created by Sergio Mascarpone on 12.02.25.
//

import SwiftUI

@main
struct IOSPathwayApp: App {
    @StateObject var appState = AppState()

      var body: some Scene {
          WindowGroup {
              if appState.isAuthenticated {
                  MainTabView()
              } else {
                  WelcomeView()
              }
          }
          .environmentObject(appState)
      }
}
