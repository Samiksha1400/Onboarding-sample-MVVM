//
//  Extensions.swift
//  OnboardingModule
//
//  Created by shivam dahale on 30/06/25.
//

import SwiftUI

extension Text {
    
    public func headerTextStyle() -> some View {
        
        self
            .font(.system(size: 18))
            .fontWeight(.bold)
            .foregroundColor(.primary)
            .padding(.top,8)
    }

    public func captionTextStyle() -> some View {
        
        self
            .font(.system(size: 12))
            .fontWeight(.medium)
            .foregroundColor(.primary)
            .padding(.top,4)
            .padding(.bottom,8)
    }
    
    public func errorTextStyle() -> some View {
        
        self
            .font(.system(size: 12))
            .foregroundColor(.red.opacity(0.6))
    }
    
    public func footnoteTextStyle() -> some View {
        
        self
            .font(.system(size: 11))
            .foregroundColor(.gray.opacity(0.9))
    }
    
}

extension View {
    public func roundedButton(text: String, action: @escaping () -> Void) -> some View {
        Button(action: action){
            RoundedRectangle(cornerRadius: 32)
                .frame(height : height / 22)
                .overlay(
                    Text(text)
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                )
        }
        .padding(.top,4)
    }
}
