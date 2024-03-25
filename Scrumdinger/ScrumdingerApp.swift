//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Tia M on 3/6/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
