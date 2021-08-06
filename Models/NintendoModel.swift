//
//  NintendoModel.swift
//  Playground
//
//  Created by jiwoong on 2021/08/06.
//

import Foundation
import CoreLocation

public class NintendoModel {
    public let Title: String
    public let TitleImage: UIImage
    public let TitleDescription: String
    public let shoppingURL: URL
    public let location: CLLocationCoordinate2D
    
    public init(Title: String,
                TitleImage: UIImage,
                TitleDescription: String,
                shoppingURL: URL,
                location: CLLocationCoordinate2D) {
        self.Title = Title
        self.TitleImage = TitleImage
        self.TitleDescription = TitleDescription
        self.shoppingURL = shoppingURL
        self.location = location
    }
}
