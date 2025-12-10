import SwiftUI
import SwiftData

@main
struct TrippAholic: App {

    @State private var showWelcome = true

    var body: some Scene {
        WindowGroup {
            if showWelcome {
                TripWelcome(onStartAdventure: {
                    withAnimation {
                        showWelcome = false
                    }
                })
            } else {
                TripListView()
            }
        }
        .modelContainer(for: Tripp.self)
    }
}