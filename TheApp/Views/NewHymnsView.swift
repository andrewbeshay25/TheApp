//
//  NewHymnsView.swift
//  TheApp
//
//  Created by Andrew Beshay on 4/25/23.
//

import SwiftUI

struct NewHymnsView: View {
    @Namespace var namespace
    @State var show = false
    
    @State private var first_secondHymnsShow: Bool = false
    @State private var third_fourthHymnsShow: Bool = false
    @State private var fifth_sixthHymnsShow: Bool = false
    @State private var seventh_eighthHymnsShow: Bool = false
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    Spacer()
                    Spacer()
                    HStack(){
                        Text("                 Hymns Classes            ")
                        
                            .bold()
                            .foregroundColor(Color(hex: "dbbf43"))
                            .padding(.top, 70)
                            .font(.largeTitle)
                    }
                    .frame(height: 70)
                   
                }
                            }
            .background(Color.accentColor)
            .ignoresSafeArea()
        .navigationBarBackButtonHidden(false)
        }
    }
}

struct NewHymnsView_Previews: PreviewProvider {
    static var previews: some View {
        NewHymnsView()
    }
}
