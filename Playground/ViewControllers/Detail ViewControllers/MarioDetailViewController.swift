//
//  MarioDetailViewController.swift
//  Playground
//
//  Created by 정지웅 on 2021/03/06.
//

import UIKit

class MarioDetailViewController: UIViewController {
    
    // MARK: -  Var
    
    @IBOutlet weak var ivBackgroundImages: UIImageView!
    @IBOutlet weak var ivMainImage: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tvContents: UITextView!
    @IBOutlet weak var ivMush: UIImageView!
    
    let detailImages = [UIImage(named: "mario-detail.jpg")!, UIImage(named: "mario-detail2.jpg")!, UIImage(named: "mario-detail3.png")!]
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
        lblTitle.text = "슈퍼마리오"
        tvContents.text = "‘마리오’는 세상에서 둘째가라면 서러워 할 최강 캐릭터다. 빨간 모자에 멜빵바지, 콧수염을 한 이 이탈리아 배관공은 ‘미키마우스’, ‘포켓몬스터’, ‘심슨’과 함께 지구촌에서 가장 사랑 받는 캐릭터다. [슈퍼마리오 브라더스(이하 슈퍼마리오)]는 쿠파에게 잡혀간 공주를 구하기 위한 마리오의 여정을 담은 게임이다. [미녀와 야수]에서 모티브를 따온 이 게임은 데뷔 후 약 30여 년이 지난 지금까지도 지구촌 게이머들을 ‘공주 구하기’에서 헤어나지 못하게 하고 있다.\n\n마리오가 처음 등장한 것은 미야모토 시게루(宮本茂)의 첫 작품 [동키콩]에서다. 닌텐도는 미국 진출을 위해 당시 인기였던 뽀빠이 캐릭터를 판권을 사려고 했으나 거절당했다. 뽀빠이 대신 그가 직접 디자인하고 창조한 캐릭터가 마리오다. 만약 닌텐도가 그때 뽀빠이 캐릭터 판권을 샀더라면 결코 [슈퍼마리오]는 탄생되지 못했을 것이다. 어쩌면 지금의 닌텐도 역시 없었을지도 모른다."
    }
    
    private func setImageView() {
        ivBackgroundImages.image = detailImages[0]
        ivMush.image = UIImage(named: "mario-mush.png")
        ivMainImage.layer.cornerRadius = ivMainImage.frame.height * 0.5
        ivMainImage.layer.borderWidth = 4
        ivMainImage.layer.borderColor = UIColor.lightGray.cgColor
        ivMainImage.backgroundColor = .white
        ivMainImage.clipsToBounds = true
        ivMainImage.image = UIImage(named: "mario-main.png")
        
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(imageTransition), userInfo: nil, repeats: true)
    }
    
    private func setSoundPlayer() {
        Sound.playAudio(soundFile: "mario-opening.mp3")
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
