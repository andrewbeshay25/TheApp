//
//  ProfileView.swift
//  TheApp
//
//  Created by Andrew Beshay on 6/7/23.
//

import SwiftUI

struct ProfileView: View {
    let name = "Andrew Beshay"
    let role = "Head Developer"
    let phone = "551-273-8201"
    let email = "andrewbeshay2525@gmail.com"
    let address = "172 West 21st Street\nAPT 5\nBayonne, NJ 07002"
    
    @AppStorage ("selectedTab") var selctedTab: Tab = .timer

    var body: some View {
        
        NavigationView{
            ZStack {
                VStack{
                    Rectangle()
                        .foregroundColor(Color("InverseAccentColor"))
                        .frame(height: 200)
                        .ignoresSafeArea()
                        .padding(-30)
                    Spacer()
                    VStack{
                        Text("\n\n\(name)")
                            .foregroundColor(Color("Golden"))
                            .customFont(.largeTitle)
                            .padding(.top, 10)
                        Text(role)
                            .customFont(.title2)
                            .foregroundColor(Color("Golden"))
                            .opacity(0.7)
                            .padding(.bottom)
                        
                        userInfo
                        
                        buttons
                            .frame(maxWidth: 400)
                            .padding(.top, 50)
                        
                        Spacer()
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .ignoresSafeArea()
                    
                }
                Image("Me")
                    .resizable()
                    .scaledToFit()
                    .mask(Circle())
                    .frame(width: 200, height: 200, alignment: .center)
                    .offset(y: -310)
                
                NavigationLink {
                    Text("Edit Profile") // edit info
                } label: {
                    Image(systemName: "square.and.pencil.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .foregroundColor(Color("Golden"))
                }
                .offset(y: -119)
                .offset(x: 180)
                
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
            .ignoresSafeArea()
        }
        
    }
    var userInfo: some View{
        VStack(spacing: -10){
            Label(phone, systemImage: "phone")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Label(email, systemImage: "envelope")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Label(address, systemImage: "house")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
        }
        .foregroundColor(.accentColor)
        .frame(maxWidth: 400)
        .background(Color("InverseAccentColor"))
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .ignoresSafeArea()
    }
    var buttons: some View{
        VStack{
            NavigationLink{
                Text("Settings")
            } label: {
                Label("Settings", systemImage: "gearshape")
                    .foregroundColor(Color.accentColor)
                    .largeButton()
            }
            
            NavigationLink{
                Text("Help & Support")
            } label: {
                Label("Help & Support", systemImage: "questionmark.circle")                    .foregroundColor(Color.accentColor)
                    .largeButton()
            }
            
            Button(action: {
                //
            }, label: {
                Label("Log Out", systemImage: "rectangle.portrait.and.arrow.right")
                    .foregroundColor(Color.red)
                    .largeButton()
            })
        }
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
