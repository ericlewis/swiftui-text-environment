import SwiftUI

extension _Text {
  public static func + (lhs: _Text, rhs: _Text) -> _Text {
    _Text(lhs._text + rhs._text)
  }

  public static func + (lhs: SwiftUI.Text, rhs: _Text) -> _Text {
    _Text(lhs) + rhs
  }

  public static func + (lhs: _Text, rhs: SwiftUI.Text) -> _Text {
    lhs + _Text(rhs)
  }
}
