//
//  ViewController.swift
//  YouTube-iOS-App
//
//  Created by Joseph Manguso on 7/20/20.
//  Copyright © 2020 Joseph Manguso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
    
    @IBOutlet weak var TableView: UITableView!
    
    var model = Model()
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Set ViewController as TableView DataSource and Delegate
        
        TableView.dataSource = self
        TableView.delegate = self
       //set itself as ModelDelegate Delegate
        model.delegate = self
        
        model.getVideos()
    }
    
    //MARK: - ModelDelegate Methods
    
    func videosFetched(_ videos: [Video]) {
        //Set returned videos to Video property
        self.videos = videos
        //refresh tableview
        TableView.reloadData()
    }
    // MARK: - TableView DataSource Methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = TableView.dequeueReusableCell(withIdentifier: Constants.VideoCell_ID, for: indexPath)
        
        //configure cell wit da data
        
        //get title for TableViewCells
        
        let title = self.videos[indexPath.row].title
        
        cell.textLabel?.text = title
        
        //give da cell back
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}

