//
//  OnBoardingScreens.swift
//  StewartTeach
//
//  Created by Andrej Kling on 13.12.20.
//

import SwiftUI

struct OnBoardingScreens: View {
    //MARK: - PROPERTIES
    @Binding var isPresenting: Bool
    var onboardSet: OnboardSet
    var body: some View {
        VStack{
            TabView {
                ForEach(onboardSet.cards) { item in
                    OBCardView(card: item, width: onboardSet.width, height: onboardSet.height, isShowing: $isPresenting)
                }
            }
            .frame(height: onboardSet.height + 120)
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            Spacer()
        }
    }
}

struct OnBoardingScreens_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreens(isPresenting: .constant(true), onboardSet: OnboardSet.previewSet())
    }
}
