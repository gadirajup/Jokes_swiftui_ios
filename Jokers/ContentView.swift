//
//  ContentView.swift
//  Jokers
//
//  Created by Prudhvi Gadiraju on 9/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @FetchRequest(entity: Joke.entity(), sortDescriptors: [
        NSSortDescriptor(keyPath: \Joke.setup, ascending: true)
    ]) var jokes: FetchedResults<Joke>
    
    var body: some View {
        NavigationView {
            List {
                ForEach(jokes, id: \.setup) { joke in
                    NavigationLink(destination: Text(joke.punchline)) {
                        EmojiView(for: joke.rating)
                        Text(joke.setup)
                    }
                }
            }.navigationBarTitle("Vault of Laughs")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
