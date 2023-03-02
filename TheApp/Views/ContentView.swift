//
//  ContentView.swift
//  TheApp
//
//  Created by Andrew Beshay on 8/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var Side = false
    
    @AppStorage ("selectedTab") var selctedTab: Tab = .home
    
    var body: some View {

    
        ZStack{
            
            switch selctedTab {
                
            case .home:
                SuperHomeView()
            case .timer:
                Text("Schedules ig")
            case .connect:
                Text("CONNECT HUB System")
            case .bell:
                Text("Notifications")
            case .user:
                Text("Profile")
            }
            
            
            
            TabBar()
                .offset(y: !Side ? -24 : 300)///////////////////////////////////////////////////////////////redo
            
                .background(
                    LinearGradient(colors: [Color("Background").opacity(0), Color("Background")], startPoint: .top, endPoint: .bottom)
                        .frame(height: 70)
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .allowsHitTesting(false)
                )
                .ignoresSafeArea()
                .offset(y: Side ? 300 : 0)
        }

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
