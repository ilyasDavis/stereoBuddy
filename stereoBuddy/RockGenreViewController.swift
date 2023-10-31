//
//  RockGenreViewController.swift
//  stereoBuddy
//
//  Created by Ilyas Davis on 10/11/23.
//

import UIKit

class RockGenreViewController: UIViewController {
    
    @IBOutlet weak var genreImage: UIImageView!
    
    
    @IBOutlet weak var genreTitle: UILabel!
    
    @IBOutlet weak var song1: UILabel!
    
    @IBOutlet weak var song2: UILabel!
    
    @IBOutlet weak var song3: UILabel!
    
    @IBOutlet weak var song4: UILabel!
    
    @IBOutlet weak var songCover1: UIImageView!
    
    @IBOutlet weak var songCover2: UIImageView!
    
    @IBOutlet weak var songCover3: UIImageView!
    
    @IBOutlet weak var songCover4: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        genreTitle.text = genre
        loadSongs()
    }
    
    func loadSongs(){
        if genre == "Rock" {
            song1.text = "Sex,Drugs,etc."
            songCover1.image = UIImage(named: "SDetc")
            song2.text = "Everlong"
            songCover2.image = UIImage(named: "everlongCover")
            song3.text = "SMBH"
            songCover3.image = UIImage(named: "smbhCover")
            song4.text = "Borderline"
            songCover4.image = UIImage(named: "borderlineCover")
        } else if genre == "R&B"{
            song1.text = "R&B song"
        } else if genre == "Rap"{
            song1.text = "Rap song"
        } else {
            song1.text = "Indie song"
        }
    }
        
        @IBAction func playSong1(_ sender: UIButton) {
            if genre == "Rock"{
                playSound(whatSound: "Sex Drugs Etc")
                currentlyPlaying = "Sex, Drugs, Etc."
                albumArt = "SDetc"
                performSegue(withIdentifier: "goSongPreview", sender: nil)
            }
        }
        
        @IBAction func playSong2(_ sender: UIButton) {
            if genre == "Rock"{
                playSound(whatSound: "everlong")
                currentlyPlaying = "Everlong"
                albumArt = "everlongCover"
            }
            performSegue(withIdentifier: "goSongPreview", sender: nil)
        }
        
        @IBAction func playSong3(_ sender: UIButton) {
            if genre == "Rock"{
                playSound(whatSound: "smbh")
                currentlyPlaying = "Supermassive Black Hole"
                albumArt = "smbhCover"
            }
            performSegue(withIdentifier: "goSongPreview", sender: nil)
        }
        
        @IBAction func playSong4(_ sender: UIButton) {
            if genre == "Rock"{
                playSound(whatSound: "borderline")
                currentlyPlaying = "Borderline"
                albumArt = "borderlineCover"
            }
            performSegue(withIdentifier: "goSongPreview", sender: nil)
        }
        
        
        
    
}
