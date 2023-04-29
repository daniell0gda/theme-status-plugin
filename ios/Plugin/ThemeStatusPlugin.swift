import Foundation
import UIKit
import Capacitor

import Foundation
import UIKit
import Capacitor

@objc(ThemeStatusPlugin)
public class ThemeStatusPlugin: CAPPlugin {

    @objc public class ThemeStatus: NSObject {

        @objc public static func isDarkMode(_ call: CAPPluginCall) {
            let currentWindow = UIApplication.shared.windows.first { $0.isKeyWindow }
            if let style = currentWindow?.traitCollection.userInterfaceStyle {
                switch style {
                case .light:
                    call.success([
                        "value": false
                    ])
                case .dark:
                    call.success([
                        "value": true
                    ])
                case .unspecified:
                    call.success([
                        "value": "undefined"
                    ])
                }
            } else {
                call.success([
                    "value": "undefined"
                ])
            }
        }
    }
}
