//
//  Constants.swift
//  pixel-city
//
//  Created by My Macbook Pro on 04/08/2018.
//  Copyright © 2018 My Macbook Pro. All rights reserved.
//

import Foundation

let apiKey = "79e5da50d6c6a41b09cc9eae0f613049"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number:Int ) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(key)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}

