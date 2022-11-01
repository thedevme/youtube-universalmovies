//
//  Created for UniversalMovies
//  by Craig Clayton on 2022-11-01
//  Using Swift 5.0
//
// Follow me on Twitter: @thedevme
// Subscribe on YouTube: http://youtube.com/DesignToSwiftUI
//

import SwiftUI

struct WatchItemView: View {
    let movie: Movie
    
    var body: some View {
        ZStack {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                    
                    Image(movie.image)
                        .resizable()
                        .aspectRatio(9/16, contentMode: .fill)
                        .frame(minWidth:120, alignment: .top)
                        .mask(Rectangle().cornerRadius(10, corners: [.topLeft, .topRight])
                            .background(Color.clear))
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 55, height: 35)
                            .opacity(0.7)
                            .cornerRadius(10, corners: [.bottomLeft])
                        Image(movie.logo)
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
                ZStack {
                    Color(.baseCardBackground).edgesIgnoringSafeArea(.all)
                    
                    HStack(spacing: 0) {
                        Text("S3")
                            .font(.custom(.bold, size: 35))
                        Text("S1")
                            .font(.custom(.ultraLight, size: 35))
                    }.foregroundColor(.baseLightGray)
                    
                    ZStack(alignment: .leading) {
                        Rectangle().fill(Color.baseLightGray)
                        Rectangle().fill(Color.baseLightBlue).frame(width: 100)
                    }.frame(height: 7)
                        .offset(y: -22)
                }
                .frame(height: 36)
            }
            .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
        }
    }
}

struct WatchItemView_Previews: PreviewProvider {
    static var previews: some View {
        WatchItemView(movie: Movie.default)
            .previewLayout(.fixed(width: 180, height: 305))
    }
}
