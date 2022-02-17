import SwiftUI

public struct _Text: Equatable, View {
  @usableFromInline
  internal let _text: SwiftUI.Text

  @Environment(\.fontWeight)
  private var fontWeight

  @Environment(\.bold)
  private var fontBold

  @Environment(\.italic)
  private var fontItalic

  @Environment(\.monospacedDigit)
  private var fontMonospacedDigit

  @Environment(\.strikethrough)
  private var fontStrikethrough

  @Environment(\.underline)
  private var fontUnderline

  @Environment(\.kerning)
  private var fontKerning

  @Environment(\.tracking)
  private var fontTracking

  @Environment(\.baselineOffset)
  private var fontBaselineOffset

  @Environment(\.textConfiguration)
  private var configuration

  public var body: SwiftUI.Text {
    configuration(makeText())
  }

  private func makeText() -> SwiftUI.Text {
    var text = self._text
      .kerning(fontKerning)
      .tracking(fontTracking)
      .baselineOffset(fontBaselineOffset)
      .fontWeight(fontWeight)
      .strikethrough(fontStrikethrough.active, color: fontStrikethrough.color)
      .underline(fontUnderline.active, color: fontUnderline.color)

    if fontBold {
      text = text.bold()
    }

    if fontItalic {
      text = text.italic()
    }

// FIXME: needs iOS 15
//    if fontMonospacedDigit {
//      text = text.monospacedDigit()
//    }

    return text
  }

  public static func ==(lhs: Self, rhs: Self) -> Bool {
    lhs._text == rhs._text
  }

  public static func ==(lhs: Self, rhs: SwiftUI.Text) -> Bool {
    lhs._text == rhs
  }

  public static func ==(lhs: SwiftUI.Text, rhs: Self) -> Bool {
    lhs == rhs._text
  }
}
