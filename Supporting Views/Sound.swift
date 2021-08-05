//
//  Sound.swift
//  Playground
//
//  Created by 정지웅 on 2021/03/11.
//

import AVFoundation

class Sound {
    static var player: AVAudioPlayer?
    
    static func playAudio(soundFile: String) {
        if let path = Bundle.main.path(forResource: soundFile, ofType: nil) {
            do {
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                player?.prepareToPlay()
                player?.play()
            } catch {
                print("Sound Error!")
            }
        }
    }
}
