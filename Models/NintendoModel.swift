//
//  NintendoModel.swift
//  Playground
//
//  Created by jiwoong on 2021/08/06.
//

import Foundation
import CoreLocation

public class NintendoModel {
    public let title: String
    public let titleImage: UIImage
    public let titleDescription: String
    public let shoppingURL: String
    public let location: CLLocationCoordinate2D
    
    public init(title: String,
                titleImage: UIImage,
                titleDescription: String,
                shoppingURL: String,
                location: CLLocationCoordinate2D) {
        self.title = title
        self.titleImage = titleImage
        self.titleDescription = titleDescription
        self.shoppingURL = shoppingURL
        self.location = location
    }
}
