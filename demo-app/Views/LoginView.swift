//
//  LoginView.swift
//  demo-app
//
//  Created by Giorgio Mazzei on 02/03/23.
//

import SwiftUI



struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
    VStack {
            
        Spacer()
            TextField(
                    "User name (email address)",
                    text: $username
                )
        Spacer()
            TextField(
                    "Password (your password)",
                    text: $password
                )
        Spacer()
    }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
