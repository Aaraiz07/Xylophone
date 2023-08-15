//
//  ViewController.swift
//  Xylophone
//
//  Created by Aaraiz Wasim on 15/08/2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func redButtonPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound(){
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

