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
        playSound(sender.currentTitle)
        //Reduces the sender's (the button that got pressed) opacity to half.
                sender.alpha = 0.5
                
                //Code should execute after 0.2 second delay.
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    //Bring's sender's opacity back up to fully opaque.
                    sender.alpha = 1.0
                }
    }
    
    func playSound(_ titleName: String?){
        let url = Bundle.main.url(forResource: titleName ?? "", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

