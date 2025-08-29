//
//  FloatingInputField.swift
//  OnboardingModule
//
//  Created by shivam dahale on 30/06/25.
//

import SwiftUI

struct FloatingInputField: View {
    
    var inputField : String
    @FocusState var isFocused: Bool
    var showError: Bool
    @Binding var userInput: String
    var isSecure: Bool = false
    @State var isSecureVisible = false
    
    var body: some View {
        ZStack {
            HStack {
                Text(inputField)
                    .font(.system(size: isFocused ? 10 : 14))
                    .foregroundColor(showError ? .red.opacity(0.8) : .gray)
                    .offset(x: isFocused || !userInput.isEmpty ? 1 : 0 ,
                            y: isFocused || !userInput.isEmpty ? -15 : 0 )
                    .padding(.leading)
                
                if isSecure{
                    if isSecureVisible {
                        
                        TextField("", text: $userInput)
                            .font(.system(size: 14))
                            .focused($isFocused)
                            .foregroundColor(showError ? .red.opacity(0.4) : .gray)
                            .keyboardType(.numberPad)
                            .padding()
                        
                    }else {
                        
                        SecureField("", text: $userInput)
                            .font(.system(size: 14))
                            .focused($isFocused)
                            .foregroundColor(showError ? .red.opacity(0.4) : .gray)
                            .keyboardType(.numberPad)
                            .padding()
                    }
                }else {
                    
                    TextField("", text: $userInput)
                        .font(.system(size: 14))
                        .focused($isFocused)
                        .foregroundColor(showError ? .red.opacity(0.4) : .gray)
                        .keyboardType(.numberPad)
                        .padding()
                }
                
                HStack{
                    if showError {
                        
                        Image(systemName: "exclamationmark.circle")
                            .foregroundColor(.red.opacity(0.6))
                            .padding(.trailing,8)
                        
                    }else if isSecure{
                         
                        Button(action: {
                            isSecureVisible.toggle()
                        }){
                            Image(systemName: isSecureVisible ? "eye" : "eye.slash")
                                .foregroundColor(.red.opacity(0.6))
                                .padding(.trailing,8)
                        }
                        
                    }
                }
                    
            }
        }
    }
}

