//
//  Response.swift
//  YouTube-iOS-App
//
//  Created by Joseph Manguso on 7/21/20.
//  Copyright © 2020 Joseph Manguso. All rights reserved.
//

import Foundation

struct Response: Decodable {
    
    var items: [Video]?
    
    enum CodeKeys:String, CodingKey {
        
        case items
    }
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodeKeys.self)
        
        self.items = try container.decode([Video].self, forKey: .items)
        
    }
}
