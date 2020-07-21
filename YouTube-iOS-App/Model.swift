//
//  Model.swift
//  YouTube-iOS-App
//
//  Created by Joseph Manguso on 7/21/20.
//  Copyright © 2020 Joseph Manguso. All rights reserved.
//

import Foundation

class Model {
    
    func getVideos() {
        
    //Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
    //Get a URLSession object
        let session = URLSession.shared
    //Get a data task from URLSession
        let dataTask = session.dataTask(with: url!) { (data, resoponse, error) in
            if error != nil || data == nil {
                return
            }
            
            // parsing the data into video objects
        }
    //Kick off the Task
        dataTask.resume()
    }
    
}
