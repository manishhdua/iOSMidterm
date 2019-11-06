//
//  NextViewController.swift
//  Mid_term_2019
//
//  Created by Manish Dua on 2019-11-06.
//  Copyright © 2019 Manish Dua. All rights reserved.
//

import UIKit

import AVFoundation

class NextViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // Question - 11
        
        let slider = UISlider()
        slider.frame = CGRect(x: 0, y: 0, width: 250, height: 35)
        slider.center = self.view.center
        slider.maximumValue = 50
        slider.minimumValue = 0
        slider.setValue(25, animated: false)

        self.view.addSubview(slider)
    }
    
    @IBAction func backButton(_ sender: Any) {
        
        performSegue(withIdentifier: "backScreen", sender: self)
    }
    //Question - 12
    
    @IBAction func textToSpeech(_ sender: Any) {
        let utterance = AVSpeechUtterance(string: "Click and listen to this text")
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }

}
