//
//  PostData.swift
//  H4x0R News
//
//  Created by Vinicius Santana on 27/06/20.
//  Copyright © 2020 Vinicius Santana. All rights reserved.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let result = try? newJSONDecoder().decode(Result.self, from: jsonData)

import Foundation

// MARK: - Result
struct Result: Codable {
    let hits: [Post]
    let nbHits, page, nbPages, hitsPerPage: Int
    let exhaustiveNbHits: Bool
    let query, params: String
    let processingTimeMS: Int
}

// MARK: - Hit
struct Post: Codable, Identifiable {
    let createdAt, title: String
    let url: String?
    let author: String
    let points: Int
    let storyText, commentText,storyURL,storyTitle: String?
    let numComments: Int
    let storyID, parentID: Int64?
    let createdAtI: Int
    let tags: [String]
    let objectID: String
    let highlightResult: HighlightResult
    var id: String {
        return objectID
    }

    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case title, url, author, points
        case storyText = "story_text"
        case commentText = "comment_text"
        case numComments = "num_comments"
        case storyID = "story_id"
        case storyTitle = "story_title"
        case storyURL = "story_url"
        case parentID = "parent_id"
        case createdAtI = "created_at_i"
        case tags = "_tags"
        case objectID
        case highlightResult = "_highlightResult"
    }
}

// MARK: - HighlightResult
struct HighlightResult: Codable {
    let title, url, author: Author
}

// MARK: - Author
struct Author: Codable {
    let value: String
    let matchLevel: MatchLevel
    let matchedWords: [String]
}

enum MatchLevel: String, Codable {
    case none = "none"
}

