//
//  MainView.swift
//  NoteFood
//
//  Created by juri on 2023/03/29.
//

import SwiftUI

struct MainView: View {
    
//    @State var currentDate: Date = Date()
    
    var monthFormatter: String {
        let formatter = DateFormatter()
        
        formatter.dateFormat = "MMMM"
        return formatter.string(from: Date())
    }
    
    var today = Date()
    
    var body: some View {
        NavigationView {
            VStack{
                Text(monthFormatter)
                Divider()
                    .frame(width: 280, height:2)
                    .overlay(.gray)
                    .frame(height:30)
                    
                Spacer()
                
                HStack {
                    Button(action: {
                        
                    }) {
                        ZStack{
                            Circle()
                                .scale(0.2)
                                .foregroundColor(.orange)
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                        }
                        
                    }
                    Button(action: {
                        
                    }) {
                        ZStack{
                            Circle()
                                .scale(0.2)
                                .foregroundColor(.orange)
                            Image(systemName: "checkmark")
                                .foregroundColor(.white)
                        }
                    }
                }
                
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink{
                        ProfileView()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.orange)
                    }
                }
            }
            navigationBarHidden(true)
            
        }
    }
    
}

struct MMainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
