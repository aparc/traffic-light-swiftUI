//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Андрей Парчуков on 08.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentColor = Color.clear
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                semaphore
                Spacer()
                button
            }
            .padding()
        }
    }
    
    private var semaphore: some View {
        VStack(spacing: 20) {
            CircleView(color: .red, selectedColor: currentColor)
            CircleView(color: .yellow, selectedColor: currentColor)
            CircleView(color: .green, selectedColor: currentColor)
        }
    }
    
    private var button: some View {
        Button(action: changeColor) {
            Text(currentColor == .clear ? "START" : "NEXT")
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 180)
                .padding(.vertical, 8)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.white, lineWidth: 3)
                )
        }
    }
    
    private func changeColor() {
        switch currentColor {
        case .red:
            currentColor = .yellow
        case .yellow:
            currentColor = .green
        case .green:
            currentColor = .red
        default:
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
