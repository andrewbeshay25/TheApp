//
//  SundaySchoolView.swift
//  TheApp
//
//  Created by Andrew Beshay on 8/27/22.
//

import SwiftUI

struct SundaySchoolView: View {
    
    @Namespace var namespace
    @State var show = false
    @State private var first_secondHymnsShow: Bool = false
    @State private var third_fourthHymnsShow: Bool = false
    
    
    var body: some View {
        
        ZStack{
            
            VStack{
                Spacer()
                Spacer()
                HStack(){
                    
                    Text("Sunday School")
                        .bold()
                        .foregroundColor(Color(hex: "dbbf43"))
                        .padding(.top, 70)
                        .font(.largeTitle)
                }
                .frame(height: 70)
                ScrollView(showsIndicators: false){
                    VStack{
                        if !show{
                            AboutCardItem(namespace: namespace, show: $show, item: primaries[2])
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                                .onTapGesture {
                                    withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                        show.toggle()
                                    }
                                }
                        }
                        HStack{
                            Button {
                                first_secondHymnsShow.toggle()
                            } label: {
                                Text("First Sheet")
                                    .foregroundColor(Color("Golden"))
                                    .padding()
                                    .frame(width: 100)
                                    .background(Color.accentColor.cornerRadius(30))
                            }
                            Button {
                                third_fourthHymnsShow.toggle()
                            } label: {
                                Text("Second Sheet")
                                    .foregroundColor(Color("Golden"))
                                    .padding()
                                    .frame(width: 100)
                                    .background(Color.accentColor.cornerRadius(30))
                            }
                            
                        }
                    }
                    .fullScreenCover(isPresented: $first_secondHymnsShow){
                        ZStack {
                            
                            First_SecondHymns()
                            
                            Button{
                                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)){
                                    first_secondHymnsShow.toggle()
                                }
                            }label: {
                                Image(systemName: "xmark")
                                    .font(.body.weight(.bold))
                                    .foregroundColor(.secondary)
                                    .padding(8)
                                    .background(.ultraThinMaterial, in: Circle())
                                
                            }
                            .frame(maxWidth: .infinity, maxHeight: 750, alignment: .topTrailing)
                            .padding(20)
                            .ignoresSafeArea()
                        }
                    }
                    .fullScreenCover(isPresented: $third_fourthHymnsShow){
                        ZStack {
                            
                            Third_FourthHymns()
                            
                            Button{
                                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)){
                                    third_fourthHymnsShow.toggle()
                                }
                            }label: {
                                Image(systemName: "xmark")
                                    .font(.body.weight(.bold))
                                    .foregroundColor(.secondary)
                                    .padding(8)
                                    .background(.ultraThinMaterial, in: Circle())
                                
                            }
                            .frame(maxWidth: .infinity, maxHeight: 750, alignment: .topTrailing)
                            .padding(20)
                            .ignoresSafeArea()
                        }
                    }
                    
                }
            }
            
            if show{
                CardExpand(namespace: namespace, showing: $show, item: primaries[2])
            }
        }
        .background(Color.accentColor)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        
    }
}

struct SundaySchoolView_Previews: PreviewProvider {
    static var previews: some View {
        SundaySchoolView()
            .preferredColorScheme(.dark)
    }
}
