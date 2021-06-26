//
//  PokemonDetailViewController.swift
//  Playground
//
//  Created by 정지웅 on 2021/03/12.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    // MARK: -  Var
    
    @IBOutlet weak var ivBackgroundImages: UIImageView!
    @IBOutlet weak var ivMainImage: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tvContents: UITextView!
    @IBOutlet weak var ivMonsterBall: UIImageView!
    
    let detailImages = [UIImage(named: "pokemon-detail.jpg")!, UIImage(named: "pokemon-detail2.jpg")!, UIImage(named: "pokemon-detail3.jpg")!]
    var timer = Timer()
    var imageCount = 0
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setVar()
        setImageView()
        setSoundPlayer()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        Sound.player?.stop()
    }
    
    // MARK: - Set
    
    private func setVar() {
        lblTitle.text = "포켓몬스터"
        tvContents.text = "‘재미있는 생물을 만들자!' 포켓몬스터는 게임프리크의 사장인 다지리의 6년간의 산고끝에 낳은 결실이다.지금의 포켓몬스터의 디자인이 나오기까지 약 300여가지의 스케치가 그려져 사내 인기투표까지 하면서 다시 그려낸 150개의 포켓몬을 엄선하게 되었다. 1996년 2월에 처음 발매를 시작한 포켓몬스터는 초등학교 4~6학년의 아이들 사이에 큰 인기를 얻게 되었다. 포켓몬스터는 지금의 32비트, 64비트 게임에서 유행하는 복잡한 게임과는 다른 8비트 미니켐보이의 단순한 게임이다. 플레이어는 여러가지 이벤트를 빠져나가면서 게임필드 상에서 150여마리의 포켓몬이라 불리는 작은 몬스터들을 모아 ‘포켓몬 도감'의 완성을 해나가는 곳이다.\n\n다시 말해 다마고치와 같은 육성게임에 RPG의 요소를 포함한 것이다. 왜 그토록 많은 아이들이 이런 단순한 게임인 포켓몬스터에 빠져드는가. 많은 이들이 거론하는 것으로는 ‘캐릭터가 무척 귀엽다', ‘성장해 가는 것이 즐겁다', ‘잡아내거나 교환하는 것이 가능하다', ‘캐릭터 형태나 포즈가 멋지다', ‘진화한다, 잡을수 있다, 라이벌이 있다', ‘여러 포켓몬과 만날 수 있고 레벨이 오르면 점점 강해진다' 등등 여러가지 의견이 있다. 하지만 무엇보다도 매력적인 점이 있다면 포켓몬에 자신의 이름을 새겨넣을 수 있어서 그것으로 친구의 이름을 기억하거나 커뮤니케이션툴의 역할을 하게 되는 것 아닐까. 게임은 더 이상 폐쇄적인 놀이가 아니라는 것을 보여주는 대표적인 사례라 하겠다."
    }
    
    private func setImageView() {
        ivBackgroundImages.image = detailImages[0]
        ivMonsterBall.image = UIImage(named: "pokeball-main.png")
        ivMainImage.layer.cornerRadius = ivMainImage.frame.height * 0.5
        ivMainImage.layer.borderWidth = 4
        ivMainImage.layer.borderColor = UIColor.lightGray.cgColor
        ivMainImage.backgroundColor = .white
        ivMainImage.clipsToBounds = true
        ivMainImage.image = UIImage(named: "pokemon-main.png")
        
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(imageTransition), userInfo: nil, repeats: true)
    }
    
    private func setSoundPlayer() {
        Sound.playAudio(soundFile: "pokemon-opening.mp3")
    }
    
    // MARK: - Functions
    
    @objc
    func imageTransition() {
        if (imageCount < detailImages.count - 1) {
            imageCount += 1
        } else {
            imageCount = 0
        }
        
        UIView.transition(with: self.ivBackgroundImages, duration: 3.0, options: .transitionCrossDissolve, animations: {
            self.ivBackgroundImages.image = self.detailImages[self.imageCount]
        }, completion: nil)
    }
}
