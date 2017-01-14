//
//  VideoCell.swift
//  Skate Videos
//
//  Created by David Boles on 1/10/17.
//  Copyright © 2017 David Boles. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoTitle: UILabel!
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    func updateUI(vidModel: VideoModel) {
        videoTitle.text = vidModel.videoTitle
        
        let url = URL(string: vidModel.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch  {
                
            }
        }
    }
    
    
}//
