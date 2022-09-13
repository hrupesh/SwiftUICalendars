//
//  ContentView.swift
//  WorkingWIthCalendars
//
//  Created by Rupesh Chaudhari on 10/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedDate = Date()
    
    var body: some View {
        TabView {
            DatePickerCalendar()
                .tabItem {
                    Label("DatePicker Calendar", systemImage: "calendar.badge.plus")
                        .padding()
                }
            CalendarView()
                .tabItem {
                    Label("Fullscreen Calendar", systemImage: "calendar")
                        .padding()
                }
                .navigationTitle("TITLE")
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor(Color.purple.opacity(0.2))
            appearance.shadowColor = UIColor(.purple)
            appearance.backgroundEffect = UIBlurEffect(style: .extraLight)
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
