//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Tia M on 3/6/24.
//

import SwiftUI


struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List {
            Section( header: Text("Meeting Info")) {
                Label("Start Meeting", systemImage: "timer")
                    .font(.headline)
                    .foregroundStyle(Color(scrum.theme.accentColor))
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .foregroundStyle(Color(scrum.theme.accentColor))
                        .background(scrum.theme.mainColor)
                        .clipShape(.rect(cornerRadius: 4))
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person") // stop
                }
            }
        }
    }
}

#Preview {
    DetailView(scrum: DailyScrum.sampleData[0])
}
