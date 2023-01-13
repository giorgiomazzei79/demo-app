//
//  ContentView.swift
//  demo-app
//
//  Created by Giorgio Mazzei on 13/01/23.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.red, Color.blue],
    startPoint: .top, endPoint: .bottom)

struct LoginView: View {
    var body: some View {
        
        
        ZStack {
            backgroundGradient
                .ignoresSafeArea()
            NavigationStack {
                HStack{
                    Image(systemName: "sparkles.tv")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Spacer()
                }
                Spacer()
                Text("Log in to the OTT Swift App")
                Text("A place for film fans")
                HStack{
                    NavigationLink (
                        destination: HomeView(),
                        label: {
                            Label("Log in", systemImage: "house")
                        })
                    NavigationLink (
                        destination: HomeView(),
                        label: {
                            Label("Sign up", systemImage: "house")
                        })
                }
                Text("or browse freely")
                NavigationLink (
                    destination: HomeView(),
                    label: {
                        Label("Browse", systemImage: "house")
                    })
                Spacer()
            }
        }
        
        
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
