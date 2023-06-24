//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

// Audio-visual foundational module
import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    // ! "unwraps"
    // Create new AVAudioPlayer
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        // Tell code where to find the correct sound to play
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        // Gives the audio file specified to the AudioPlayer
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

}

