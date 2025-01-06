//
//  HikeDetailView.swift
//  hiking
//
//  Created by Rafael Nunes on 27/11/24.
//

import SwiftUI

struct HikeDetailView: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill: .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Text(hike.name)
                .font(.title)
            Text("\(hike.miles.formatted()) miles")
            Spacer()
            LightBulbView()
        }.navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        HikeDetailView(hike: Hike(name: "Salmonberry Trail", photo: "sal", miles: 6))
            .environment(AppState())
    }
}
