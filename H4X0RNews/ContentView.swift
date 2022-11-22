//
//  ContentView.swift
//  H4X0RNews
//
//  Created by Karen Vardanian on 22.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            VStack {
                List(networkManager.posts) { item in
                    HStack {
                        Text(String(item.points))
                        Text(item.title)
                    }
                }
            }
            .navigationTitle("H4X0R News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//let posts = [
//    Post(id: "1", title: "hello"),
//    Post(id: "2", title: "hello2"),
//    Post(id: "3", title: "hello3"),
//]
