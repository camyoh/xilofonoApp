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
        print(sender.currentTitle ?? "No title")
        playSound(with: sender.currentTitle ?? "C")
    }
    
    private func playSound(with soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else {return}
        player = try? AVAudioPlayer(contentsOf: url)
        player?.play()
    }
    
}

