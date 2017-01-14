//
//  VideoModel.swift
//  Skate Videos
//
//  Created by David Boles on 1/11/17.
//  Copyright © 2017 David Boles. All rights reserved.
//

import Foundation

class VideoModel {
    
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoTitle
        _videoTitle = videoTitle
        
    }
    
    
    
}
