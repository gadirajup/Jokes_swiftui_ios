//
//  ContentView.swift
//  Jokers
//
//  Created by Prudhvi Gadiraju on 9/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct Joke {
    var setup: String
    var punchline: String
    var rating: String
}

struct ContentView: View {
    
    let jokes = [
        Joke(setup: "What's a cow's favorite place", punchline: "A mooseum", rating: "Silence"),
        Joke(setup: "What's brown and sticky?", punchline: "A Stick", rating: "Sigh"),
        Joke(setup: "What's orange and sounds like a parrot", punchline: "A carrot", rating: "Smirk")
    ]
    
    var body: some View {
        List {
            ForEach(jokes, id: \.setup) { joke in
                HStack {
                    EmojiView(for: joke.rating)
                    Text(joke.setup)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
