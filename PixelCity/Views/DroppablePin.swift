//
//  DroppablePin.swift
//  PixelCity
//
//  Created by Marcus Ng on 5/13/18.
//  Copyright © 2018 Marcus Ng. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
    }
    
}
