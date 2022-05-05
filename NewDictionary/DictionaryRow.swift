//
//  DictionaryRow.swift
//  NewDictionary
//
//  Created by Tempnixk on 2022/05/05.
//

import SwiftUI


struct DictionaryRow: View {
    let dictionary: Dict
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(dictionary.title)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(dictionary.subtitle)
                    .foregroundColor(.gray)
                if dictionary.isFavorite{
                    Image(systemName: "bookmark.fill")
                        .foregroundColor(.yellow)
                }
            }
            }
    }
}
