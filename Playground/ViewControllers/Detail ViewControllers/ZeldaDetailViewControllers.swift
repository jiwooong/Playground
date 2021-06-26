//
//  ZeldaDetailViewControllers.swift
//  Playground
//
//  Created by 정지웅 on 2021/03/11.
//

import UIKit

class ZeldaDetailViewController: UIViewController {
    
    // MARK: - Var
    
    @IBOutlet weak var ivBackgroundImages: UIImageView!
    @IBOutlet weak var ivMainImage: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tvContents: UITextView!
    @IBOutlet weak var ivLink: UIImageView!
    
    let detailImages = [UIImage(named: "zelda-detail.jpg")!, UIImage(named: "zelda-detail2.png")!, UIImage(named: "zelda-detail3.jpg")!]
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
        lblTitle.text = "젤다의 전설"
        tvContents.text = "젤다의 전설 (일본어: ゼルダの伝説, 영어: The Legend of Zelda)은 닌텐도의 게임 디자이너인 미야모토 시게루와 테즈카 타카시가 만들고 닌텐도가 배급한 액션 어드벤처 게임 시리즈이다. 게임플레이는 액션, 어드벤처, 퍼즐, 롤플레잉을 섞은 형식으로 이루어져있다. 주인공인 링크가 이 시리즈의 최종 보스인 가논돌프에게서 젤다와 하이랄 성을 구하는 것과 무한한 힘을 가진 유물인 트라이포스와 관련한 이야기가 주 이야기다. (게임보이 어드밴스 플랫폼에서 출시된 게임에서는 바티가 최종 보스를 맡기도 했다.) 트라이포스는 세가지 힘을 상징하며, 이 중 링크는 용기의 트라이포스, 젤다는 지혜의 트라이포스, 가논돌프는 힘의 트라이포스를 가지고 있다. 각 게임에서의 주인공 링크는 같은 생애를 가지고 있지 않으나, 일부 예외가 존재한다.\n\n2010년 4월을 기준으로, 젤다의 전설 시리즈는 첫번째 게임인 젤다의 전설 출시 이후 5천 9백만장을 팔았으며[1], 첫 작은 NES 소프트웨어 중 4번째로 가장 많이 팔린 것으로 기록되었다.[2] 이 시리즈는 15개의 닌텐도 하드웨어 기반의 공식 소프트웨어가 있으며, 여러가지 외전도 존재하고 있다. 북미 지역에서는 1989년에 해당 게임을 바탕으로 한 애니메이션 시리즈를 방영, 제작하였으며, 일본에서는 여러 만화책도 제작되었다. 이 시리즈의 최신작은 닌텐도 Wii U, 스위치 기반으로 젤다의 전설 브레스 오브 더 와일드가 2017년 3월 3일(일본 기준)에 출시되었다."
    }
    
    private func setImageView() {
        ivBackgroundImages.image = detailImages[0]
        ivLink.image = UIImage(named: "link-detail.png")
        ivMainImage.layer.cornerRadius = ivMainImage.frame.height * 0.5
        ivMainImage.layer.borderWidth = 4
        ivMainImage.layer.borderColor = UIColor.lightGray.cgColor
        ivMainImage.backgroundColor = .white
        ivMainImage.clipsToBounds = true
        ivMainImage.image = UIImage(named: "zelda-main.png")
        
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(imageTransition), userInfo: nil, repeats: true)
    }
    
    private func setSoundPlayer() {
        Sound.playAudio(soundFile: "zelda-opening.mp3")
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
