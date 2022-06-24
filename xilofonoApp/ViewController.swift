//
//  ViewController.swift
//  xilofonoApp
//
//  Created by Andres Mendieta on 6/24/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func teclaPresionada(_ sender: UIButton) {
        playSound()
    }
    
    private func playSound() {
        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else {return}
        player = try? AVAudioPlayer(contentsOf: url)
        player?.play()
    }
    
}

