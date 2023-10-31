//
//  ViewController.swift
//  stereoBuddy
//
//  Created by Ilyas Davis on 10/11/23.
//
var genre = ""
var albumArt = ""
var currentlyPlaying = ""
import UIKit

class ViewController: UIViewController {

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func firstGenre(_ sender: UIButton) {
        genre = "Rock"
        performSegue(withIdentifier: "goGenre", sender: nil)
        
    }
    
    @IBAction func secondGenre(_ sender: UIButton) {
        genre = "R&B"
        performSegue(withIdentifier: "goGenre", sender: nil)
    }
    
    @IBAction func thirdGenre(_ sender: UIButton) {
        genre = "Rap"
        performSegue(withIdentifier: "goGenre", sender: nil)
    }
    
    @IBAction func fourthGenre(_ sender: UIButton) {
        genre = "Indie Pop"
        performSegue(withIdentifier: "goGenre", sender: nil)
    }
    
    @IBAction func playRecommended1(_ sender: UIButton) {
        playSound(whatSound: "Mitski - My Love Mine All Mine")
        currentlyPlaying = "Mitski - My Love Mine All Mine"
        albumArt = "mitskiAlbumCover"
        performSegue(withIdentifier: "goPreview", sender: nil)
    }
    
    @IBAction func pauseRecommended1(_ sender: UIButton) {
        musicPlayer.pause()
    }
    
    @IBAction func playRecommended2(_ sender: UIButton) {
        playSound(whatSound: "Anybody")
        currentlyPlaying = "Anybody"
        albumArt = "anybodyAlbumCover"
        performSegue(withIdentifier: "goPreview", sender: nil)
    }
    
    
    @IBAction func pauseRecommended2(_ sender: UIButton) {
            musicPlayer.pause()
        }
    
    
        
    }

 func stop(sender: UIButton) {
          musicPlayer.stop()
     }


