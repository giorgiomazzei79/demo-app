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

struct MyButtonStyle: ButtonStyle {

  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
      .padding()
      .foregroundColor(.white)
      .background(configuration.isPressed ? Color.red : Color.blue)
  }

}

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
                    NavigationLink("Log in"){HomeView()}
                        .buttonStyle(MyButtonStyle())
                    NavigationLink("Sign up"){HomeView()}
                        .foregroundColor(.white).tint(.blue)
                }
                Text("or browse freely")
                NavigationLink("Browse"){HomeView()}
                    .foregroundColor(.white)
                Spacer()
            }.buttonStyle(.bordered)
        }
        
        
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
