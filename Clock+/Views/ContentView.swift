//
//  ContentView.swift
//  Clock+
//
//  Created by Robert Jin on 2024-01-02.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .timer
    
    enum Tab {
        case worldClock
        case alarms
        case stopWatch
        case timer
    }
    
    var body: some View {
        TabView(selection: $selection) {
            WorldClockList()
                .tabItem {
                    Label("World Clock", systemImage: "globe")
                }
                .tag(Tab.worldClock)
            
            AlarmList()
                .tabItem {
                    Label("Alarms", systemImage: "alarm.fill")
                }
                .tag(Tab.alarms)
            
            StopWatchView()
                .tabItem {
                    Label("Stopwatch", systemImage: "stopwatch.fill")
                }
                .tag(Tab.stopWatch)
            
            TimersView()
                .tabItem {
                    Label("Timers", systemImage: "timer")
                }
                .tag(Tab.timer)
        }
    }
}

struct ContentViewPreviewer: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
