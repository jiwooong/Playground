//
//  NConsoleViewController.swift
//  Playground
//
//  Created by 정지웅 on 2021/03/30.
//

import UIKit

class NConsoleViewController: UIViewController {
    
    // MARK: - Var
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var lblTitle: UILabel!
    
//    var nConsoleImages = []
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        setStackView()
    }
    
    // MARK: - Set
    
    private func setVar() {
        lblTitle.text = "Here are Nintendo's Consoles"
    }
    
    private func setStackView() {
        for _ in 0...10 {
            if let consoleImageView = Bundle.main.loadNibNamed("ConsoleImageView", owner: nil, options: nil)!.first as? ConsoleImageView {
                consoleImageView.translatesAutoresizingMaskIntoConstraints = false
                consoleImageView.widthAnchor.constraint(equalToConstant: stackView.frame.height).isActive = true
                consoleImageView.ivConsole.image = UIImage(named: "mario-detail.jpg")
                stackView.addArrangedSubview(consoleImageView)
            }
        }
    }
}
