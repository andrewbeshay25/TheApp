//
//  HymnsView.swift
//  TheApp
//
//  Created by Andrew Beshay on 3/1/23.
//

import SwiftUI

struct HymnsView: View {
    @Namespace var namespace
    @State var show = false
    @State private var first_secondHymnsShow: Bool = false
    @State private var third_fourthHymnsShow: Bool = false
    @State private var fifth_sixthHymnsShow: Bool = false
    @State private var seventh_eighthHymnsShow: Bool = false
    
    var body: some View {
        
        ZStack{
            
            VStack{
                Spacer()
                Spacer()
                HStack(){
                    
                    Text("Hymns Classes")
                        .bold()
                        .foregroundColor(Color(hex: "dbbf43"))
                        .padding(.top, 70)
                        .font(.largeTitle)
                }
                .frame(height: 70)
                ScrollView(showsIndicators: false){
                    VStack{
                        if !show{
                            AboutCardItem(namespace: namespace, show: $show, item: primaries[3])
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                                .onTapGesture {
                                    withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                        show.toggle()
                                    }
                                }
                            
                            
                        }
                        VStack{
                            ZStack {
                                
                                ScrollView(.horizontal, showsIndicators: false){
                                    
                                    HStack{
                                        Button {
                                            first_secondHymnsShow.toggle()
                                        } label: {
                                            Text("Pre-K & KG\n Grade")
                                                .foregroundColor(Color("Golden"))
                                                .padding()
                                                .frame(width: 150)
                                                .background(Color("InverseAccentColor").cornerRadius(30))
                                        }
                                        .padding(.leading, 125)
                                        Button {
                                            first_secondHymnsShow.toggle()
                                        } label: {
                                            Text("1st & 2nd Grade")
                                                .foregroundColor(Color("Golden"))
                                                .padding()
                                                .frame(width: 150)
                                                .background(Color("InverseAccentColor").cornerRadius(30))
                                        }
                                        
                                        
                                    }
                                    .ignoresSafeArea()
                                    
                                }
                                Text("Mixed:")
                                    .bold()
                                    .font(.title)
                                    .foregroundColor(Color("Golden"))
                                    .padding(.leading, 50)
                                    .frame(maxWidth: 150, alignment: .leading)
                                
                                    .background(
                                        Rectangle()
                                        
                                            .fill(Color.accentColor)
                                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                            .blur(radius:10)
                                            .frame(width: 120, height: 65)
                                        
                                    )
                                    .offset(x:-180)
                            }
                            ZStack {
                                
                                ScrollView(.horizontal, showsIndicators: false){
                                    
                                    HStack{
                                        Button {
                                            third_fourthHymnsShow.toggle()
                                        } label: {
                                            Text("3rd & 4th\nGrade")
                                                .foregroundColor(Color("Golden"))
                                                .padding()
                                                .frame(width: 150)
                                                .background(Color("InverseAccentColor").cornerRadius(30))
                                        }
                                        .padding(.leading, 125)
                                        
                                        Button {
                                            fifth_sixthHymnsShow.toggle()
                                        } label: {
                                            Text("5th & 6th\nGrade")
                                                .foregroundColor(Color("Golden"))
                                                .padding()
                                                .frame(width: 150)
                                                .background(Color("InverseAccentColor").cornerRadius(30))
                                            
                                        }
                                        Button {
                                            seventh_eighthHymnsShow.toggle()
                                        } label: {
                                            Text("7th & 8th\nGrade")
                                                .foregroundColor(Color("Golden"))
                                                .padding()
                                                .frame(width: 150)
                                                .background(Color("InverseAccentColor").cornerRadius(30))
                                        }
                                        
                                    }
                                    .ignoresSafeArea()
                                    
                                }
                                Text("Boys:")
                                    .bold()
                                    .font(.title)
                                    .foregroundColor(Color("Golden"))
                                    .padding(.leading, 25)
                                    .frame(maxWidth: 100, alignment: .leading)
                                
                                    .background(
                                        Rectangle()
                                        
                                            .fill(Color.accentColor)
                                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                            .blur(radius:10)
                                            .frame(width: 120, height: 65)
                                        
                                    )
                                    .offset(x:-180)
                            }
                            ZStack {
                                
                                ScrollView(.horizontal, showsIndicators: false){
                                    
                                    HStack{
                                        Button {
                                            third_fourthHymnsShow.toggle()
                                        } label: {
                                            Text("3rd & 4th\nGrade")
                                                .foregroundColor(Color("Golden"))
                                                .padding()
                                                .frame(width: 150)
                                                .background(Color("InverseAccentColor").cornerRadius(30))
                                        }
                                        .padding(.leading, 125)
                                        
                                        Button {
                                            fifth_sixthHymnsShow.toggle()
                                        } label: {
                                            Text("5th & 6th\nGrade")
                                                .foregroundColor(Color("Golden"))
                                                .padding()
                                                .frame(width: 150)
                                                .background(Color("InverseAccentColor").cornerRadius(30))
                                            
                                        }
                                        Button {
                                            seventh_eighthHymnsShow.toggle()
                                        } label: {
                                            Text("7th & 8th\nGrade")
                                                .foregroundColor(Color("Golden"))
                                                .padding()
                                                .frame(width: 150)
                                                .background(Color("InverseAccentColor").cornerRadius(30))
                                        }
                                        
                                    }
                                    .ignoresSafeArea()
                                    
                                }
                                Text("Girls:")
                                    .bold()
                                    .font(.title)
                                    .foregroundColor(Color("Golden"))
                                    .padding(.leading, 25)
                                    .frame(maxWidth: 100, alignment: .leading)
                                
                                    .background(
                                        Rectangle()
                                        
                                            .fill(Color.accentColor)
                                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                            .blur(radius:10)
                                            .frame(width: 120, height: 65)
                                        
                                    )
                                    .offset(x:-180)
                            }
                        }
                        .padding(.top, 25)
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
                CardExpand(namespace: namespace, showing: $show, item: primaries[3])
            }
            
        }
        .background(Color.accentColor)
        .ignoresSafeArea()
        
        
    }
}

struct HymnsView_Previews: PreviewProvider {
    static var previews: some View {
        HymnsView()
    }
}
