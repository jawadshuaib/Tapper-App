//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Jawad Shuaib on 2016-10-10.
//  Copyright © 2016 Jawad Shuaib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    var maxTaps     = 0
    var currentTaps = 0
    
    
    // Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTaps: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinTapped (sender: UIButton!) {
        currentTaps += 1
        
        tapsLbl.text = "\(currentTaps) Taps"
        
        if currentTaps >= maxTaps {
        
            logoImg.isHidden = false
            howManyTaps.isHidden = false
            playBtn.isHidden = false
            
            tapBtn.isHidden = true
            tapsLbl.isHidden = true
            currentTaps = 0
            howManyTaps.text = "0"
        }
    }

    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        if howManyTaps.text != nil && howManyTaps.text != "" {
            
            logoImg.isHidden = true
            howManyTaps.isHidden = true
            playBtn.isHidden = true
            
            tapBtn.isHidden  = false
            tapsLbl.isHidden = false
            
            maxTaps = Int(howManyTaps.text!)!
            currentTaps = 0
            
            tapsLbl.text = "\(currentTaps) Taps"
        }
    }
}

