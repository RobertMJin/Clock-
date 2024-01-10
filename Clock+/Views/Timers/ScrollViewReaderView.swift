//
//  ScrollViewReader.swift
//  Clock+
//
//  Created by Robert Jin on 2024-01-02.
//

import SwiftUI

struct ScrollViewReaderView: View {
    @State private var selectedIndex: Int?
    let title: String
    let range: ClosedRange<Int>
    let binding: Binding<Int>
    
    var body: some View {
        HStack(spacing: -4.0) {
            Picker(title, selection: binding) {
                ForEach(range, id: \.self) { timeIncrement in
                    HStack {
                        Spacer()
                        Text("\(timeIncrement)")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.trailing)
                        Spacer()
                    }
                }
            }
            .pickerStyle(InlinePickerStyle())
            .labelsHidden()
            
            Text(title)
                .fontWeight(.bold)
        }
    }
}
    
