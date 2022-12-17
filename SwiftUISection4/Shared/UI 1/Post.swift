//
//  Post.swift
//  SwiftUISection4 (iOS)
//
//  Created by Arun_Skyraan on 28/10/22.
//

import Foundation

struct Post: Identifiable {
    let id = UUID()
    
    let subreddit: String
    let op: String
    let age: String
    let title: String
    let description: String
    let upvotes: Int
    let comments: Int
    
    static var preview: [Post] = [
        Post(
            subreddit: "iOS",
            op: "arun_m",
            age: "5h",
            title: "How do I transition from one view to another via a button click",
            description: "You can find my project on Github. The idea is, I have two views valled MainWindowView and ChatWindowView. ...",
            upvotes: 4,
            comments: 3
        ),
        Post(
            subreddit: "iOS",
            op: "kalaiyarasi",
            age: "35m",
            title: "Error with Swiftui Dictionary",
            description: "Hi everyone, does anyone know why this is happing in my for ech? The content of the array is on the console. ...",
            upvotes: 1,
            comments: 2
        ),
        Post(
            subreddit: "iOS",
            op: "ganesh",
            age: "50m",
            title: "How to make my custom UIView (XIB) dynamic in height?",
            description: "So I have a custom UIView and it's supposed to look like a receipt, the first half of the UIView is the orderID, the place's name, the customer name, the time and date.",
            upvotes: 10,
            comments: 1
        ),
        Post(
            subreddit: "iOS",
            op: "sowmie",
            age: "6h",
            title: "Is Swift Playground a great place to start?",
            description: "I have close to no experience in programming. I was thinking about learning Swift and curious if Playgrounds is a decent tool to start with.",
            upvotes: 16,
            comments: 10
        ),
    ]
}
