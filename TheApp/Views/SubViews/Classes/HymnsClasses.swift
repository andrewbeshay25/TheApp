//
//  First&SecondHymns.swift
//  TheApp
//
//  Created by Andrew Beshay on 3/1/23.
//

import SwiftUI

struct First_SecondHymns: View {
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                Text("1st & 2nd Grade Hymns Class")
                    .font(.title)
                    .frame(alignment: .top)
                    .padding(.top, 50)

                Image("ChurchInfo")
                    .resizable()
                    .frame(width: 400, height: 200)
                    .cornerRadius(30)
                    .padding()
                
                HStack {
                    Text("Location:")
                        .font(.title3)
                    Text("Second Floor - Room 1")
                        .font(.headline)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                HStack {
                    Text("Time:")
                        .font(.title3)
                    Text("6:00 - 7:30pm")
                        .font(.headline)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                Text("Description")
                    .font(.title2)
                    .padding()
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis egestas pretium aenean Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    .padding(20)

            }
            
            .foregroundColor(Color("Golden"))
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .background(Color.accentColor)
//        .ignoresSafeArea(edges: .all)
        }
        
    }
}

struct Third_FourthHymns: View {
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                Text("3rd & 4th Grade Hymns Class")
                    .font(.title)
                    .frame(alignment: .top)
                    .padding(.top, 50)
                Image("ChurchInfo")
                    .resizable()
                    .frame(width: 400, height: 200)
                    .cornerRadius(30)
                    .padding()
                
                HStack {
                    Text("Location:")
                        .font(.title3)
                    Text("Second Floor - Room 2")
                        .font(.headline)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                HStack {
                    Text("Time:")
                        .font(.title3)
                    Text("6:00 - 7:30pm")
                        .font(.headline)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                Text("Description")
                    .font(.title2)
                    .padding()
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis egestas pretium aenean Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                    .padding(20)

            }
            
            .foregroundColor(Color("Golden"))
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .background(Color.accentColor)
//        .ignoresSafeArea(edges: .all)
        }
    }
}

struct HymnsClasses_Previews: PreviewProvider {
    static var previews: some View {
        Third_FourthHymns()
            .preferredColorScheme(.dark)
    }
}
