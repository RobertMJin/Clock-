//
//  ModelData.swift
//  Landmarks
//
//  Created by Robert Jin on 2023-1-09.
//

import Foundation

@Observable
class ModelData{
    //var timers: [Timer] = nil
}

func load<T: Decodable>(filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch{
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
