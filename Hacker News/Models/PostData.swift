//
//  PostData.swift
//  Hacker News
//
//  Created by Bekzod Khaitboev on 3/24/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let url: String?
    let title: String
    
}
