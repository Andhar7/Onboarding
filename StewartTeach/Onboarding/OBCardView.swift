//
//  OBCardView.swift
//  StewartTeach
//
//  Created by Andrej Kling on 13.12.20.
//

import SwiftUI

struct OBCardView: View {
    //MARK: - PROPERTIES
    let card: OnBoardCard
    let width: CGFloat
    let height: CGFloat
    @Binding var isShowing: Bool
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(card.title)
                    .font(.system(size: 35, weight: .regular, design: .serif))
                Spacer()
                Button(action: {
                    withAnimation {
                        isShowing = false
                    }
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                }
            }
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(card.text)
            Spacer()
        }
        .font(.system(size: 21, weight: .regular, design: .serif))
        .padding(.horizontal)
        .padding(.top,12)
        .frame(width: width, height: height)
        .background(RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .fill(Color(.secondarySystemBackground))
                        .shadow(radius: 12))
   
    }
}

struct OBCardView_Previews: PreviewProvider {
    //MARK: - PROPERTIES
    static let onboardSet = OnboardSet.previewSet()
    static var previews: some View {
        Group {
            OBCardView(card: onboardSet.cards[0], width: 350, height: 350, isShowing: .constant(true))
                .previewLayout(.sizeThatFits)
            OBCardView(card: onboardSet.cards[3], width: 400, height: 500, isShowing: .constant(true))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
