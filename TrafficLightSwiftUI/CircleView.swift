//
//  CircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Андрей Парчуков on 08.09.2022.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    @Binding var selectedColor: Color
    
    var body: some View {
        Circle()
            .fill(color.opacity(color == selectedColor ? 1 : 0.3))
            .frame(width: 120, height: 120)
            .overlay(
                Circle()
                    .stroke(.white, lineWidth: 3)
            )
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, selectedColor: .constant(.green))
    }
}
