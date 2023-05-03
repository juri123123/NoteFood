//
//  ProfileView.swift
//  NoteFood
//
//  Created by juri on 2023/03/29.
//

import SwiftUI

struct ProfileView: View {
    let genderItems: [String] = ["male", "female"]
    
    @State private var selectedGender = ""
    @State private var height: Int = 0
    @State private var weight: Int = 0
    
    var body: some View{
        ZStack {
            ColorManager.BackgroundColor.ignoresSafeArea()
            VStack{
                VStack(alignment: .leading){
                    Text("Profile")
                        .font(.title2)
                    
                    Divider()
                        .frame(width: 350, height:2)
                        .overlay(.gray)
                        .frame(height:30)
                    
                    HStack(spacing: 15){
                        Text("gender: ")
                        Picker("selected student", selection: $selectedGender) {
                            ForEach(0 ..< genderItems.count) {
                                Text(self.genderItems[$0])
                            }
                        }
                        //                    Spacer()
                        
                    }.padding()
                    HStack{
                        Text("height: ")
                        TextField("height: ", value: $height, formatter: NumberFormatter())
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.numberPad)
                            .frame(width: 80)
                        Text("cm")
                        
                    }.padding()
                    HStack{
                        Text("weight: ")
                        TextField("height: ", value: $weight, formatter: NumberFormatter())
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.numberPad)
                            .frame(width: 80)
                        Text("kg")
                        
                    }.padding()
                    
                    Spacer()
                }
                
                Button(action: {
                    //DB에 회원정보 저장
                    //mainpage로 이동
                }, label: {
                    ZStack{
                        Capsule()
                            .frame(height: 50)
                            .foregroundColor(.orange)
                        Text("SAVE")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                    }
                })
                .padding()
                Spacer()
            }
            
        }
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
