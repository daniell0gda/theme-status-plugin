import Foundation
import UIKit
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ThemeStatusPlugin)
public class ThemeStatusPlugin: CAPPlugin {

    @objc func isDarkMode(_ call: CAPPluginCall) {
        let currentWindow = UIApplication.shared.windows.first { $0.isKeyWindow }
        if currentWindow?.traitCollection.userInterfaceStyle == .dark {
            call.success([
                "value": true
            ])
        } else {
            call.success([
                "value": false
            ])
        }
    }
}
