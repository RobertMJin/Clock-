//
//  Play Button.swift
//  Clock+
//
//  Created by Robert Jin on 2024-01-02.
//
import SwiftUI

struct PlayButton: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white,lineWidth: 4)
            }
            .shadow(color:.green, radius:7)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
