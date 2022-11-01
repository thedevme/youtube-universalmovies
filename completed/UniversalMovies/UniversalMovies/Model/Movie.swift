//
//  Created for UniversalMovies
//  by Craig Clayton on 2022-11-01
//  Using Swift 5.0
//
// Follow me on Twitter: @thedevme
// Subscribe on YouTube: http://youtube.com/DesignToSwiftUI
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    let image: String
    let logo: String
    
    static var `default` = Self(image: "thechi-poster", logo: "showtime")
}
