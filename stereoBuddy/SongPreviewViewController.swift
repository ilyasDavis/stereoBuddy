//
//  SongPreviewViewController.swift
//  stereoBuddy
//
//  Created by Ilyas Davis on 10/12/23.
//

import UIKit

var mute = false


class SongPreviewViewController: UIViewController {
   
    
    @IBOutlet weak var albumCover: UIImageView!
    
    @IBOutlet weak var songTitle: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albumCover.image = UIImage(named: albumArt)
        songTitle.text = currentlyPlaying
    }
    


    
    @IBAction func playSong(_ sender: Any) {
//        playSound(whatSound: "Mitski - My Love Mine All Mine")
        playSound(whatSound: currentlyPlaying)
        albumCover.image = UIImage(named: albumArt)
        songTitle.text = currentlyPlaying
    }
    
    @IBAction func pauseSong(_ sender: UIButton) {
        musicPlayer.stop()
            }
    
    @IBAction func muteTapped(_ sender: UISwitch) {
        if sender.isOn {
            musicPlayer.volume = 0
        } else {
            musicPlayer.volume = 1
        }
    }
    
    
    @IBAction func volumeSlider(_ sender: UISlider) {
        musicPlayer.volume =
        sender.value
    }
    
}
