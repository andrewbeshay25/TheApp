//
//  SmallCardView.swift
//  TheApp
//
//  Created by Andrew Beshay on 8/24/22.
//

import SwiftUI

struct HCard: View {
    
    var extra: Extras
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(extra.title)
                .customFont(.subheadline)
                .frame(maxWidth: .infinity, alignment: .center)
                .layoutPriority(1)
                .foregroundColor(Color.accentColor)
           
        }
        .foregroundColor(.white)
        .padding(27)
        .frame(width: 190, height: 90)
        .background(.linearGradient(colors: [extra.color.opacity(1), extra.color.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
//        .shadow(color: extra.color.opacity(0.3), radius: 8, x: 0, y: 12)
        .shadow(color: extra.color.opacity(0.3), radius: 2, x: 0, y: 1)

    }
}

struct HCard_Previews: PreviewProvider {
    static var previews: some View {
        HCard(extra: extras[1])
    }
}
