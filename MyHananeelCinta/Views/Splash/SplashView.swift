//
//  SplashView.swift
//  MyHananeelCinta
//
//  Created by Reynaldo on 20/05/25.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"
    
    var body: some View {
        if isActive {
            //LoginView()
        } else {
            VStack {
                Spacer()
                
                // Logo di tengah
                Image("AppLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                Spacer()
                
                // Versi aplikasi di bawah
                Text("Version \(appVersion)")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white) // Ganti warna jika perlu
            .onAppear {
                // Delay 3 detik sebelum pindah
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
