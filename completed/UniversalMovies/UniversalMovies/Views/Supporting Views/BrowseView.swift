//
//  Created for UniversalMovies
//  by Craig Clayton on 2022-11-01
//  Using Swift 5.0
//
// Follow me on Twitter: @thedevme
// Subscribe on YouTube: http://youtube.com/DesignToSwiftUI
//

import SwiftUI

struct BrowseView: View {

    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
        
    var body: some View {
        if verticalSizeClass == .regular && horizontalSizeClass == .compact {
            ChannelGridView(maxWidth: 150, titleFontSize: 30, subtitleFontSize: 24)
        } else if verticalSizeClass == .compact && horizontalSizeClass == .compact {
            ChannelGridView(maxWidth: 175, titleFontSize: 30, subtitleFontSize: 34, count: 4)
        } else if verticalSizeClass == .compact && horizontalSizeClass == .regular {
            ChannelGridView(maxWidth: 175, titleFontSize: 30, subtitleFontSize: 24, count: 4)
        } else if verticalSizeClass == .regular && horizontalSizeClass == .regular {
            ChannelGridView(maxWidth: 175, titleFontSize: 30, subtitleFontSize: 24, count: 4)
        }
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
