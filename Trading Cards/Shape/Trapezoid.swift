//
//  Trapezoid.swift
//  Trading Cards
//
//  Created by 李泽宇 on 2024-11-29.
//

import SwiftUI

struct Trapezoid: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX - rect.width * 0.2, y: rect.maxY))
              
        path.addLine(to: CGPoint(x: rect.minX + rect.width * 0.2, y: rect.maxY))

        
        return path
    }
}

#Preview {
    Trapezoid()
//        .frame(width: 200, height: 100) // Adjust the size of the trapezoid
}
