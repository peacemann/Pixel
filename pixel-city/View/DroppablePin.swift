//
//  DroppablePin.swift
//  pixel-city
//
//  Created by My Macbook Pro on 04/08/2018.
//  Copyright © 2018 My Macbook Pro. All rights reserved.
//

import Foundation
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
