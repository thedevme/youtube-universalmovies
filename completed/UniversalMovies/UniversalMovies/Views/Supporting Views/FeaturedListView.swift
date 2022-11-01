//
//  Created for UniversalMovies
//  by Craig Clayton on 2022-11-01
//  Using Swift 5.0
//
// Follow me on Twitter: @thedevme
// Subscribe on YouTube: http://youtube.com/DesignToSwiftUI
//

import SwiftUI

struct FeaturedListView: View {
    var body: some View {
        VStack {
            Image("themandalorian-landscape")
                .resizable()
                .cornerRadius(5)
                .aspectRatio(16/9, contentMode: .fit)
            
            HStack {
                Image("themandalorian-landscape")
                    .resizable()
                    .aspectRatio(16/9, contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Image("dark-landscape")
                    .resizable()
                    .aspectRatio(16/9, contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Image("thechi-landscape")
                    .resizable()
                    .aspectRatio(16/9, contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }
        }.padding(.horizontal)
    }
}

struct FeaturedListView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedListView()
    }
}
