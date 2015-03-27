import Foundation
import UIKit

class GlobalConstants {
    struct Facebook {
        static let permissions = ["public_profile", "email", "user_friends"]
    }
    struct Notifications {
        static let UserLoggedIn = "Notifications.UserLoggedIn"
        static let UserLoggedOut = "Notifications.UserLoggedOut"
    }
    struct LayoutParameters {
        static let messageCellLabelWidth: CGFloat = 0.8
        static let messageCellLabelInset: CGFloat = 8.0
        static let textViewMaxHeight: CGFloat = 120.0
        static let textViewMinHeight: CGFloat = 30.0
        static let messageFont = UIFont(name: "HelveticaNeue", size: 17)
    }
    struct ScreensNames {
        static let Chat = NSLocalizedString("Chat", comment: "Chat's screen name")
    }
    struct UserDefaults {
        static let LastUserID = "com.App4Brand.LastUserID"
    }
}

let p = GlobalConstants.Facebook.permissions