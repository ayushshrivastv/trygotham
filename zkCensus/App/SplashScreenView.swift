import SwiftUI

struct SplashScreenView: View {
    @State private var isAnimating = false
    @State private var opacity: Double = 0
    @Binding var isActive: Bool
    
    var body: some View {
        ZStack {
            // Background gradient
            BackgroundGradientView()
            
            // Content
            VStack(spacing: 20) {
                Image("ghost_logo")
                    .resizable()
                    .cornerRadius(20)
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
                
                // Text("Ghost")
                //     .font(.system(size: 40, weight: .bold, design: .rounded))
                //     .foregroundColor(.black)
                //     .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)
            }
            .opacity(opacity)
            .scaleEffect(isAnimating ? 1.0 : 0.85)
        }
        .onAppear {
            // Quick fade in
            withAnimation(.easeIn(duration: 0.3)) {
                opacity = 1.0
                isAnimating = true
            }
            
            // Show for 1.5 seconds total, then dismiss
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation(.easeOut(duration: 0.2)) {
                    opacity = 0.0
                }
                
                // Dismiss after fade out
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    isActive = false
                }
            }
        }
    }
}

#Preview {
    SplashScreenView(isActive: .constant(false))
}
