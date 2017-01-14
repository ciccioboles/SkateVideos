//
//  VideoVC.swift
//  Skate Videos
//
//  Created by David Boles on 1/10/17.
//  Copyright © 2017 David Boles. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var webView: UIWebView!
    
    private var _vidModel: VideoModel!
    
    var vidModel: VideoModel {
        get{
            return _vidModel
        } set {
            _vidModel = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = vidModel.videoTitle
        webView.loadHTMLString(vidModel.videoURL, baseURL: nil)
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
