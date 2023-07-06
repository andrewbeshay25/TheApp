//
//  HomeView.swift
//  TheApp
//
//  Created by Andrew Beshay on 8/24/22.......--_--...
//

import SwiftUI
import RiveRuntime


struct HomeView: View {
    
    @State var isOpen = false
    
    
    var button = RiveViewModel(fileName: "menu_button", stateMachineName: "State Machine", autoPlay: false)
    
    @AppStorage ("selectedTab") var selctedTab: Tab = .home
    @AppStorage("selectedMenu") var selectedMenu: SelectedMenu = .home
    
    var body: some View {
        ZStack {
            
            Color.accentColor.ignoresSafeArea()
            
            Group{
            switch selectedMenu {
                
            case .home:
                switch selctedTab {
                case .home:
                    NavigationView{
                        ZStack{
                            VStack{
                                Spacer()
                                Spacer()
                                HStack(spacing: -7){
                                    if (!isOpen){
                                        Button {
                                            button.setInput("isOpen", value: true)
                                            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                                                isOpen.toggle()
                                            }
                                        } label: {
                                            button.view()
                                                .frame(width: 44, height: 44)
                                                .mask(Circle())
                                                .shadow(color: Color("Shadow").opacity(0.2), radius: 5, x: 0, y: 5)
                                                .padding(.leading)
                                        }
                                    }
                                  
                                    Spacer()
                                    Image("Logo")
                                        .resizable()
                                        .frame(width: 45, height: 50)
                                        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
                                    
                                    Text("Home")
                                        .bold()
                                        .foregroundColor(Color(hex: "dbbf43"))
                                        .padding()
                                        .font(.largeTitle)
                                    
                                    Spacer()
                                    
                                }
                                .frame(height: 50)
                                
                                
                                ScrollView(showsIndicators: false){
                                    
                                    VStack(){
                                        ImageSlider()
                                            .frame(height: 240)
                                        
                                        Text("𝒱𝒾𝓇ℊ𝒾𝓃 ℳ𝒶𝓇𝓎 𝒶𝓃𝒹 𝒮𝓉. 𝒥ℴ𝒽𝓃")
                                            .font(.title3)
                                            .bold()
                                            .foregroundColor(Color("Golden"))
                                        Text("𝒞ℴ𝓅𝓉𝒾𝒸 𝒪𝓇𝓉𝒽ℴ𝒹ℴ𝓍 𝒞𝒽𝓊𝓇𝒸𝒽")
                                            .font(.headline)
                                            .foregroundColor(Color("Golden"))
                                            .bold()
                                        Divider()
                                        
                                        
                                        Text("Services")
                                        
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .font(.title2.weight(.bold))
                                            .foregroundColor(Color("Golden"))
                                            .padding(.leading, 20)
                                        
                                        
                                        ScrollView(.horizontal, showsIndicators: false){
                                            
                                            
                                            HStack{
                                                NavigationLink() {
                                                    SundaySchoolView()//Not Final
                                                    
                                                } label: {
                                                    VCard(service: services[0])
                                                    
                                                }
                                                
                                                .padding(.leading, 20)
                                                
                                                NavigationLink() {
                                                    SundaySchoolView()// Final
                                                    
                                                } label: {
                                                    VCard(service: services[1])
                                                }
                                                
                                                NavigationLink() {
                                                    HymnsView()// Final
                                                } label: {
                                                    VCard(service: services[2])
                                                }
                                                .padding(.trailing, 20)
                                                
                                            }
                                        }
                                        
                                        Divider()
                                        
                                        Text("More")//Not Final
                                            .bold()
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.leading, 20)
                                            .font(.title2)
                                            .foregroundColor(Color("Golden"))
                                        
                                        
                                        VStack{
                                            
                                            HStack(){
                                                
                                                NavigationLink() {
                                                    SignInView()//Not Final
                                                } label: {
                                                    HCard(extra: extras[0])
                                                }
                                                .padding(.leading, 20)
                                                
                                                
                                                NavigationLink() {
                                                    SignInView()//Not Final
                                                } label: {
                                                    HCard(extra: extras[1])
                                                }
                                                .padding(.trailing, 20)
                                                
                                            }
                                            HStack{
                                                NavigationLink() {
                                                    SignInView()//Not Final
                                                } label: {
                                                    HCard(extra: extras[2])
                                                }
                                                .padding(.leading, 10)
                                                
                                                
                                                NavigationLink() {
                                                    SignInView()//Not Final
                                                } label: {
                                                    HCard(extra: extras[3])
                                                }
                                                .padding(.trailing, 10)
                                            }
                                        }
                                        
                                    }
                                    Divider()
                                    
                                    Text("Socials")//Not Final
                                        .bold()
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 20)
                                        .font(.title2)
                                        .foregroundColor(Color("Golden"))
                                    
                                    VStack{
                                        
                                        HStack(){
                                            
                                            Link(destination: URL(string: "https://www.youtube.com/@virginmarybayonne")!, label: {
                                                HCard(extra: extras[4])
                                            })
                                            .padding(.leading, 20)
                                            
                                            Link(destination: URL(string: "https://www.facebook.com/virginmarybayonne")!, label: {
                                                HCard(extra: extras[5])
                                            })
                                            .padding(.trailing, 20)
                                        }
                                    }
                                    
                                    
                                }
                                
                                .safeAreaInset(edge: .bottom) {
                                    Color.clear.frame(height: 80)
                                    
                                }
                                .ignoresSafeArea()
                                
                            }
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
                        
                        
                        .safeAreaInset(edge: .top) {
                            Color.clear.frame(height: 20)
                        }
                        
                        .background(Color.accentColor)
                        .ignoresSafeArea()
                        .navigationTitle("Home")
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(false)
                        
                    }
                case .timer:
                    EventsCards()
                case .bell:
                    Text("Notifications")
                case .user:
                    ProfileView()
                }
                
            case .favorites:
                Text("Main Directory")
                
            case .notifications:
                Text("Noti")
                
            case .help:
                Text("HELPPPP")
                
            case .search:
                Text("Search")
            case .history:
                Text("History")
            }
        }
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .rotation3DEffect(.degrees(isOpen ? 30 : 0), axis: (x: 0, y: -1, z: 0), perspective: 1)
                .offset(x: isOpen ? 265 : 0)
                .scaleEffect(isOpen ? 0.9 : 1)
            .ignoresSafeArea()
            
            SideMenu(menuIsOpen: $isOpen)
                .padding(.top, 50)
                .opacity(isOpen ? 1 : 0)
                .offset(x: isOpen ? 0 : -300)
                .rotation3DEffect(.degrees(isOpen ? 0 : 30), axis: (x: 0, y: 1, z: 0))
                .ignoresSafeArea(.all, edges: .top)
        }
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView()
        
    }
}
