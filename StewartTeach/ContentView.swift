//
//  ContentView.swift
//  StewartTeach
//
//  Created by Andrej Kling on 09.11.20.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack {
        //    RoundedRectangle(cornerRadius: 12)
       
          //  .fill(Color.red)
          //  .fill(Color(UIColor.red))
          //  .fill(Color(UIColor(red: 92/255, green: 173/255, blue: 207/255, alpha: 1.0)))
           // .fill(Color(UIColor(named: "Color05")!))
           // .fill(Color(Color04))
            //.fill(Color(MyClass().Color05))
          //  .fill(Color(MyClass.Color02))
            //.fill(Color(UIColor.Color03))
//            .fill(Color(.Color04))
//            .frame(width: 210, height: 210)
            RoundedRectangle.first
            RoundedRectangle.second
            RoundedRectangle.third
        }
    }
}
//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
