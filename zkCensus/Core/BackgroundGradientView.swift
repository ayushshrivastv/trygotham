import SwiftUI

struct BackgroundGradientView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [
                Color(red: 0.2, green: 0.9, blue: 0.2), // Radiant Lime Green
                Color(red: 0.0, green: 0.3, blue: 0.9)  // Vibrant Blue
            ]),
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundGradientView()
}
