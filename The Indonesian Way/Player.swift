//
//  Player.swift
//  The Indonesian Way
//
//  Created by Kai Patrick Jung on 27.08.16.
//  Copyright © 2016 Kai Patrick Jung. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit // NSDataAsset

protocol PlayerDelegate : class {
    func soundFinished(sender: AnyObject)
}

class Player : NSObject, AVAudioPlayerDelegate {
    var player : AVAudioPlayer!
    weak var delegate : PlayerDelegate?
    
    func playFileAtPath(path: String) {
        self.player?.delegate = nil
        self.player?.stop()
        
        
        let myPath = NSBundle.mainBundle().URLForResource(path, withExtension: "mp3")
        guard let p = try? AVAudioPlayer(contentsOfURL: myPath!, fileTypeHint: "mp3")
            else {return}
        
//        let fileURL = NSURL(fileURLWithPath: path)
//        guard let p = try? AVAudioPlayer(contentsOfURL: fileURL)
//            else {return}
        self.player = p
        self.player.prepareToPlay()
        self.player.delegate = self
        self.player.play()
    }
    
    func playFileInAssetCatalog(nameOfAudioFileInAssetCatalog: String) {
        self.player?.delegate = nil
        self.player?.stop()
        
        if let sound = NSDataAsset(name: nameOfAudioFileInAssetCatalog) {
            guard let p = try? AVAudioPlayer(data: sound.data) //, fileTypeHint: AVFileTypeMPEGLayer3)
                else {return}
            self.player = p
            self.player.prepareToPlay()
            self.player.delegate = self
            self.player.play()
        }
        
    }
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool) {
        self.delegate?.soundFinished(self)
    }
    
  
    
    
    func playSound(nameOfAudioFileInAssetCatalog: String) {
        
        if let sound = NSDataAsset(name: nameOfAudioFileInAssetCatalog) {
            do {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                try player = AVAudioPlayer(data: sound.data, fileTypeHint: AVFileTypeMPEGLayer3)
                player!.play()
            } catch {
                print("error initializing AVAudioPlayer")
            }
        }
    }
    
}