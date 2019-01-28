//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Kim, David on 2019. 1. 18..
//  Copyright © 2019 David Kim. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 3
    let numberOfSounds = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }
    
    func playSound(soundName: String){
        if let sound = NSDataAsset(name: soundName){
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch{
                print("ERROR: data in \(soundName) couldn't be played")
            }
        }else{
            print("ERROR: file \(soundName) didn't load")
        }
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
       
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the Genius Bar needs help, they call you",
                        "You brighten my day!",
                        "You da bomb!",
                        "Hey, fabulous",
                        "You are tremendous!",
                        "You've got the design skills of Jony Ive!", "I can't wait to download your app!"]
        
        
        //showing message
        
        
        
      
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //showing Image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //get random # to use in soundName file
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
        //play a sound
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName)
    }

}


