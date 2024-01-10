//
//  TimerView.swift
//  Clock+
//
//  Created by Robert Jin on 2024-01-02.
//

import SwiftUI

struct TimersView: View {
    @State var timers: [Timer]
    @State private var isPresentingEditView = false
    
    var body: some View {
        VStack{
            Section(header: Text("General")) {
                NavigationStack {
                    List($timers) { $timer in
                        NavigationLink (destination: TimerEditView(timer: $timer)) {
                            TimerInStackView(timer: timer)
                        }
                    }
                }
            }
            
            Section(header: Text("Recents")) {
                List($timers) { $timer in   // this will need to be changed to history
                    NavigationLink (destination: TimerEditView(timer: $timer)) {
                        TimerInStackView(timer: timer) //change to history (create new state object)
                    }
                }
            }
        }
        .navigationTitle("Timers")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    if isPresentingEditView == true {
                        isPresentingEditView = false
                    } else {
                        isPresentingEditView = true
                    }
                } label: {
                    if isPresentingEditView {
                        Text("Done")
                            .bold()
                    } else {
                        Text("Edit")
                    }
                }
            }
        }
    }
}

struct TimersView_Previewer: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TimersView(timers: (Timer.sampleData))
        }
    }
}
