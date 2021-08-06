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
        return nintendo.title
    }
    
    public var titleImage: UIImage {
        return nintendo.titleImage
    }
    
    public var titleDescription: String {
        return nintendo.titleDescription
    }
    
    public var shoppingURL: URL {
        return URL(string: nintendo.shoppingURL) ?? URL(string: "https://www.nintendo.co.kr")!
    }
    
    public var location: CLLocationCoordinate2D {
        return nintendo.location
    }
}
