//
//  NintendoViewModel.swift
//  Playground
//
//  Created by jiwoong on 2021/08/06.
//

import Foundation
import CoreLocation
import SwiftUI

public class NintendoViewModel {
    private let nintendo: NintendoModel
    
    public init() {
        self.nintendo = NintendoModel()
    }
    
    public var mainTitleImages: [UIImage] {
        return nintendo.mainTitleImages ?? [UIImage]()
    }
    
    public var consoleTitles: [String] {
        return nintendo.consoleTitles ?? [String]()
    }
    
    public var consoleImages: [Image] {
        return nintendo.consoleImages ?? [Image]()
    }
    
    public var homepageURL: URL {
        return URL(string: nintendo.homepageURL ?? "") ?? URL(string: "https://www.nintendo.co.kr")!
    }
    
    public var location: CLLocationCoordinate2D {
        return nintendo.location ?? CLLocationCoordinate2D()
    }
}
