
import SwiftUI

struct CardExpand: View {
    
    var namespace: Namespace.ID
    @Binding var showing: Bool
    var item: Primary
    
    var body: some View {
        ZStack {
            ScrollView{
                
                VStack{
                    Spacer()
                    Spacer()
                    Spacer()

                    cover
                    
                    VStack(alignment: .leading, spacing: 12){
                        
                        Text(item.title)
                            .customFont(.title2)
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(Color("Golden"))
                        
                        Text(item.caption)
                            .layoutPriority(1)
                            .opacity(0.7)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .matchedGeometryEffect(id: "subtitle", in: namespace)
                        
                    }
                    .padding(20)
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                            .matchedGeometryEffect(id: "blur", in: namespace)
                        
                    )
                    
                    .offset(y: -70)
                    .padding(20)
                    
                    
                }
                
            }
            .background(Color.accentColor)
            .ignoresSafeArea()
            
            Button{
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)){
                    showing.toggle()
                    print("pressed")
                }
            }label: {
                HStack {
                    Label("Back", systemImage: "arrowshape.turn.up.backward.fill")
                        .font(.body.weight(.bold))
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 170)
                        .padding(.vertical, 20)
                        .background(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .offset(y: 200)
            .padding(.trailing, 10)
//            .ignoresSafeArea()
        }
    }
    
    var cover: some View{
        
        VStack{
            
        }
        .frame(maxWidth: .infinity)
        .frame(height: 300)
        .padding(.top, 50)
        
        .foregroundStyle(.black)
        .background(
            item.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "image", in: namespace)
        )
        
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        )
        
        
    }
}


struct CardExpand_Previews: PreviewProvider {
    
    @Namespace static var namespace
    
    static var previews: some View {
        CardExpand(namespace: namespace, showing: .constant(true), item: primaries[3])
    }
}
