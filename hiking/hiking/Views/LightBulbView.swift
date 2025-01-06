//
//  LightBulbView.swift
//  hiking
//
//  Created by Rafael Nunes on 06/01/25.
//

import SwiftUI
import Observation

struct LightBulbView: View {
    
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        
        @Bindable var appState = appState
        
        Image(systemName: appState.isLightOn ? "lightbulb.fill": "lightbulb")
            .font(.largeTitle)
            .foregroundStyle(appState.isLightOn ? .yellow: .black)
            .padding()
            .background(Color(.clear))
            .onTapGesture {
                withAnimation {
                    appState.isLightOn.toggle()
                }
            }
    }
}
