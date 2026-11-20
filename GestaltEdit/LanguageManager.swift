import SwiftUI

@MainActor
final class LanguageManager: ObservableObject {
    private static let storageKey = "selectedLanguage"

    @Published var selectedLanguage: String {
        didSet {
            UserDefaults.standard.set(selectedLanguage, forKey: Self.storageKey)
        }
    }

    var locale: Locale {
        Locale(identifier: selectedLanguage)
    }

    init() {
        let savedLanguage = UserDefaults.standard.string(forKey: Self.storageKey)
        if let savedLanguage, ["en", "tr"].contains(savedLanguage) {
            selectedLanguage = savedLanguage
        } else {
            selectedLanguage = "en"
        }
    }
}
