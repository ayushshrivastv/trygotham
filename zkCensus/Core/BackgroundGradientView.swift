import SwiftUI

struct BackgroundGradientView: View {
    var body: some View {
        LinearGradient(

            // app theme options below

            // gradient: Gradient(colors: [
            //     Color(red: 0.2, green: 0.9, blue: 0.2), // Radiant Lime Green
            //     Color(red: 0.0, green: 0.3, blue: 0.9) // Vibrant Blue
            // ]),

            // white -> some issue with the profile page

            // gradient: Gradient(colors: [
            //     Color(white: 0.98),  // Near White
            //     Color(white: 1.0),  // Pure White
            // ]),

            // white but better

            // gradient: Gradient(colors: [
            //     Color(red: 0.95, green: 0.95, blue: 0.92),  // Very Light Beige
            //     Color(red: 1.0, green: 1.0, blue: 1.0),  // Pure White
            // ]),

            gradient: Gradient(colors: [
                Color(red: 0.05, green: 0.1, blue: 0.2),  // Deep Navy
                Color(red: 0.1, green: 0.1, blue: 0.1),  // Dark Charcoal
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
