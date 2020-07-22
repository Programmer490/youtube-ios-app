//
//  Video.swift
//  YouTube-iOS-App
//
//  Created by Joseph Manguso on 7/21/20.
//  Copyright © 2020 Joseph Manguso. All rights reserved.
//

import Foundation

struct Video : Decodable {
    
    var videoID = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var publishedAt = Date()
    
    enum CodingKeys: String, CodingKey{
        
        case snippet
        case thumbnails
        case high
        case resourceId
        case publishedAt
        case title
        case description
        case thumbnail = "url"
        case videoID = "videoId"
        
        
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        //Parse da Title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        //Parse da Description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        //Parse da Upload Date
        self.publishedAt = try snippetContainer.decode(Date.self, forKey: .publishedAt)
        
        //Parse da Thumbnails
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        //Parse da Vid ID
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        
        self.videoID = try resourceIdContainer.decode(String.self, forKey: .videoID)
        }
}
