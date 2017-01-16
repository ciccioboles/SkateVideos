//
//  ViewController.swift
//  Skate Videos
//
//  Created by David Boles on 1/9/17.
//  Copyright © 2017 David Boles. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var vidArray = [VideoModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vid1 = VideoModel(imageURL: "https://i.ytimg.com/vi/4sQotNQINUQ/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/p8AK7rQr8AU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Cab's Street Style")
        
        let vid2 = VideoModel(imageURL: "https://c2.staticflickr.com/8/7278/7586094210_af588e98bf_b.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PnF1FtjowDw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Bieble in Fully Flared")
        
        let vid3 = VideoModel(imageURL: "http://theberrics.com/media/wysiwyg/FooterBlock/KyleWalker_ReynoldsBoard.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CcXKO998nB4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Kyle Walker SOTY")
        
        let vid4 = VideoModel(imageURL: "https://i.ytimg.com/vi/z7xZksdPHQ0/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SweF_nDX_Wk\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Nyjah Huston OMG Part")
        
        let vid5 = VideoModel(imageURL: "http://www.unclejohnsweb.com/joweb/webimages/z190.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/u4xQQP4xA18\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Powell Skate Zone")
        
        

        
        
        vidArray.append(vid1)
        vidArray.append(vid2)
        vidArray.append(vid3)
        vidArray.append(vid4)
        vidArray.append(vid5)

        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        
    }//vdl
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as? VideoCell{
                
            let vidModel = vidArray[indexPath.row]
            
            cell.updateUI(vidModel: vidModel)
            
            return cell
            
        } else {
            
            return UITableViewCell()
        }
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vidArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vidModel = vidArray[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: vidModel)
    }
  
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let skate = sender as?  VideoModel {
                destination.vidModel = skate
            }
        }
    }
    
    
    
    
    
    
    
}//vc

