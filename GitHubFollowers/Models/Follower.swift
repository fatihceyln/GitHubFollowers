//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Fatih Kilit on 31.07.2022.
//

import Foundation

struct Follower: Codable, Hashable {
    let login: String
    let avatarURL: String

    enum CodingKeys: String, CodingKey {
        case login
        case avatarURL = "avatar_url"
    }
}
