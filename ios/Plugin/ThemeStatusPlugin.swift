import Foundation
import UIKit
import Capacitor

@objc(ThemeStatusPlugin)
public class ThemeStatusPlugin: CAPPlugin {

    @objc func isDarkMode(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            let currentWindow = UIApplication.shared.windows.first { $0.isKeyWindow }
            if let style = currentWindow?.traitCollection.userInterfaceStyle {
                switch style {
                case .light:
                    call.resolve([
                        "value": false
                    ])
                case .dark:
                    call.resolve([
                        "value": true
                    ])
                case .unspecified:
                    call.resolve([
                        "value": "undefined"
                    ])
                }
            } else {
                call.resolve([
                    "value": "undefined"
                ])
            }
        }
    }
}
