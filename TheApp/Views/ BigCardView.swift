
import SwiftUI

struct VCard: View {
    var service: Services
    
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 8) {
            Text(service.title)
                .customFont(.title3)
                .frame(maxWidth: 170, alignment: .center)
                .foregroundColor(Color.accentColor)
            Text(service.subtitle)
                .customFont(.subheadline)
                .foregroundColor(Color.accentColor)
                .opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .center)
            
//            Text(service.caption.uppercased())
//                .customFont(.footnote2)
//                .opacity(0.7)
            
        }
        .foregroundColor(.white)
        .padding(25)
        .frame(width: 200, height: 200)
        .background(.linearGradient(colors: [service.color.opacity(1), service.color.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
//        .shadow(color: service.color.opacity(0.3), radius: 8, x: 0, y: 12)
        .shadow(color: service.color.opacity(0.3), radius: 2, x: 0, y: 1)
//        .overlay(
//            service.image
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
//                .padding(20)
//        )
    }
}

struct VCard_Previews: PreviewProvider {
    static var previews: some View {
        VCard(service: services[2])
            
    }
}
