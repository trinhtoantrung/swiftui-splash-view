//
//  ContentView.swift
//  swiftui-splash-view
//
//  Created by Trịnh Toàn Trung on 10/17/19.
//  Copyright © 2019 Trịnh Toàn Trung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showSplash = true
    
    var body: some View {
        ZStack {
            HomeView()
            SplashView()
                .opacity(showSplash ? 1 : 0)
                .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation() {
                        self.showSplash = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
