//
//  Card_Item.swift
//  AnimatedApp
//
//  Created by Andrew Beshay on 8/2/22.
//

import SwiftUI

struct CardItem: View {
    
    var namespace: Namespace.ID
    @Binding var show: Bool
    var item: Primary
    
    var body: some View {
        VStack{
            Spacer()
            VStack(alignment: .leading, spacing: 12){
                Text(item.title)
                    .customFont(.title2)
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .layoutPriority(2)
                Text(item.subtitle)
                    .opacity(0.7)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .matchedGeometryEffect(id: "subtitle", in: namespace)
            }
            .padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .blur(radius: 30)
                    .matchedGeometryEffect(id: "blur", in: namespace)
                
            )
            
        }
        .foregroundColor(.white)
        .background(
            Image("Spline")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "image", in: namespace)
        )
        
        .background(.linearGradient(colors: [item.color.opacity(1), item.color.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
            .matchedGeometryEffect(id: "mask", in: namespace))
        .frame(width: 300, height: 300)
        .padding(20)
    }
}

struct Card_Item_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        CardItem(namespace: namespace, show: .constant(true), item: primaries[2])
    }
}
