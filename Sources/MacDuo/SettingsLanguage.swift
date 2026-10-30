import Foundation

/// English language localization for the panel.
enum SettingsLanguage: String, CaseIterable {
    case english = "en"

    static var preferred: Self { .english }

    // Packaged apps keep resources in Contents/Resources; SwiftPM's generated
    // accessor only searches the app root and the original build directory.
    private static var resources: Bundle {
        if let url = Bundle.main.resourceURL?.appendingPathComponent("MacDuo_MacDuo.bundle"),
           let bundle = Bundle(url: url) { return bundle }
        return Bundle.module
    }

    private var bundle: Bundle {
        Self.lprojBundle(for: rawValue, in: Self.resources) ?? Self.resources
    }

    static func lprojBundle(for code: String, in resources: Bundle) -> Bundle? {
        for name in [code, code.lowercased()] {
            if let path = resources.path(forResource: name, ofType: "lproj"),
               let bundle = Bundle(path: path) {
                return bundle
            }
        }
        return nil
    }

    func localized(_ key: String) -> String {
        bundle.localizedString(forKey: key, value: key, table: nil)
    }
}
