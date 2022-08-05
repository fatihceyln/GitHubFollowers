//
//  User.swift
//  GitHubFollowers
//
//  Created by Fatih Kilit on 31.07.2022.
//

import Foundation

struct User: Codable {
    let login: String
    let avatarURL: String
    let htmlURL: String
    var name, location, bio: String?
    let publicRepos, publicGists, followers, following: Int
    let createdAt: Date
    
    enum CodingKeys: String, CodingKey {
        case login
        case avatarURL = "avatar_url"
        case htmlURL = "html_url"
        case name, location, bio
        case publicRepos = "public_repos"
        case publicGists = "public_gists"
        case followers, following
        case createdAt = "created_at"
    }
}
