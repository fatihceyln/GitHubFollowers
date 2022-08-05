//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Fatih Kilit on 1.08.2022.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the service. Please try again."
    case invalidData = "The data recieved from the service was invalid. Please try again."
    case unableToFavorite = "There was an error favoriting user. Please try again."
    case alreadyInFavorites = "You've already favorited this user. You must really like them!"
}
