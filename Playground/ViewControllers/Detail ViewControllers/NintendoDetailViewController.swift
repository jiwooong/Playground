//
//  NintendoDetailViewController.swift
//  Playground
//
//  Created by 정지웅 on 2021/03/15.
//

import UIKit
import MapKit

class NintendoDetailViewController: UIViewController {
    
    // MARK: - Var
    
    @IBOutlet weak var lblFirstTitle: UILabel!
    @IBOutlet weak var ivNintendo: UIImageView!
    @IBOutlet weak var tvNintendoDetail: UITextView!
    @IBOutlet weak var lblSecondTitle: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setVar()
        setMapView()
    }
    
    // MARK: - Set
    
    private func setVar() {
        lblFirstTitle.text = "What is Nintendo Company?"
        lblSecondTitle.text = "Where is Nintendo Company?"
        
        ivNintendo.image = UIImage(named: "nintendo-logo")
        ivNintendo.layer.cornerRadius = 16.0
        tvNintendoDetail.text = " 닌텐도 주식회사(일본어: 任天堂株式会社, 영어: Nintendo Co., Ltd.)는 일본의 교토 시에 본사를 둔 가전제품·비디오 게임 회사이다. 닌텐도는 마리오 시리즈, 젤다의 전설, 포켓몬스터, 동물의 숲과 같은 널리 알려진 프랜차이즈 게임을 생산했고, 전 세계의 비디오 게임 전문 회사 가운데 시가총액이 가장 큰 기업이다.\n\n 1889년 9월 23일 야마우치 후사지로가 화투 제조 회사로 설립한 것으로 시작되었으며, 1963년까지 운송업이나 러브 호텔 등 틈새 시장을 노렸으나 성공을 거두지 못했다. 1960년대 들어서는 일본의 완구 회사인 울트라핸드와 협력하여 완구 사업에 총력을 기울이기 시작했고 그 외의 다른 사업에서 손을 떼게 되었다. 1970년대부터는 비디오 게임 회사로 변모하였고, 지금까지 이어져 오고 있다."
    }
    
    private func setMapView() {
        let location = CLLocationCoordinate2D(latitude: 37.502009, longitude: 127.037296)
        let annotation = MKPointAnnotation()
        
        mapView.layer.cornerRadius = 16.0
        mapView.setCenter(location, animated: true)
        annotation.coordinate = location
        annotation.title = "Nintendo"
        mapView.addAnnotation(annotation)
        mapView.setCamera(MKMapCamera(lookingAtCenter: location, fromDistance: CLLocationDistance(1000), pitch: 0, heading: CLLocationDirection(1)),
                          animated: true)
        mapView.isZoomEnabled = true
    }
}
