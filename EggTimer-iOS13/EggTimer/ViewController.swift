//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let countdownTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    var totalTime = 0
    var timePassed = 0
    
    var timer = Timer()

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()

        totalTime = countdownTimes[sender.currentTitle!]!
        
        textLabel.text = sender.currentTitle!
        
        progressBar.progress = 0.0
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
    }
    
    @objc func update() {
        if (timePassed < totalTime) {
            
            timePassed+=1
            let percentageProgess = Float(timePassed)/Float(totalTime)
            print(percentageProgess)
            progressBar.progress = percentageProgess
            if(timePassed == totalTime){
                playSound()
                textLabel.text = "DONE!"
            }
            
        } else{
            timer.invalidate()
            progressBar.progress = 1.0
            timePassed = 0
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
}
