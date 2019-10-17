//
//  SplashView.swift
//  swiftui-splash-view
//
//  Created by Trịnh Toàn Trung on 10/17/19.
//  Copyright © 2019 Trịnh Toàn Trung. All rights reserved.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Spacer()
        }
        .background(Image("flash-screen")
            .resizable()
            .scaledToFill()
            .clipped())
        .edgesIgnoringSafeArea(.all)
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
