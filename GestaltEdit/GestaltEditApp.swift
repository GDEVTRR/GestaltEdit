import SwiftUI

@main
struct GestaltEditApp: App {
    @StateObject private var viewModel = GestaltViewModel()
    @StateObject private var languageManager = LanguageManager()

    init() {
        AutomationCommand.runIfNeeded()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
                .environmentObject(languageManager)
                .environment(\.locale, languageManager.locale)
        }
    }
}
