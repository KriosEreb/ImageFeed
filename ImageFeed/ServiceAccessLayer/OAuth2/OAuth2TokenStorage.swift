//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by Артем Бобриков on 20.08.2026.
//
import Foundation

final class OAuth2TokenStorage {
    var token: String? {
        get {
            UserDefaults.standard.string(forKey: "bearerToken")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "bearerToken")
        }
    }
}
