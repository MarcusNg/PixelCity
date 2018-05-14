//
//  Constants.swift
//  PixelCity
//
//  Created by Marcus Ng on 5/13/18.
//  Copyright © 2018 Marcus Ng. All rights reserved.
//

let apiKey = "903fb47b981b71bcaa600362da5fe8a2"

func flickrURL(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}
