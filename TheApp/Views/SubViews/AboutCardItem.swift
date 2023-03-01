//
//  AboutCardItem.swift
//  TheApp
//
//  Created by Andrew Beshay on 9/26/22.
//

import SwiftUI

struct AboutCardItem: View {
    
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
                    .blur(radius:10)
                    .matchedGeometryEffect(id: "blur", in: namespace)
                
            )
            
        }
        .foregroundColor(Color("Golden"))
        .background(          //CHANGE
            item.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "image", in: namespace)
        )
        
        .background(.linearGradient(colors: [item.color.opacity(1), item.color.opacity(1)], startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
            .matchedGeometryEffect(id: "mask", in: namespace))
        .frame(width: 420, height: 280)
        .padding(20)
    }
}

struct AboutCardItem_Previews: PreviewProvider {
    @Namespace static var namespace

    static var previews: some View {
        AboutCardItem(namespace: namespace, show: .constant(true), item: primaries[1])
    }
}
