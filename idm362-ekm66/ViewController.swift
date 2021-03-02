//
//  ViewController.swift
//  idm362-ekm66
//
//  Created by Erik Martus on 1/19/21.
//

import UIKit

class ViewController: UIViewController {

    // Declare cuisine option buttons
    @IBOutlet weak var OptionAmerican: UIButton!
    @IBOutlet weak var OptionChinese: UIButton!
    @IBOutlet weak var OptionFrench: UIButton!
    @IBOutlet weak var OptionGreek: UIButton!
    @IBOutlet weak var OptionIndian: UIButton!
    @IBOutlet weak var OptionItalian: UIButton!
    @IBOutlet weak var OptionJapanese: UIButton!
    @IBOutlet weak var OptionMexican: UIButton!
    
    // Array of selected options
    var selectedOptions = ["American": false,
                           "Chinese" : false,
                           "French"  : false,
                           "Greek"   : false,
                           "Indian"  : false,
                           "Italian" : false,
                           "Japanese": false,
                           "Mexican" : false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do after load.
        
        // Set initial background color for buttons
        OptionAmerican.backgroundColor = .clear
        OptionChinese.backgroundColor = .clear
        OptionFrench.backgroundColor = .clear
        OptionGreek.backgroundColor = .clear
        OptionIndian.backgroundColor = .clear
        OptionItalian.backgroundColor = .clear
        OptionJapanese.backgroundColor = .clear
        OptionMexican.backgroundColor = .clear
    } // End viewDidLoad

    @IBAction func TapAmerican(_ sender: Any) {
        if OptionAmerican.backgroundColor == .clear {
            OptionAmerican.backgroundColor = UIColor(named: "AccentColor")
            OptionAmerican.setTitleColor(UIColor.white, for: .normal)
            selectedOptions["American"] = true
        }
        else if OptionAmerican.backgroundColor == UIColor(named: "AccentColor") {
            OptionAmerican.backgroundColor = .clear
            OptionAmerican.setTitleColor(UIColor.label, for: .normal)
            selectedOptions["American"] = false
        }
        print(selectedOptions)
    }
    
    @IBAction func TapChinese(_ sender: Any) {
        if OptionChinese.backgroundColor == .clear {
            OptionChinese.backgroundColor = UIColor(named: "AccentColor")
            OptionChinese.setTitleColor(UIColor.white, for: .normal)
            selectedOptions["Chinese"] = true
        }
        else if OptionChinese.backgroundColor == UIColor(named: "AccentColor") {
            OptionChinese.backgroundColor = .clear
            OptionChinese.setTitleColor(UIColor.label, for: .normal)
            selectedOptions["Chinese"] = false
        }
        print(selectedOptions)
    }
    
    @IBAction func TapFrench(_ sender: Any) {
        if OptionFrench.backgroundColor == .clear {
            OptionFrench.backgroundColor = UIColor(named: "AccentColor")
            OptionFrench.setTitleColor(UIColor.white, for: .normal)
            selectedOptions["French"] = true
        }
        else if OptionFrench.backgroundColor == UIColor(named: "AccentColor") {
            OptionFrench.backgroundColor = .clear
            OptionFrench.setTitleColor(UIColor.label, for: .normal)
            selectedOptions["French"] = false
        }
        print(selectedOptions)
    }
    
    @IBAction func TapGreek(_ sender: Any) {
        if OptionGreek.backgroundColor == .clear {
            OptionGreek.backgroundColor = UIColor(named: "AccentColor")
            OptionGreek.setTitleColor(UIColor.white, for: .normal)
            selectedOptions["Greek"] = true
        }
        else if OptionGreek.backgroundColor == UIColor(named: "AccentColor") {
            OptionGreek.backgroundColor = .clear
            OptionGreek.setTitleColor(UIColor.label, for: .normal)
            selectedOptions["Greek"] = false
        }
        print(selectedOptions)
    }
    
    
    @IBAction func TapIndian(_ sender: Any) {
        if OptionIndian.backgroundColor == .clear {
            OptionIndian.backgroundColor = UIColor(named: "AccentColor")
            OptionIndian.setTitleColor(UIColor.white, for: .normal)
            selectedOptions["Indian"] = true
        }
        else if OptionIndian.backgroundColor == UIColor(named: "AccentColor") {
            OptionIndian.backgroundColor = .clear
            OptionIndian.setTitleColor(UIColor.label, for: .normal)
            selectedOptions["Indian"] = false
        }
        print(selectedOptions)
    }
    
    @IBAction func TapItalian(_ sender: Any) {
        if OptionItalian.backgroundColor == .clear {
            OptionItalian.backgroundColor = UIColor(named: "AccentColor")
            OptionItalian.setTitleColor(UIColor.white, for: .normal)
            selectedOptions["Italian"] = true
        }
        else if OptionItalian.backgroundColor == UIColor(named: "AccentColor") {
            OptionItalian.backgroundColor = .clear
            OptionItalian.setTitleColor(UIColor.label, for: .normal)
            selectedOptions["Italian"] = false
        }
        print(selectedOptions)
    }
    
    @IBAction func TapJapanese(_ sender: Any) {
        if OptionJapanese.backgroundColor == .clear {
            OptionJapanese.backgroundColor = UIColor(named: "AccentColor")
            OptionJapanese.setTitleColor(UIColor.white, for: .normal)
            selectedOptions["Japanese"] = true
        }
        else if OptionJapanese.backgroundColor == UIColor(named: "AccentColor") {
            OptionJapanese.backgroundColor = .clear
            OptionJapanese.setTitleColor(UIColor.label, for: .normal)
            selectedOptions["Japanese"] = false
        }
        print(selectedOptions)
    }
    
    @IBAction func TapMexican(_ sender: Any) {
        if OptionMexican.backgroundColor == .clear {
            OptionMexican.backgroundColor = UIColor(named: "AccentColor")
            OptionMexican.setTitleColor(UIColor.white, for: .normal)
            selectedOptions["Mexican"] = true
        }
        else if OptionMexican.backgroundColor == UIColor(named: "AccentColor") {
            OptionMexican.backgroundColor = .clear
            OptionMexican.setTitleColor(UIColor.label, for: .normal)
            selectedOptions["Mexican"] = false
        }
        print(selectedOptions)
    }
    
} // End ViewController

