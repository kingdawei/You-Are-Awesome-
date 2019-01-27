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
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        index = newIndex
        messageLabel.text = messages[index]
        
        //showing Image
        repeat{
            newIndex = Int.random(in: 0..<numberOfImages)
        }while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        
        //showing sound
        repeat{
            newIndex = Int.random(in: 0..<numberOfSounds)
        }while soundIndex == newIndex

        soundIndex = newIndex
        
        var soundName = "sound\(soundIndex)"
        
        if let sound = NSDataAsset(name: soundName){
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            }catch{
                print("Error: data in \(soundName) couldn't be played as a sound.")
            }
        }else{
            print("Error: file \(soundName) didn't load")
        }
//        messageLabel.text = messages.randomElement()!
        
//        messageLabel.text = messages[index]
//
//        if index == messages.count - 1 {
//            index = 0
//        } else {
//            index += 1
//        }
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }
    }

}


