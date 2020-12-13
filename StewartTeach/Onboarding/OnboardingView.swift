//
//  OnboardingView.swift
//  StewartTeach
//
//  Created by Andrej Kling on 13.12.20.
//

import SwiftUI

// we get started with added images to assets catalog and chose Vector Data and Single Scales
struct OnboardingView: View {
    //MARK: - PROPERTIES
    @State private var isOnboarding = false
    @AppStorage ("hgfsgfsfkjggb") var hasOnboarded = false
    var onboardSet = OnboardData.buildSet(widgth: 300, height: 400) // we can change widgth and height ....  
    var body: some View {
        // we are changed accent color to 0, 128, 21 ....
        NavigationView {
            ZStack {
                VStack {
                    Image("Teamwork")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("This is a demo of Onboarding Screen and more useful Content!")
                    .font(.system(size: 21, weight: .regular, design: .serif))
                }
                .padding(.horizontal)
                .edgesIgnoringSafeArea(.bottom)
                .disabled(isOnboarding)
                .blur(radius: isOnboarding ?  3.0 : 0)
                .navigationTitle("Onboarding Screens")
                if isOnboarding {
                    OnBoardingScreens(isPresenting: $isOnboarding, onboardSet:  onboardSet)

                }
            }
            .onAppear{
                hasOnboarded = false
                if !hasOnboarded{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                        withAnimation{
                            isOnboarding.toggle()
                            hasOnboarded = true
                        }
                    }
                }
            }
             
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
