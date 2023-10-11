//
//  DetailView.swift
//  FriendsGiving
//
//  Created by apple on 11.10.2023.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.dismiss) private var dismiss
   // @EnvironmentObject var friendsVM = FriendsViewModel
    @State var friend: Friend
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Name:")
                .bold()
            TextField("Name", text: $friend.name)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            
            Text("Bringing:")
                .bold()
            TextField("Bringing", text: $friend.bringing)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            
            Text("Notes:")
                .bold()
            TextField("Notes", text: $friend.notes)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            
            Spacer()
            
        }
        .padding()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Cuncel") {
                    dismiss()
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Save") {
                    //Save code
                    dismiss()
                }
            }
        }
        .navigationBarBackButtonHidden()
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(friend: Friend())
                .environmentObject(FriendsViewModel())
        }
    }
}
