//
//  TimerInStackView.swift
//  Clock+
//
//  Created by Robert Jin on 2024-01-02.
//

import SwiftUI

struct TimerInStackView: View {
    var timer: Timer
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                if (timer.duration[0] == "0") {
                    Text(timer.duration[1] + ":" + timer.duration[2])
                        .font(.title)
                } else {
                    Text("00:00:00")
                        .font(.title)
                }
                Text(timer.name)
                    .font(.subheadline)
            }
            Spacer()
            Image(systemName: !timer.state ? "play.circle" : "pause.circle")
                .renderingMode(.template)
                .foregroundColor(.orange)
        }
        .padding(.horizontal)
    }
}

struct TimerInStackView_Previewer: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TimerInStackView(timer: Timer.sampleData[0])
        }
    }
}
