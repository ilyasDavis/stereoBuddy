//
//  soundPlayer.swift
//  ArrayWithSlider
//
//  Created by Derek Fitzer on 9/25/23.
//

import Foundation
import AVFoundation

var musicPlayer = AVAudioPlayer()
var sfxPlayer = AVAudioPlayer()


func playSound(whatSound: String){
        //print(sender.tag) // testing button pressed tag
        let path = Bundle.main.path(forResource: whatSound, ofType : "wav")!
        let url = URL(fileURLWithPath : path)
        do {
            musicPlayer = try AVAudioPlayer(contentsOf: url)
            musicPlayer.play()
        } catch {
            print ("There is an issue with player 1")
        }
    }

func playSFX(whatSound: String){
        //print(sender.tag) // testing button pressed tag
        let path = Bundle.main.path(forResource: whatSound, ofType : "wav")!
        let url = URL(fileURLWithPath : path)
        do {
            sfxPlayer = try AVAudioPlayer(contentsOf: url)
            sfxPlayer.play()
        } catch {
            print ("There is an issue with player 2")
        }
    }
