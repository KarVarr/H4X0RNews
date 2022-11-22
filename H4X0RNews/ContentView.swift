//
//  ContentView.swift
//  H4X0RNews
//
//  Created by Karen Vardanian on 22.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                List(posts) { item in
                    Text(item.title)
                }
            }
            .navigationTitle("H4X0R News")
            
        }
        
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "hello"),
    Post(id: "2", title: "hello2"),
    Post(id: "3", title: "hello3"),
]
