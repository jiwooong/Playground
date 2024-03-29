//
//  NintendoModel.swift
//  Playground
//
//  Created by jiwoong on 2021/08/06.
//

import Foundation
import CoreLocation
import SwiftUI

public class NintendoModel: ObservableObject {
    public let mainTitleImages: [UIImage]?
    public let consoleTitles: [String]?
    public let consoleImages: [Image]?
    public let homepageURL: String?
    public let location: CLLocationCoordinate2D?
    
    public init(mainTitleImages: [UIImage]? = [UIImage(named: "mario-main")!,
                                               UIImage(named: "zelda-main")!,
                                               UIImage(named: "pokemon-main")!,
                                               UIImage(named: "switch-main")!,
                                               UIImage(named: "nes-main")!],
                consoleTitles: [String]? = ["1980s", "1990s", "2000s", "2010s", "2020s"],
                consoleImages: [Image]? = [Image(uiImage: UIImage(named: "mario-main")!)],
                homepageURL: String? = "https://www.nintendo.co.kr",
                location: CLLocationCoordinate2D? = CLLocationCoordinate2D(latitude: 37.502009, longitude: 127.037296)) {
        self.mainTitleImages = mainTitleImages
        self.consoleTitles = consoleTitles
        self.consoleImages = consoleImages
        self.homepageURL = homepageURL
        self.location = location
    }
}
