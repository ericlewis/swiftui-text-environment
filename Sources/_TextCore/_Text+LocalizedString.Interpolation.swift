import SwiftUI

extension LocalizedStringKey.StringInterpolation {
  public mutating func appendInterpolation(_ text: _Text) {
    self.appendInterpolation(text._text)
  }
}
