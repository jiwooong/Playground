//
//  NConsoleViewController.swift
//  Playground
//
//  Created by 정지웅 on 2021/03/30.
//

import UIKit
import SwiftUI
import CoreLocation

class NConsoleViewController: UIViewController {
    
    // MARK: - Var
    
    let consolesView = UIHostingController(rootView: ConsolesView())
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addChild(consolesView)
        self.view.addSubview(consolesView.view)
        setConstraints()
    }
    
    // MARK: - Set
    
    private func setConstraints() {
        consolesView.view.translatesAutoresizingMaskIntoConstraints = false
        consolesView.view.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        consolesView.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        consolesView.view.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        consolesView.view.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
    }
    
//    private func setStackView() {
//        for _ in 0...10 {
//            if let consoleImageView = Bundle.main.loadNibNamed("ConsoleImageView", owner: nil, options: nil)!.first as? ConsoleImageView {
//                consoleImageView.translatesAutoresizingMaskIntoConstraints = false
//                consoleImageView.widthAnchor.constraint(equalToConstant: stackView.frame.height).isActive = true
//                consoleImageView.ivConsole.image = UIImage(named: "mario-detail.jpg")
//                stackView.addArrangedSubview(consoleImageView)
//            }
//        }
//    }
}
