//
//  ContentView.swift
//  NewDictionary
//
//  Created by Tempnixk on 2022/05/03.
//

import SwiftUI

struct ContentView: View {
    @State private var showFavoritesOnly = false

    var filteredDictionarys: [Dict] {
        dictionaries.filter { dictionary in
            (!showFavoritesOnly || dictionary.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List(dictionaries) { dictionary in
                NavigationLink(destination: DictView(dictionary: dictionary)) {
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

