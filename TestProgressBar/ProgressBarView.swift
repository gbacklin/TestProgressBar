//
//  ProgressBarView.swift
//  TestProgressBar
//
//  Created by Gene Backlin on 2/8/21.
//

import SwiftUI

struct ProgressBarView: View {
    @Binding var value: CGFloat

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.systemTeal))
                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color(UIColor.systemBlue))
                    .animation(.linear)
            }.cornerRadius(45.0)
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    @State static var val = CGFloat(0.2)

    static var previews: some View {
        ProgressBarView(value: $val).frame(height: 20)
    }
}
