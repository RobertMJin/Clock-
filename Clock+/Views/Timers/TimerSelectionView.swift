//
//  TimerSelectionView.swift
//  Clock+
//
//  Created by Robert Jin on 2024-01-02.
//

import SwiftUI

class TimerScrollModel: ObservableObject {
    @Published var selectedHoursAmount = 0
    @Published var selectedMinsAmount = 15
    @Published var selectedSecsAmount = 0
    
    let hoursRange = 0...23
    let minsRange = 0...59
    let secondsRange = 0...59
}
struct TimerSelectionView: View {
    @StateObject private var model = TimerScrollModel()
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                let size = geometry.size
                RoundedRectangle(cornerRadius: 5)
                    .size(width: size.width, height: 30)
                    .opacity(0.5)
                    .offset(x: 0, y: size.height/2-15)
                
                HStack(alignment: .center) {
                        ScrollViewReaderView(title: "hours", range: model.hoursRange, binding: $model.selectedHoursAmount)
                        ScrollViewReaderView(title: "min", range: model.minsRange, binding: $model.selectedMinsAmount)
                        ScrollViewReaderView(title: "sec", range: model.secondsRange, binding: $model.selectedSecsAmount)
                }
                
                .padding(.trailing, 15)
            }
            .padding(.horizontal, 20)
        }
        
    }
}

struct TimerSelectionViewPreviewer: PreviewProvider {
    static var previews: some View {
        TimerSelectionView()
    }
}
