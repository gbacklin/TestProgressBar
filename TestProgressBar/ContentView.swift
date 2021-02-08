//
//  ContentView.swift
//  TestProgressBar
//
//  Created by Gene Backlin on 2/8/21.
//
// Reference: https://www.simpleswiftguide.com/how-to-build-linear-progress-bar-in-swiftui/
//

import SwiftUI

struct ContentView: View {
    @State var progressValue: CGFloat = 0.0
    
    var body: some View {
        VStack {
            ProgressBarView(value: $progressValue).frame(height: 20)
            
            Button(action: {
                self.startProgressBar()
            }) {
                Text("Start Progress")
            }.padding()
            
            Button(action: {
                self.resetProgressBar()
            }) {
                Text("Reset")
            }

            Spacer()
        }.padding()
    }
    
    func startProgressBar() {
        for _ in 0...80 {
            self.progressValue += 0.015
        }
    }
    
    func resetProgressBar() {
        self.progressValue = 0.0
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
