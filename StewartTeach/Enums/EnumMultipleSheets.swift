//
//  EnumMultipleSheets.swift
//  StewartTeach
//
//  Created by Andrej Kling on 13.12.20.
//

import SwiftUI

struct EnumMultipleSheets: View {
    //MARK: - PROPERTIES
    enum Target: Int, Identifiable {
        var id: Int {
            rawValue
        }
        case  red, green, yellow
    }
    @State private var isPresented = false
    @State private var selectedTarget: Target? = nil
    @State private var closeSheet = false
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 24.0) {
            Button("Red View") {
                selectedTarget = .red
            }
            .buttonStyle(CustomButton(bgColor: .red))
            Button("Green View") {
                selectedTarget = .green
            }
            .buttonStyle(CustomButton(bgColor: .green))
            Button("Yellow View") {
                selectedTarget = .yellow
            }
            .buttonStyle(CustomButton(bgColor: .yellow, fgColor: .red))
            
        }
        .sheet(item: $selectedTarget) { selectedTarget in
            switch selectedTarget {
                case .red:
                    Color.red
                        .edgesIgnoringSafeArea(.all)
                case .green:
                    Color.green
                        .edgesIgnoringSafeArea(.all)
                case .yellow:
                    Color.yellow
                        .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct CustomButton: ButtonStyle {
    var bgColor: Color
    var fgColor: Color = .white
    var width: CGFloat = 180
    
    func makeBody(configuration: Self.Configuration) -> some View{
        
        configuration.label
            .padding(21)
            .background(
                RoundedRectangle(cornerRadius: 21, style: .continuous)
                    .fill(bgColor)
                    .frame(width: width)
                )
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .foregroundColor(fgColor)
            .animation(.spring())
    }
}

struct EnumMultipleSheets_Previews: PreviewProvider {
    static var previews: some View {
        EnumMultipleSheets()
    }
}
