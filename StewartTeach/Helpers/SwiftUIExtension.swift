//
//  SwiftUIExtension.swift
//  StewartTeach
//
//  Created by Andrej Kling on 09.11.20.
//

import SwiftUI

extension RoundedRectangle {
    
    static let first: some View =  RoundedRectangle(cornerRadius: 12)
        .fill(Color(.Color01))
        .frame(width: 200, height: 200)
    static let second: some View  = RoundedRectangle(cornerRadius: 12)
        .fill(Color(.Color02))
        .frame(width: 200, height: 200)
    static let third: some View  = RoundedRectangle(cornerRadius: 12)
        .fill(Color(.Color03))
        .frame(width: 200, height: 200)
}
