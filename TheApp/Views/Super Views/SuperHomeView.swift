//
//  SuperHomeView.swift
//  TheApp
//
//  Created by Andrew Beshay on 8/26/22.
//

import SwiftUI
import RiveRuntime

struct SuperHomeView: View {
    @State private var offset = CGFloat.zero
    @State private var closeOffset = CGFloat.zero
    @State private var openOffset = CGFloat.zero
    @State var isShowingSomething: Bool = false

    @State var isOpen = false
    
    var button = RiveViewModel(fileName: "menu_button", stateMachineName: "State Machine", autoPlay: false)
    @AppStorage("selectedMenu") var selectedMenu: SelectedMenu = .home
    
    var body: some View {
        
        VStack {
            ZStack {
                Color.accentColor.ignoresSafeArea()
                
                SideMenu()
                    .padding(.top, 50)
                    .opacity(isOpen ? 1 : 0)
                    .offset(x: isOpen ? 0 : -300)
                    .rotation3DEffect(.degrees(isOpen ? 0 : 30), axis: (x: 0, y: 1, z: 0))
                    .ignoresSafeArea(.all, edges: .top)
                
                Group{
                    switch selectedMenu {
                        
                    case .home:
                        
                        HomeView(isShowingSomething: $isShowingSomething)
                        
                            .onTapGesture {
                                withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                                    
                                    isOpen = false
                                    button.setInput("isOpen", value: !isOpen)
                                    
                                }
                            }
                            .gesture(DragGesture(minimumDistance: 5)
                                .onChanged{ value in
                                    if (self.offset < self.openOffset) {
                                        self.offset = self.closeOffset + value.translation.width
                                    }
                                }
                                .onEnded { value in
                                    // Open menu
                                    if (value.location.x > value.startLocation.x && value.location.x < 170) {
                                        
                                        button.setInput("isOpen", value: isOpen)
                                        
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                                            isOpen = true
                                        }
                                    }
                                    
                                    
                                    // Close menu
                                    else {
                                        button.setInput("isOpen", value: !isOpen)
                                        
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                                            isOpen = false
                                        }
                                        isOpen = false

                                    }
                                }
                            )
                        
                        
                    case .favorites:
                        Text("FAVORITESS")
                        
                    case .help:
                        Text("HELPPPP")
                        
                    case .notifications:
                        Text("Noti")
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
                
                //
                
                button.view() // offsets when something else is pressed on the screen.
                              // A variable is toggled saying something else is pressed

                    .frame(width: 44, height: 44)
                    .opacity(isShowingSomething ? 0 : 1)
                    .mask(Circle())
                    .shadow(color: Color("Shadow").opacity(0.2), radius: 5, x: 0, y: 5)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.leading)
                    .offset(x: isOpen ? 216 : 0)
                    .onTapGesture {
                        button.setInput("isOpen", value: isOpen)
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                            isOpen.toggle()
                        }
                    }
                if (isShowingSomething){
                    button.view()
                        .offset(x: -500)
                }
            }
            
        }
    }
}

extension UIViewController {
    func setStatusBarStyle(_ style: UIStatusBarStyle) {
        if let statusBar = UIApplication.shared.value(forKey: "statusBar") as? UIView {
            statusBar.backgroundColor = style == .lightContent ? UIColor.black : .white
            statusBar.setValue(style == .lightContent ? UIColor.white : .red, forKey: "foregroundColor")
        }
    }
}



struct SuperHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SuperHomeView()
        
    }
}
