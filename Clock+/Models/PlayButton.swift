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
        ZStack {
            Circle()
                .stroke(lineWidth: 12)
            image
                .resizable()
                .frame(width: 50, height: 50)
                .scaledToFill()
        }
        
        
        
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white,lineWidth: 4)
            }
    }
}

struct PlayButton_Previewer: PreviewProvider {
    static var previews: some View {
        PlayButton(image: Image(systemName: "play.fill"))
    }
    
}
