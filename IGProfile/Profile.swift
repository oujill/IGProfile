//
//  Profile.swift
//  IGProfile
//
//  Created by JillOU on 2020/8/28.
//  Copyright © 2020 Jillou. All rights reserved.
//

import Foundation
struct Profile:Codable{
    var graphql: Graphql
}
struct Graphql:Codable{
    var user: User
}
struct User:Codable{
    var biography: String
    var edge_followed_by: Count
    var edge_follow: Count
    var full_name: String
    var external_url: URL//網站連結
    var username: String//還沒用到
    var profile_pic_url: URL//個人照片
    var highlight_reel_count: Int
    var edge_owner_to_timeline_media: Edge//底下po文資料
}
struct Edge:Codable {
    var count: Int
    var edges: [Edges]
}
struct Edges:Codable {
    var node: Node
}
struct Node:Codable {
    var display_url: URL
}
struct Count :Codable{
    var count: Int
}
