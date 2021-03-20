//
//  ResultViewController.swift
//  idm362-ekm66
//
//  Created by Erik Martus on 3/1/21.
//

import UIKit
// Add audio and video library
import AVFoundation

class ResultViewController: UIViewController {

    @IBOutlet weak var cuisineImage: UIImageView!
    @IBOutlet weak var cuisineLabel: UILabel!
    
    var cuisineType:String = "Chinese"
    
    var selected = [String]()
    
    var audPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(selected)
        updateInfo(cuisine: cuisineType)
        let soundTada = Bundle.main.path(forResource: "sounds/tada", ofType: "mp3")
        
        do {
            audPlayer = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundTada!))
            audPlayer.prepareToPlay()
            print("Sound file loaded and prepped")
            audPlayer.play()
        } catch {
            print(error)
        }
    }
    
    // Change flag image and text to match selected cuisine
    func updateInfo(cuisine: String) {
        cuisineLabel.text = "\(cuisine)!"
        
        switch cuisine {
        case "American":
            cuisineImage.image = UIImage(named: "flag_us.svg")
        case "Chinese":
            cuisineImage.image = UIImage(named: "flag_china.svg")
        case "French":
            cuisineImage.image = UIImage(named: "flag_france.svg")
        case "Greek":
            cuisineImage.image = UIImage(named: "flag_greece.svg")
        case "Indian":
            cuisineImage.image = UIImage(named: "flag_india.svg")
        case "Italian":
            cuisineImage.image = UIImage(named: "flag_italy.svg")
        case "Japanese":
            cuisineImage.image = UIImage(named: "flag_japan.svg")
        case "Mexican":
            cuisineImage.image = UIImage(named: "flag_mexico.svg")
        default:
            cuisineImage.image = UIImage(named: "flag_us.svg")
        }
    }
    
    // btn: "Show me places!"
    @IBAction func findRestBtn(_ sender: Any) {
        let cuisine:String = cuisineLabel.text!
        print(cuisine.dropLast())
        guard let url = URL(string: "https://www.google.com/search?q=\(cuisine.dropLast())+restaurants+near+me") else {
            return
        }
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    // btn: "Hmm... Not feeling it"
    @IBAction func rerollBtn(_ sender: Any) {
        updateInfo(cuisine: selected.randomElement()!)
        
        // stop audio if playing and restart from beginning
        if (audPlayer.isPlaying) {
            audPlayer.stop()
        }
        audPlayer.currentTime = 0
        audPlayer.play()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
