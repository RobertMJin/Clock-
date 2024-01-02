//
//  TimerView.swift
//  Clock+
//
//  Created by Robert Jin on 2024-01-02.
//

import SwiftUI

struct TimersView: View {
    
    @State private var isPresentingEditView = false
    
    var body: some View {
        List {
            Section(header: Text("General")) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            
            Section(header: Text("Recents")) {
                Text("Test")
            }
        }
        .navigationTitle("Timers")
        /*.toolbar {
            Button("Edit") {
                
            }
            Spacer()
            Button(systemImage: "plus") {
                
            }
        }*/
    }
}

struct TimersView_Previewer: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TimersView()
        }
    }
}
