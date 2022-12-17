//
//  HomeView.swift
//  SwiftUISection4 (iOS)
//
//  Created by Arun_Skyraan on 28/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var posts: [Post] = Post.preview
    
    var body: some View {
        VStack {
            VStack {
                SearchBarView()
                
                HStack {
                    Text("News")
                    Spacer()
                    Text("Home")
                        .overlay(alignment: .bottom) {
                            Rectangle()
                                .fill(.blue)
                                .frame(height: 1)
                                .padding(.top)
                        }
                    Spacer()
                    Text("Popular")
                    Spacer()
                    Text("Awarded")
                }
                .font(.title3)
                .padding()
            }
            
            ScrollView {
                ForEach(posts) { post in
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "house")
                                .symbolVariant(.circle)
                                .font(.title)
                            
                            VStack(alignment: .leading) {
                                Text("\(post.subreddit)")
                                Text("@\(post.op) | \(post.age) ago | skyRaan.com")
                            }
                            
                            Spacer()
                            
                            Image(systemName: "ellipsis")
                                .rotationEffect(.degrees(90))
                        }
                        .foregroundColor(.secondary)
                        
                        Text(post.title)
                            .font(.headline)
                        
                        Text(post.description)
                            .foregroundColor(Color.primary.opacity(0.85))
                        
                        HStack {
                            Group {
                                Image(systemName: "arrow.up")
                                Text(post.upvotes, format: .number)
                                Image(systemName: "arrow.down")
                            }
                            
                            Spacer()
                            
                            Group {
                                Image(systemName: "bubble.right")
                                Text(post.comments, format: .number)
                            }
                            
                            Spacer()
                            
                            Group {
                                Image(systemName: "square.and.arrow.up")
                                Text("Share")
                            }
                            
                            Spacer()
                            
                            Group {
                                Image(systemName: "gift")
                                Text("Award")
                            }
                        }
                    }
                    .padding(8)
                    .background(Color(.systemBackground))
                }
            }
            .background(Color.gray.opacity(0.2))
        }
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
