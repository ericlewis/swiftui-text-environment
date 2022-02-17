import SwiftUI

// MARK: Interface

public protocol TextStyle {
  func applyStyle(_ text: SwiftUI.Text) -> SwiftUI.Text
}

// MARK: Automatic Style

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension TextStyle where Self == AutomaticTextStyle {
  static var automatic: Self { .init() }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct AutomaticTextStyle: TextStyle {
  func applyStyle(_ text: SwiftUI.Text) -> SwiftUI.Text {
    text
  }
}
