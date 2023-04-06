//
//  MainPageView.swift
//  NoteFood
//
//  Created by juri on 2023/04/05.
//

import SwiftUI

struct MainPageView: View {
    
    @State var currentDate: Date = Date()
    
    var today = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                
                
                CustomCalendar(currentDate: $currentDate)
                
                
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
                }//HStack
                
                
                
            }//VStack
//            .toolbar{
//                ToolbarItem(placement: .navigationBarLeading) {
//                    NavigationLink{
//                        ProfileView()
//                    } label: {
//                        Image(systemName: "line.3.horizontal")
//                            .foregroundColor(.orange)
//                    }
//                }
//            }
//            navigationBarHidden(true)
            
        }//NavigationView
        
    }
}


struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
