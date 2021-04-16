//
//  ContentView.swift
//  Hacker News
//
//  Created by Bekzod Khaitboev on 3/24/21.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                }
                
            }
            .navigationBarTitle("Hacker News")
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
//    Post(id: "1", title: "Hello"),
//    Post(id: "1", title: "Hello"),
//    Post(id: "1", title: "Hello"),
//    Post(id: "1", title: "Hello"),
//    Post(id: "1", title: "Hello")
//]
