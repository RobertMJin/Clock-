//
//  TimerEditView.swift
//  Clock+
//
//  Created by Robert Jin on 2024-01-09.
//

import SwiftUI

struct TimerEditView: View {
    @Binding var timer: Timer
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TimerEditView(timer: .constant(Timer.sampleData[0]))
}
