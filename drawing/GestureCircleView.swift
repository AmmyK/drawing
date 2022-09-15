//
//  GestureCircleView.swift
//  drawing
//
//  Created by amamiya on 2022/09/15.
//

import SwiftUI

struct GestureCircleView: View {
    @State private var location: CGPoint = CGPoint(x: 0, y: 0)
    var body: some View {
        ZStack {
            BackgroundGradientView()
            VStack {
                Text("x:\(location.x)")
                Text("y:\(location.y)")
                Circle()
                    .fill(Color.blue)
                    .frame(width: 80, height: 80)
                    .position(location)
                    .gesture(DragGesture().onChanged({ value in
                        self.location = value.location
                    }))
            }
        }
    }
}

struct GestureCircleView_Previews: PreviewProvider {
    static var previews: some View {
        GestureCircleView()
    }
}
