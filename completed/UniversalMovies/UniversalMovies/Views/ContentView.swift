//
//  Created for UniversalMovies
//  by Craig Clayton on 2022-11-01
//  Using Swift 5.0
//
// Follow me on Twitter: @thedevme
// Subscribe on YouTube: http://youtube.com/DesignToSwiftUI
//

import SwiftUI

struct ContentView: View {
    
    @ViewBuilder
    var body: some View {
        ZStack {
            Color(.baseBackground).edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 20) {
                    FeaturedListView()
                        .padding(.top, 40)
                    ContinueWatchingView()
                        .padding([.bottom, .top], 40)
                    BrowseView().padding(.bottom, 20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
