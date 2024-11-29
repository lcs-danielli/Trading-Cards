//
//  Dimond.swift
//  Trading Cards
//
//  Created by 李泽宇 on 2024-11-26.
//

import SwiftUI
struct Diamond: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        // Define the shape
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

#Preview {
    Diamond ()
}
