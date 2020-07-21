//
//  Constants.swift
//  YouTube-iOS-App
//
//  Created by Joseph Manguso on 7/21/20.
//  Copyright © 2020 Joseph Manguso. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyAP2kljiBj8z_XdDqP8mI2q5NidDDz4SVs"
    static var PLAYLIST_ID = "PLx096T6kj9Z4bCQpIvF5Go3lATgnOgZB7"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
