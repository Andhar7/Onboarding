//
//  ContView.swift
//  StewartTeach
//
//  Created by Andrej Kling on 09.11.20.
//

import SwiftUI

struct ContView: View {
    //MARK: - PROPERTIES
    @State var isPresented = false
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Some Content Here:")
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(.Color05))
                        .frame(width: 210, height: 210)
                }
                Button("Present Modal") {
                    
                    self.isPresented = true
                }
                .foregroundColor(.white)
                .sheet(isPresented: $isPresented) {
                    ModalPresentaion()
                }
            }
            .navigationBarTitle("Snippets Demo")
            .navigationBarItems(trailing: Button(action: {
                self.isPresented = true
            }, label: {
                Image(systemName: "plus.circle.fill")
            }))
            .sheet(isPresented: $isPresented) {
                ModalPresentaion()
            }
        }
    }
}

//MARK: - PREVIEW
struct ContView_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEach([
            ColorScheme.light,
            ColorScheme.dark
        ], id:\.self) {scheme in
            ContView()
                .colorScheme(scheme)
                .previewLayout(.sizeThatFits)
              //  .previewDevice("iPhone 8")
              //  .previewDevice("iPhone 8 Plus")
               // .previewDevice("iPhone 11")
               // .previewDevice("iPhone 11 Pro")
              //  .previewDevice("iPhone 11 Pro Max")
              //  .previewDevice("iPhone 12")
               // .previewDevice("iPhone 12 Pro")
              //  .previewDevice("iPhone 12 Pro Max")
              //  .previewLayout(.fixed(width: 500, height: 800))
        }
        
    }
}
