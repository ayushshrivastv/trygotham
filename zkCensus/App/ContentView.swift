import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authManager: AuthenticationManager
    @Environment(\.scenePhase) var scenePhase
    @State private var showSplash = true

    var body: some View {
        Group {
            if showSplash {
                SplashScreenView(isActive: $showSplash)
            } else if authManager.isAuthenticated {
                // Show appropriate dashboard based on user type
                if authManager.userType == .company {
                    CompanyDashboardView()
                } else {
                    UserDashboardView()
                }
            } else {
                // Show onboarding
                OnboardingView()
            }
        }
        .onChange(of: scenePhase) { newPhase in
            if newPhase == .active && !showSplash {
                // Reset splash screen when app becomes active from background
                showSplash = true
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AuthenticationManager.shared)
        .environmentObject(SolanaService.shared)
}
