import UIKit
import AVFoundation
import AVKit

class UnitViewController: UIViewController {
    var unit : Unit?
    
    var player = AVAudioPlayer()
    var timer : NSTimer?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let currentUnit = unit {
            self.title = currentUnit.title
            if let audio : String? = currentUnit.audioNames[0] {
                let myPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(audio, ofType: "mp3")!)
                player = try! AVAudioPlayer(contentsOfURL: myPath)
                audioSlider.maximumValue = Float(player.duration)
                
                timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(UnitViewController.updateSlider), userInfo: nil, repeats: true)
            }
        }

    }
    
    @IBOutlet weak var audioSlider: UISlider!
    @IBOutlet weak var playPauseButton: UIButton!

    @IBAction func stop(sender: AnyObject) {
        player.stop()
        player.currentTime = 0
        
        playPauseButton.setTitle("Play", forState: .Normal)
    }
    
    @IBAction func playPause(sender: UIButton) {
        if player.playing {
            player.pause()
            playPauseButton.setTitle("Play", forState: .Normal)
        } else {
            player.play()
            playPauseButton.setTitle("Pause", forState: .Normal)
        }
    }
    
    @IBAction func changeAudioTime(sender: UISlider) {
        player.stop()
        player.currentTime = NSTimeInterval(audioSlider.value)
        player.prepareToPlay()
        player.play()
    }

//    @IBAction func editingDidEnd(sender: AnyObject) {
//        player.stop()
//        player.currentTime = NSTimeInterval(audioSlider.value)
//        player.prepareToPlay()
//        player.play()
//        updateAudioSlider = true
//        print("editingDidEnd")
//    }
//    
//    @IBAction func editingDidBegin(sender: AnyObject) {
//        updateAudioSlider = false
//        print("editingDidBegin")
//    }
    
    func updateSlider() {
        if !audioSlider.highlighted {
            audioSlider.value = Float(player.currentTime)
        }
    }
}
