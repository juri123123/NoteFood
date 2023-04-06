//
//  ProfileView.swift
//  NoteFood
//
//  Created by juri on 2023/03/29.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View{
        
        VStack{
            Text("Profile")
            
            Divider()
                .frame(width: 280, height:2)
                .overlay(.gray)
                .frame(height:30)
            
            Spacer()
        }
 
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
