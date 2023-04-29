import Foundation

@objc public class ThemeStatus: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
