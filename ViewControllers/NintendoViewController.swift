//
//  MainTapViewController.swift
//  Playground
//
//  Created by 정지웅 on 2021/03/03.
//

import UIKit
import CoreLocation
import SwiftUI

class NintendoViewController: UIViewController {
    
    // MARK: - Var
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblBestTitle: UILabel!
    @IBOutlet weak var lblSwitch: UILabel!
    @IBOutlet weak var lblNintendo: UILabel!
    @IBOutlet weak var lblNintendoConsoles: UILabel!
    @IBOutlet weak var lblGotyGames: UILabel!
    @IBOutlet weak var ivMario: UIImageView!
    @IBOutlet weak var ivZelda: UIImageView!
    @IBOutlet weak var ivPokemon: UIImageView!
    @IBOutlet weak var ivNintendoSwitch: UIImageView!
    @IBOutlet weak var ivNESOne: UIImageView!
    @IBOutlet weak var ivNESTwo: UIImageView!
    @IBOutlet weak var ivNESThree: UIImageView!
    @IBOutlet weak var lblHomePage: UILabel!
    @IBOutlet var btnGoToHomePage: UIButton!
    
    let viewModel = NintendoViewModel()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setVar()
        setImageView()
    }
    
    //  MARK: - Set
    
    private func setVar() {
        lblTitle.text = "Nintendo"
        lblBestTitle.text = "What is Nintendo's best title?"
        lblSwitch.text = "Nintendo Switch"
        lblNintendo.text = "닌텐도란?"
        lblNintendoConsoles.text = "역대 게임기"
        lblGotyGames.text = "Goty 수상작"
        lblHomePage.text = "Nintendo Official Site"
        
        ivMario.image = viewModel.mainTitleImages[0]
        ivZelda.image = viewModel.mainTitleImages[1]
        ivPokemon.image = viewModel.mainTitleImages[2]
        ivNintendoSwitch.image = viewModel.mainTitleImages[3]
        ivNESOne.image = viewModel.mainTitleImages[4]
        ivNESTwo.image = viewModel.mainTitleImages[4]
        ivNESThree.image = viewModel.mainTitleImages[4]
    }
    
    private func setImageView() {
        ivMario.isUserInteractionEnabled = true
        ivZelda.isUserInteractionEnabled = true
        ivPokemon.isUserInteractionEnabled = true
        ivNintendoSwitch.isUserInteractionEnabled = true
        lblNintendo.isUserInteractionEnabled = true
        lblNintendoConsoles.isUserInteractionEnabled = true
        ivNintendoSwitch.layer.cornerRadius = 16.0
        
        ivMario.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToMarioDetail(sender:))))
        ivZelda.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToZeldaDetail(sender:))))
        ivPokemon.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPokemonDetail(sender:))))
        ivNintendoSwitch.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(popUpSwitchDetail(sender:))))
        lblNintendo.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToNintendoDetail(sender:))))
        lblNintendoConsoles.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToNConsoleView(sender:))))
        btnGoToHomePage.addTarget(self, action: #selector(goToOfficialHomePage), for: .touchUpInside)
    }
    
    // MARK: - Functions
    
    @objc
    func goToMarioDetail(sender: UITapGestureRecognizer) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MarioDetailViewController")
        self.present(vc!, animated: true, completion: nil)
    }
    
    @objc
    func goToZeldaDetail(sender: UITapGestureRecognizer) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ZeldaDetailViewController")
        self.present(vc!, animated: true, completion: nil)
    }
    
    @objc
    func goToPokemonDetail(sender: UITapGestureRecognizer) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PokemonDetailViewController")
        self.present(vc!, animated: true, completion: nil)
    }
    
    @objc
    func goToNintendoDetail(sender: UITapGestureRecognizer) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "NintendoDetailViewController")
        self.present(vc!, animated: true, completion: nil)
    }
    
    @objc
    func goToNConsoleView(sender: UITapGestureRecognizer) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "NConsoleViewController")
        self.present(vc!, animated: true, completion: nil)
    }
    
    @objc
    func popUpSwitchDetail(sender: UITapGestureRecognizer) {
        let alertController = UIAlertController(title: "닌텐도 스위치", message: "닌텐도의 8세대 게임기로, 최초의 하이브리드형 게임기입니다.",
                                                preferredStyle: .alert)
        let okButton = UIAlertAction(title: "확인", style: .default, handler: nil)
        alertController.addAction(okButton)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @objc
    func goToOfficialHomePage() {
        UIApplication.shared.open(viewModel.homepageURL, options: [:], completionHandler: nil)
    }
}
