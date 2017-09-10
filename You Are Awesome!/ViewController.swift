//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Michelle Krameisen on 8/27/17.
//  Copyright © 2017 Krameisen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
   var awesomePlayer = AVAudioPlayer()
   var index = -1
   var imageNumber = -1
   var soundNumber = -1
   let numberOfImages = 4
   let numberOfSounds = 4
    
    
    //this code executes when the view controller loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Fantastic!!!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "When the Genius Bar needs help, they call you!",
                        "You brighten my day!", "You Are Da Bomb!", "I can't wait to use your app!", "Fabulous? That's you!" ]
        
        var newIndex = -1

        // Show a message
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(messages.count)))
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        awesomeImage.isHidden = false //Show an image
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(numberOfImages)))
        } while imageNumber == newIndex
        
        
        imageNumber = newIndex
        awesomeImage.image = UIImage(named: "image\(imageNumber)")
        
        // Get a random number to use in our soundName file
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(numberOfSounds)))
        } while soundNumber == newIndex
    
        soundNumber = newIndex
        
        //Play a sound
        var soundName = "sound\(soundNumber)"
        
        // Can we load in the file soundName?
        if let sound = NSDataAsset(name: soundName) {
            // check if sound.data is a sound file
            do {
            try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                // if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) couldn't be played as a sound.")
            }
            
        } else {
            // if reading in the NSDataAsset didn't work, tell the user / report the error.
            print("ERROR: file\(soundName) didn't load.")
        }
      
        
        
    }
        
}
//        var randomIndex =
//            Int(arc4random_uniform(UInt32(messages.count)))
//        messageLabel.text = messages[randomIndex]
        
        
//        messageLabel.text = messages[index]
//        index = index + 1
//
//        if index == messages.count {
//            index = 0
//        }
        
//        let message1 = "You Are Fantastic!!!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2  {
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }


