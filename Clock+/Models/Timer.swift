//
//  Timer.swift
//  Clock+
//
//  Created by Robert Jin on 2024-01-02.
//

import Foundation

struct Timer: Identifiable, Codable {
    let id: UUID
    var name: String
    var durationInSeconds: Int
    
    init(id: UUID=UUID(), name: String, durationInSeconds: Int) {
        self.id = id
        self.name = name
        self.durationInSeconds = durationInSeconds
    }
}

extension Timer {
    static let sampleData: [Timer] =
    [Timer(name: "Timer", durationInSeconds: 1500)]
    
}
