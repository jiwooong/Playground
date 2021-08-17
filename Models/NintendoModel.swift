//
//  NintendoModel.swift
//  Playground
//
//  Created by jiwoong on 2021/08/06.
//

import Foundation
import CoreLocation
import SwiftUI

public class NintendoModel {
    static let shared = NintendoModel(title: nil,
                                      titleImage: nil,
                                      consoleImages: nil,
                                      titleDescription: nil,
                                      homepageURL: nil,
                                      location: nil)
    
    public let title: String?
    public let titleImage: UIImage?
    public let consoleImages: [Image]?
    public let titleDescription: String?
    public let homepageURL: String?
    public let location: CLLocationCoordinate2D?
    
    public init(title: String?,
                titleImage: UIImage?,
                consoleImages: [Image]?,
                titleDescription: String?,
                homepageURL: String?,
                location: CLLocationCoordinate2D?) {
        self.title = title
        self.titleImage = titleImage
        self.consoleImages = consoleImages
        self.titleDescription = titleDescription
        self.homepageURL = homepageURL
        self.location = location
    }
}
