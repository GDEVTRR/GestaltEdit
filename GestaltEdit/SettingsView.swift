import SwiftUI

struct SettingsView: View {
    @EnvironmentObject private var languageManager: LanguageManager

    var body: some View {
        NavigationStack {
            Form {
                Section("Language") {
                    Picker("App Language", selection: $languageManager.selectedLanguage) {
                        Text("English").tag("en")
                        Text("Türkçe").tag("tr")
                    }
                    .pickerStyle(.navigationLink)
                }

                Section {
                    Text("Choose the language used throughout the app.")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
            }
            .navigationTitle("Settings")
        }
    }
}
