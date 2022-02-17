import SwiftUI

// MARK: Font Weight

struct FontWeightKey: EnvironmentKey {
  static let defaultValue: Font.Weight? = nil
}

extension EnvironmentValues {
  var fontWeight: Font.Weight? {
    get { self[FontWeightKey.self] }
    set { self[FontWeightKey.self] = newValue}
  }
}

// MARK: Bold

struct BoldKey: EnvironmentKey {
  static let defaultValue: Bool = false
}

extension EnvironmentValues {
  var bold: Bool {
    get { self[BoldKey.self] }
    set { self[BoldKey.self] = newValue}
  }
}

// MARK: Italic

struct ItalicKey: EnvironmentKey {
  static let defaultValue: Bool = false
}

extension EnvironmentValues {
  var italic: Bool {
    get { self[ItalicKey.self] }
    set { self[ItalicKey.self] = newValue}
  }
}

// MARK: Monospaced Digit

struct MonospacedDigitKey: EnvironmentKey {
  static let defaultValue: Bool = false
}

extension EnvironmentValues {
  var monospacedDigit: Bool {
    get { self[MonospacedDigitKey.self] }
    set { self[MonospacedDigitKey.self] = newValue}
  }
}

// MARK: Strikethrough

struct StrikethroughKey: EnvironmentKey {
  static let defaultValue: (active: Bool, color: Color?) = (active: false, color: nil)
}

extension EnvironmentValues {
  var strikethrough: (active: Bool, color: Color?) {
    get { self[StrikethroughKey.self] }
    set { self[StrikethroughKey.self] = newValue }
  }
}

// MARK: Underline

struct UnderlineKey: EnvironmentKey {
  static let defaultValue: (active: Bool, color: Color?) = (active: false, color: nil)
}

extension EnvironmentValues {
  var underline: (active: Bool, color: Color?) {
    get { self[UnderlineKey.self] }
    set { self[UnderlineKey.self] = newValue }
  }
}

// MARK: Kerning

struct KerningKey: EnvironmentKey {
  static let defaultValue: CGFloat = 0
}

extension EnvironmentValues {
  var kerning: CGFloat {
    get { self[KerningKey.self] }
    set { self[KerningKey.self] = newValue }
  }
}

// MARK: Tracking

struct TrackingKey: EnvironmentKey {
  static let defaultValue: CGFloat = 0
}

extension EnvironmentValues {
  var tracking: CGFloat {
    get { self[TrackingKey.self] }
    set { self[TrackingKey.self] = newValue }
  }
}

// MARK: Baseline Offset

struct BaselineOffsetKey: EnvironmentKey {
  static let defaultValue: CGFloat = 0
}

extension EnvironmentValues {
  var baselineOffset: CGFloat {
    get { self[BaselineOffsetKey.self] }
    set { self[BaselineOffsetKey.self] = newValue }
  }
}

// MARK: Text Configuration

struct TextConfigurationKey: EnvironmentKey {
  static let defaultValue: (SwiftUI.Text) -> SwiftUI.Text = { SwiftUI.Text("\($0)") }
}

extension EnvironmentValues {
  var textConfiguration: (SwiftUI.Text) -> SwiftUI.Text {
    get { self[TextConfigurationKey.self] }
    set { self[TextConfigurationKey.self] = newValue }
  }
}
