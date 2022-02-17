import SwiftUI

extension _Text {
  public func foregroundColor(_ color: Color?) -> _Text {
    _Text(_text.foregroundColor(color))
  }

  public func font(_ font: Font?) -> _Text {
    _Text(_text.font(font))
  }

  public func fontWeight(_ weight: Font.Weight?) -> _Text {
    _Text(_text.fontWeight(weight))
  }

  public func bold() -> _Text {
    _Text(_text.bold())
  }

  public func italic() -> _Text {
    _Text(_text.italic())
  }

  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public func monospacedDigit() -> _Text {
    _Text(_text.monospacedDigit())
  }

  public func strikethrough(_ active: Bool = true, color: Color? = nil) -> _Text {
    _Text(_text.strikethrough(active, color: color))
  }

  public func underline(_ active: Bool = true, color: Color? = nil) -> _Text {
    _Text(_text.underline(active, color: color))
  }

  public func kerning(_ kerning: CGFloat) -> _Text {
    _Text(_text.kerning(kerning))
  }

  public func tracking(_ tracking: CGFloat) -> _Text {
    _Text(_text.tracking(tracking))
  }

  public func baselineOffset(_ baselineOffset: CGFloat) -> _Text {
    _Text(_text.baselineOffset(baselineOffset))
  }
}

extension _Text {
  public func textStyle<Style: TextStyle>(
    _ style: Style
  ) -> some View {
    textStyle(style.applyStyle)
  }
}

// MARK: Text Closure Configurator

extension _Text {
  public func textStyle(
    _ transform: @escaping (SwiftUI.Text) -> SwiftUI.Text = { $0 }
  ) -> some View {
    transform(self._text)
  }
}

extension _Text {
  public func eraseToText() -> Text {
    self.body
  }
}
