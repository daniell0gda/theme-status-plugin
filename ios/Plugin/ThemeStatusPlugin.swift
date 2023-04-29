import Foundation
import UIKit
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ThemeStatusPlugin)
public class ThemeStatusPlugin: CAPPlugin {

   @objc public class PDTworkiThemeStatus: NSObject {

       @objc public static func currentTheme() -> String {
           let currentWindow = UIApplication.shared.windows.first { $0.isKeyWindow }
           if let style = currentWindow?.traitCollection.userInterfaceStyle {
               switch style {
               case .light:
                   return "false"
               case .dark:
                   return "true"
               case .unspecified:
                   return "undefined"
               }
           } else {
               return "undefined"
           }
       }
   }
}
