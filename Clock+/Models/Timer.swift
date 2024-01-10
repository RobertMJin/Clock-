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
    var state: Bool
    var duration: [String] = []
    
    func secondsToHoursMinutesSeconds(_ totalSeconds: Int) -> [String] {
        var hours: String
        var minutes: String
        var seconds: String
        
        hours = if (0 < totalSeconds / 3600) && (totalSeconds/3600 < 10) {
            "0" + String(totalSeconds/3600)
        } else {
            String(totalSeconds/3600)
        }
        
        minutes =  if (0 <= ((totalSeconds % 3600) / 60)) && (((totalSeconds % 3600) / 60) < 10) {
            "0" + String((totalSeconds % 3600) / 60)
        } else {
            String((totalSeconds % 3600) / 60)
        }
        
        seconds = if (0 <= ((totalSeconds % 3600) % 60)) && (((totalSeconds % 3600) % 60) < 10) {
            "0" + String((totalSeconds % 3600) % 60)
        } else {
            String((totalSeconds % 3600) % 60)
        }
        
        return [hours, minutes, seconds]
            
    }
    
    init(id: UUID=UUID(), name: String, durationInSeconds: Int, state: Bool) {
        self.id = id
        self.name = if (name == "") {String(durationInSeconds) + " minutes"} else { name}
        self.durationInSeconds = durationInSeconds
        self.state = state
        self.duration = secondsToHoursMinutesSeconds(durationInSeconds)
    }
}

extension Timer {
    static let sampleData: [Timer] =
    [
        Timer(name: "15 minutes", durationInSeconds: 900, state: false),
        Timer(name: "20 minutes", durationInSeconds: 1200, state: false)
    
    ]
    
}
