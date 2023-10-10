//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Antonio Vuono on 09/10/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var username = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("threads-app-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name", text: $fullName)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your username", text: $username)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            Button {
                // action
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                // Action
            } label: {
                HStack(spacing: 3) {
                    Text("Don`t have an account")
                    
                    Text("Sign Up")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .foregroundColor(.black)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
}
