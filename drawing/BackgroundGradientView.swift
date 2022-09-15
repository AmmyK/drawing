//
//  BackgroundGradientView.swift
//  drawing
//
//  Created by amamiya on 2022/09/15.
//

import SwiftUI

struct BackgroundGradientView: View {
    var body: some View {
        LinearGradient(stops: [.init(color: .green, location: 0.5),
                               .init(color: .indigo, location: 0.6)],
                       startPoint: .top,
                       endPoint: .bottom)
        .ignoresSafeArea()
    }
}

struct BackgroundGradientView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradientView()
    }
}
