//
//  EventsCards.swift
//  TheApp
//
//  Created by Andrew Beshay on 5/22/23.
//

import SwiftUI

struct EventsCards: View {
    
    @Environment(\.colorScheme) var colorScheme
    @AppStorage ("selectedTab") var selctedTab: Tab = .timer

    var body: some View {
        
        NavigationView{
            ZStack{
                VStack{
                        Text("Upcoming Events")
                            .bold()
                            .foregroundColor(Color(hex: "dbbf43"))
                            .padding(.top)
                            .font(.largeTitle)
                        
                    
                    ScrollView(showsIndicators: false){
                        ForEach(1..<5) { event in
                            NavigationLink {
                                //
                            } label: {
                                ZStack {
                                    Rectangle()
                                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                        .frame(width: 410, height: 220)
                                        .foregroundColor(Color("InverseAccentColor"))
                                        
                                    
                                    VStack(alignment: .leading) {
                                        Text("Hello")
                                            .bold()
                                            .customFont(.largeTitle)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .padding()
                                        
                                        VStack(alignment: .leading, spacing: 20){
                                            Text("Hello")
                                                .layoutPriority(1)
                                            
                                            Spacer()
                                            HStack{
                                                Text("Hello")
                                                    .opacity(0.7)
                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                                
                                                Text("Hello")
                                                    .opacity(0.7)
                                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                                
                                                
                                            }
                                        }
                                        .padding(20)
                                    }
                                    .foregroundColor(colorScheme == .dark ? Color("Golden") : Color("InverseAccentColor"))
                                    
                                    .background(.linearGradient(colors: [Color.accentColor.opacity(1), Color.accentColor.opacity(0.9)], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                    .frame(width: 400, height: 200)
                                    
                                }
                            }
                            
                            
                        }
                        
                    }
                    
                    
                }
                .safeAreaInset(edge: .bottom) {
                    Color.clear.frame(height: 80)
                }
                .safeAreaInset(edge: .top) {
                    Color.clear.frame(height: 20)
                }
                .background(Color.accentColor)
                .ignoresSafeArea()
                
                TabBar()
                    .offset(y: -24)
                    .background(
                        LinearGradient(colors: [Color("Background").opacity(0), Color("Background")], startPoint: .top, endPoint: .bottom)
                            .frame(height: 70)
                            .frame(maxHeight: .infinity, alignment: .bottom)
                            .allowsHitTesting(false)
                    )
                
                    .ignoresSafeArea()
            }
            
        }
    }
}

struct EventsCards_Previews: PreviewProvider {
    
    static var previews: some View {
        EventsCards()
    }
}
