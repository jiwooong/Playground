//
//  NintendoViewModel.swift
//  Playground
//
//  Created by jiwoong on 2021/08/06.
//

import Foundation
import CoreLocation

public class NintendoViewModel {
    private let nintendo: NintendoModel
    
    public init(nintendo: NintendoModel) {
        self.nintendo = nintendo
    }
    
    public var title: String {
        return nintendo.title ?? ""
    }
    
    public var titleImage: UIImage {
        return nintendo.titleImage ?? UIImage()
    }
    
    public var titleDescription: String {
        return nintendo.titleDescription ?? ""
    }
    
    public var homepageURL: URL {
        return URL(string: nintendo.homepageURL ?? "") ?? URL(string: "https://www.nintendo.co.kr")!
    }
    
    public var location: CLLocationCoordinate2D {
        return nintendo.location ?? CLLocationCoordinate2D()
    }
}
