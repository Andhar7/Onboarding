//
//  ModalPresentaion.swift
//  StewartTeach
//
//  Created by Andrej Kling on 09.11.20.
//

import SwiftUI

struct ModalPresentaion: View {
    //MARK: - PROPERTIES
    
      @Environment (\.presentationMode)  var presentationMode

    //MARK: - BODY
    var body: some View {
        NavigationView {
            Text("This is a Modal View")
                .navigationBarTitle("Modal Window", displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "plus.circle.fill")
                }))
        }
    }
}
//MARK: - PREVIEW
struct ModalPresentaion_Previews: PreviewProvider {
    static var previews: some View {
        ModalPresentaion()
    }
}
