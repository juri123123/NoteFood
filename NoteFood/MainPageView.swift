//
//  MainPageView.swift
//  NoteFood
//
//  Created by juri on 2023/04/05.
//

import SwiftUI

struct ColorManager {
    static let BackgroundColor = Color("BackgroundColor")
}

struct MainPageView: View {
    
    @State var currentDate: Date = Date()
    
    var today = Date()
    
    var body: some View {
        NavigationView {
            ZStack {
                ColorManager.BackgroundColor.ignoresSafeArea()
                VStack {
                    HStack {
                        NavigationLink(destination: ProfileView()) {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.orange)
                                .font(.system(size: 30))
                            
                            
                        }
                        .padding(.leading)
                        Spacer()
                    }
                    CustomCalendar(currentDate: $currentDate)
                    HStack(spacing: 200) {
                        Button(action: {
                            
                        }) {
                            ZStack{
                                Circle()
                                    .frame(width: 45)
                                    .foregroundColor(.orange)
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                            }
                        }
                        
                        Button(action: {
                            
                        }) {
                            ZStack{
                                Circle()
                                    .frame(width: 45)
                                    .foregroundColor(.orange)
                                Image(systemName: "checkmark")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                            }
                        }
                    }//HStack
                    
                    
                    
                }//VStack
                
            }//ZStack
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
            .navigationBarHidden(true)
            
        }//NavigationView
        
    }
}


struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
