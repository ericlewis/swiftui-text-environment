import SwiftUI

extension _Text {
  @inlinable public init(verbatim content: String) {
    self._text = SwiftUI.Text(verbatim: content)
  }

  @_disfavoredOverload
  public init<S>(_ content: S) where S : StringProtocol {
    self._text = SwiftUI.Text(content)
  }

  public init(_ text: SwiftUI.Text) {
    self._text = text
  }
}

extension _Text {
  public init<Subject>(_ subject: Subject, formatter: Formatter) where Subject : ReferenceConvertible {
    self._text = SwiftUI.Text(subject, formatter: formatter)
  }

  public init<Subject>(_ subject: Subject, formatter: Formatter) where Subject : NSObject {
    self._text = SwiftUI.Text(subject, formatter: formatter)
  }
}

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
extension _Text {
  public init<F>(_ input: F.FormatInput, format: F) where F : FormatStyle, F.FormatInput : Equatable, F.FormatOutput == String {
    self._text = SwiftUI.Text(input, format: format)
  }
}

extension _Text {
  public init(_ date: Date, style: SwiftUI.Text.DateStyle) {
    self._text = SwiftUI.Text(date, style: style)
  }

  public init(_ dates: ClosedRange<Date>) {
    self._text = SwiftUI.Text(dates)
  }

  public init(_ interval: DateInterval) {
    self._text = SwiftUI.Text(interval)
  }
}

extension _Text {
  public init(_ key: LocalizedStringKey, tableName: String? = nil, bundle: Bundle? = nil, comment: StaticString? = nil) {
    self._text = SwiftUI.Text(key, tableName: tableName, bundle: bundle, comment: comment)
  }
}
