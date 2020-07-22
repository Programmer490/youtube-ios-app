//
//  ViewController.swift
//  YouTube-iOS-App
//
//  Created by Joseph Manguso on 7/20/20.
//  Copyright © 2020 Joseph Manguso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
    }


}

