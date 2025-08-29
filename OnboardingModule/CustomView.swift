//
//  CustomView.swift
//  OnboardingModule
//
//  Created by shivam dahale on 11/07/25.
//

import SwiftUI
import UIKit

struct CustomView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}

#Preview {
    CustomView()
}
