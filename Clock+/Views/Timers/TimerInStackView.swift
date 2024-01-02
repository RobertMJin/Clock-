//
//  TimerInStackView.swift
//  Clock+
//
//  Created by Robert Jin on 2024-01-02.
//

import SwiftUI

struct TimerInStackView: View {
    let isRunning: Bool
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("30:00")
                    .font(.title)
                Text("30 mins")
                    .font(.subheadline)
            }
            Spacer()
            Image(systemName: !isRunning ? "play.circle" : "pause.circle")
                .renderingMode(.template)
                .foregroundColor(.orange)
        }
        .padding(.horizontal)
    }
}

struct TimerInStackView_Previewer: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TimerInStackView(isRunning: false)
        }
    }
}
