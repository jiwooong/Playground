//
//  ViewController.swift
//  Playground
//
//  Created by 정지웅 on 2021/03/02.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let animationView = AnimationView(name: "24219-controller")
        animationView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        animationView.loopMode = .loop
        
        view.addSubview(animationView)
        
        animationView.play()
        Sound.playAudio(soundFile: "nds-startup.mp3")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainTapView") else { return }
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        Sound.player?.stop()
    }

}

