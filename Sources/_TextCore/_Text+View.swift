import SwiftUI

// MARK: Text Configuration Applier
extension View {
  public func textStyle<Style: TextStyle>(
    _ style: Style
  ) -> some View {
    textStyle(style.applyStyle)
  }
}

// MARK: Text Closure Configurator

extension View {
  public func textStyle(
    _ transform: @escaping (SwiftUI.Text) -> SwiftUI.Text = { SwiftUI.Text("\($0)") }
  ) -> some View {
    environment(\.textConfiguration, transform)
  }
}


// MARK: Text Options

public enum TextOption {
  case fontWeight(_ weight: Font.Weight?)
  case bold(_ enabled: Bool = true)
  case italic(_ enabled: Bool = true)
// FIXME: needs iOS 15
//  case monospacedDigit(_ enabled: Bool = true)
  case strikethrough(_ active: Bool = true, color: Color? = nil)
  case underline(_ active: Bool = true, color: Color? = nil)
  case kerning(_ kerning: CGFloat)
  case tracking(_ tracking: CGFloat)
  case baselineOffset(_ baselineOffset: CGFloat)
}

extension View {
  @ViewBuilder
  public func text(_ option: TextOption) -> some View {
    switch option {
    case .fontWeight(let weight):
      fontWeight(weight)
    case .bold(let enabled):
      bold(enabled)
    case .italic(let enabled):
      italic(enabled)
// FIXME: needs iOS 15
//    case .monospacedDigit(let enabled):
//      monospacedDigit(enabled)
    case .strikethrough(let active, let color):
      strikethrough(active, color: color)
    case .underline(let active, let color):
      underline(active, color: color)
    case .kerning(let kern):
      kerning(kern)
    case .tracking(let track):
      tracking(track)
    case .baselineOffset(let offset):
      baselineOffset(offset)
    }
  }
}

// MARK: Internal

extension View {
  func fontWeight(_ weight: Font.Weight?) -> some View {
    environment(\.fontWeight, weight)
  }

  func bold(_ enabled: Bool = true) -> some View {
    environment(\.bold, enabled)
  }

  func italic(_ enabled: Bool = true) -> some View {
    environment(\.italic, enabled)
  }

  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  func monospacedDigit(_ enabled: Bool = true) -> some View {
    environment(\.monospacedDigit, enabled)
  }

  func strikethrough(_ active: Bool = true, color: Color? = nil) -> some View {
    environment(\.strikethrough, (active: active, color: color))
  }

  func underline(_ active: Bool = true, color: Color? = nil) -> some View {
    environment(\.underline, (active: active, color: color))
  }

  func kerning(_ kerning: CGFloat) -> some View {
    environment(\.kerning, kerning)
  }

  func tracking(_ tracking: CGFloat) -> some View {
    environment(\.tracking, tracking)
  }

  func baselineOffset(_ baselineOffset: CGFloat) -> some View {
    environment(\.baselineOffset, baselineOffset)
  }
}
