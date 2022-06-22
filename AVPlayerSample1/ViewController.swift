//
//  ViewController.swift
//  AVPlayerSample1
//
//  Created by Tatsuya Moriguchi on 6/22/22.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    let avPlayerViewController = AVPlayerViewController()
    var avPlayer: AVPlayer?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let movieUrl: NSURL? = NSURL(string: "http://techslides.com/demos/sample-videos/small.mp4")
        
        if let url = movieUrl {
            self.avPlayer = AVPlayer(url: url as URL)
            self.avPlayerViewController.player = self.avPlayer
        }
        
        
    }

    @IBAction func PlayButtonTapped(_ sender: UIButton) {
        // Trigger the video to play
        self.present(self.avPlayerViewController, animated: true) { () -> Void in
            self.avPlayerViewController.player?.play()
        }
        
    }
    
}

