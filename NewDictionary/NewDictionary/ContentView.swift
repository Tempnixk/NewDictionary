//
//  ContentView.swift
//  NewDictionary
//
//  Created by Tempnixk on 2022/05/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(dictionaries) { dictionary in
                NavigationLink(destination: DetailView(dictionary: dictionary)) {
                    DictionaryRow(dictionary: dictionary)
                }
            }
                .navigationTitle("Swift Dictionary")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DictionaryRow: View {
    
    let dictionary: Dictionary
    
    var body: some View {
            VStack(alignment: .leading) {
                Text(dictionary.title)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(dictionary.subtitle)
                    .foregroundColor(.gray)
            }
    }
}
