//
//  ContentView.swift
//  SwiftIUAssignment3
//
//  Created by Brian Bachow on 3/7/22.
//

import SwiftUI

struct ContentView: View {
    @State var userNameInput = ""
    @State var passwordInput = ""
    @State var isLoggedIn : Bool = false
    var body: some View {
        
        NavigationView{
            ScrollView{
            VStack{
                Text("Login").padding().font(.title)
                HStack{
                    Text("Username").padding()
                    Spacer()
                }
                TextField("Enter username...", text: $userNameInput).padding()
                HStack{
                    Text("Password").padding()
                    Spacer()
                }
                TextField("Enter password...", text: $userNameInput).padding()
                HStack{
                    Spacer()
                    Button(action: {
                        print("pressed forgot password button")
                    }, label: {
                        Text("Forgot Password?").font(.footnote)
                    }).padding()
                }
                NavigationLink(destination: ProfilePage()){
                                   Text("LOGIN")
                               }.padding()
                Text("Or Login With").padding().font(.footnote)
                HStack{
                    Spacer()
                    Image("googleIcon").resizable().scaledToFill().padding(10)
                    Spacer()
                    Image("facebookIcon").resizable().scaledToFill().padding(10)
                    Spacer()
                    Image("emailIcon").resizable().scaledToFill().padding(10)
                    Spacer()
                }
                Text("Or Signup With").padding().font(.footnote)
            }.padding(.horizontal, 10)
                NavigationLink(destination: SignUpView()){
                    Text("Sign Up").font(.footnote)
                               }.padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
