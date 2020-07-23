//
//  Model.swift
//  YouTube-iOS-App
//
//  Created by Joseph Manguso on 7/21/20.
//  Copyright © 2020 Joseph Manguso. All rights reserved.
//

import Foundation

protocol ModelDelegate {
    func videosFetched(
        _ videos:[Video])
}

class Model {
    
    var delegate:ModelDelegate?
    
    func getVideos() {
        
    //Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
    //Get a URLSession object
        let session = URLSession.shared
    //Get a data task from URLSession
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if error != nil || data == nil {
                return
            }
            do{
                // parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                if response.items != nil {
                    
                    DispatchQueue.main.async {
                        // call the videosFetched method of delegate
                            self.delegate?.videosFetched(response.items!)
                    }
                    
                }
                dump(response)
            }
            catch {
                
            }
        }
    //Kick off the Task
        dataTask.resume()
    }
    
}
