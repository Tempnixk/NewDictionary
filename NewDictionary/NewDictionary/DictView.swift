//
//  DictView.swift
//  NewDictionary
//
//  Created by Tempnixk on 2022/05/03.
//

import SwiftUI

struct DictView: View {
    
    let dictionary: Dictionary
    
    var body: some View {
    
        VStack {
            
//            Text(dictionary.title)
//                .font(.title)
//                .fontWeight(.medium)
            Form {
                HStack {
                    Spacer()
                    Text(dictionary.subtitle)
                        .foregroundColor(.gray)
                        .font(.callout)
                    Spacer()
                   
                }.navigationTitle(Text(dictionary.title)
)
                VStack {
                    HStack{
                        Spacer()
                        Text("Summary")
                        Spacer()
                        
                    }
                    
                    Text(dictionary.summary)
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                VStack {
                    HStack{
                        Spacer()
                        Text("Declaration")
                        Spacer()
                        
                    }

                    Text(dictionary.declaration)
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                VStack {
                    HStack{
                        Spacer()
                        Text("Overview")
                        Spacer()
                        
                    }
                    Text(dictionary.overview)
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                Section {
                    HStack{
                        Spacer()
                        Button(action: {
                            print("Favorite")
                        }) {
                            Text("Add to Favorite")
                        }
                        Spacer()
                        
                    }
                    
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DictView(dictionary: dictionaries[0])
    }
}
