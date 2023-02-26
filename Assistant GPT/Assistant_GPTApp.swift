//
//  Assistant_GPTApp.swift
//  Assistant GPT
//
//  Created by Luke Drushell on 2/26/23.
//

import SwiftUI

@main
struct Assistant_GPTApp: App {
    var body: some Scene {
        WindowGroup {
            #if os(iOS)
            PhoneView()
            #endif
            #if os(macOS)
            MacView()
            #endif
        }
    }
}
