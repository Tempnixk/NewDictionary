//
//  jsonDecoder.swift
//  NewDictionary
//
//  Created by Tempnixk on 2022/05/04.
//


import SwiftUI
import Foundation

var dictionaries: [Dict] = load("text.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename)")
    }
}

//struct jsonDecoder_Previews: PreviewProvider {
//    static var previews: some View {
//        DictionaryRow(dictionary: dictionaries[1])
//    }
//}

 
