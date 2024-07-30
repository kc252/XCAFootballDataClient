//
//  File.swift
//  
//
//  Created by Kevin Campbell on 30/07/2024.
//

import Foundation

public struct Highlight: Identifiable, Decodable {
    
    public let id: Int
        let type: String?
        let imgURL: String?
        let title: String?
        let description: String?
        let url, embedURL: String
        let channel, source: String?
        let match: Match

        enum CodingKeys: String, CodingKey {
            case id, type
            case imgURL = "imgUrl"
            case title, description, url
            case embedURL = "embedUrl"
            case channel, source, match
        }
}

public struct HighlightsResponse: Decodable {
    
    public var highlights: [Highlight]?
    
}
