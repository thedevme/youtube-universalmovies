//
//  Created for UniversalMovies
//  by Craig Clayton on 2022-11-01
//  Using Swift 5.0
//
// Follow me on Twitter: @thedevme
// Subscribe on YouTube: http://youtube.com/DesignToSwiftUI
//

import SwiftUI

struct ContinueWatchingView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    let movies = [
        Movie(image: "dark-poster", logo: "netflix"),
        Movie(image: "got-poster", logo: "hbo"),
        Movie(image: "thechi-poster", logo: "showtime"),
        Movie(image: "themandalorian-poster", logo: "disney"),
        Movie(image: "thisisus-poster", logo: "nbc"),
        Movie(image: "westworld-poster", logo: "hbo"),
        Movie(image: "dark-poster", logo: "netflix"),
        Movie(image: "got-poster", logo: "hbo"),
        Movie(image: "thechi-poster", logo: "showtime"),
        Movie(image: "themandalorian-poster", logo: "disney"),
        Movie(image: "thisisus-poster", logo: "nbc"),
        Movie(image: "westworld-poster", logo: "hbo")
    ]
    
    
    let imagesshort = ["thechi-poster", "themandalorian-poster", "thisisus-poster", "westworld-poster"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 0) {
                    Text("CONTINUE")
                        .font(.custom(.bold, size: 34))
                    Text("WATCHING")
                        .font(.custom(.ultraLight, size: 34))
                }.foregroundColor(.baseLightGray)
                
                Divider().padding(.bottom, 15).foregroundColor(.baseLightGray)
            }
            .padding(.horizontal, 20)
            HStack {
                if verticalSizeClass == .regular && horizontalSizeClass == .compact {
                    // iPhone Portrait or iPad 1/3 split view for Multitasking for instance
                    ScrollView(.horizontal) {
                        HStack(spacing: 15) {
                            ForEach(Array(movies.prefix(4))) { movie in
                                WatchItemView(movie: movie)
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                } else if verticalSizeClass == .compact && horizontalSizeClass == .compact {
                    // some "standard" iPhone Landscape (iPhone SE, X, XS, 7, 8, ...)
                    ScrollView(.horizontal) {
                        HStack(spacing: 15) {
                            ForEach(Array(movies.prefix(4))) { movie in
                                WatchItemView(movie: movie)
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                } else if verticalSizeClass == .compact && horizontalSizeClass == .regular {
                    // some "bigger" iPhone Landscape (iPhone Xs Max, 6s Plus, 7 Plus, 8 Plus, ...)
                    ScrollView(.horizontal) {
                        HStack(spacing: 15) {
                            ForEach(movies) { movie in
                                WatchItemView(movie: movie)
                            }
                        }
                        .padding(.horizontal, 20)
                    }

                } else if verticalSizeClass == .regular && horizontalSizeClass == .regular {
                    // macOS or iPad without split view - no Multitasking
                    ScrollView(.horizontal) {
                        HStack(spacing: 15) {
                            ForEach(movies) { movie in
                                WatchItemView(movie: movie)
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                }
            }
        }
    }
}

struct ContinueWatchingView_Previews: PreviewProvider {
    static var previews: some View {
        ContinueWatchingView()
    }
}
