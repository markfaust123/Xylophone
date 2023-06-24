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
        
        // print(sender.titleLabel?.text)
        // print(sender.currentTitle!)
        playSound(sender.currentTitle!)
        
    }
    
    // underscore here makes it so that argument label is not required upon function call. If no underscore, need to specify argument label in call like this: playSound(soundName: currentTitle!)
    func playSound(_ soundName: String) {
        // Tell code where to find the correct sound to play
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        // Gives the audio file specified to the AudioPlayer
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

}

