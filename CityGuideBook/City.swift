//
//  City.swift
//  CityGuideBook
//
//  Created by Bedirhan Köse on 24.12.22.
//

import Foundation
import UIKit

class City {
    
    var name : String
    var region : String
    var image : UIImage
    
    init(name: String, region: String, image: UIImage) {
        self.name = name
        self.region = region
        self.image = image
    }
}
