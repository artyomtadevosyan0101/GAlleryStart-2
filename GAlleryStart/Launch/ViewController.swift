//
//  ViewController.swift
//  GAlleryStart
//
//  Created by Artyom on 14.01.22.
//


import UIKit
import AVFoundation
class ViewController: UIViewController {
  var player: AVPlayer?
  override func viewDidLoad() {
    super.viewDidLoad()
    backgroundLogo()
  }
  func backgroundLogo () {
    let path = Bundle.main.path(forResource: "gallery", ofType: "mp4")
    player = AVPlayer(url: URL(fileURLWithPath: path!))
    player?.actionAtItemEnd = AVPlayer.ActionAtItemEnd.none
    let playerLayer = AVPlayerLayer(player: player)
    playerLayer.frame = self.view.frame
    playerLayer.videoGravity = .resizeAspect
    self.view.layer.insertSublayer(playerLayer, at: 0)
    NotificationCenter.default.addObserver(self, selector: #selector(playerItemDidReachEnd), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player?.currentItem)
    player?.seek(to: CMTime.zero)
    player?.play()
    self.player?.isMuted = true
  }
  @objc func playerItemDidReachEnd() {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
    vc.modalPresentationStyle = .overFullScreen
    vc.modalTransitionStyle = .flipHorizontal
    self.present(vc, animated: true, completion: nil)
  }
}
