//
//  ViewController.swift
//  ShameBell
//
//  Created by Walter Galan on 6/17/16.
//  Copyright © 2016 Walter Galan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
 
 
 @IBOutlet weak var photoImageView: UIImageView!
 
 // Create a place to render the image
 let context = CIContext(options: nil)
 
 var shameSound : AVAudioPlayer?
 
 func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer? {
  let path = NSBundle.mainBundle().pathForResource(file as String, ofType: type as String)
  let url = NSURL.fileURLWithPath(path!)
  
  var audioPlayer:AVAudioPlayer?
  
  do {
   try audioPlayer = AVAudioPlayer(contentsOfURL: url)
  } catch {
    print("Player not available")
    }
  
   return audioPlayer
  }
 
 override func viewDidLoad() {
  super.viewDidLoad()
  // Do any additional setup after loading the view, typically from a nib.
  
  if let shameSound = self.setupAudioPlayerWithFile("dingshame", type: "mp3") {
   self.shameSound = shameSound
  }
 }

 @IBAction func playShame(sender: AnyObject) {
  shameSound?.play()
 }
 
 // Bar Button item, not yet implemented
 @IBAction func shameSound(sender: AnyObject) {
  
  shameSound?.play()
 }
 override func didReceiveMemoryWarning() {
  super.didReceiveMemoryWarning()
  // Dispose of any resources that can be recreated.
 }


}

