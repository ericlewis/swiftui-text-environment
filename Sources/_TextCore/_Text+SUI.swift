import SwiftUI

@available(iOS 15.0, macOS 12.0, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
extension View {
  public func badge(_ label: _Text?) -> some View {
    badge(label?._text)
  }
}

@available(iOS, introduced: 13.0, deprecated: 100000.0, message: "use `View.confirmationDialog(title:isPresented:titleVisibility:presenting::actions:)`instead.")
@available(macOS, unavailable)
@available(tvOS, introduced: 13.0, deprecated: 100000.0, message: "use `View.confirmationDialog(title:isPresented:titleVisibility:presenting:actions:)`instead.")
@available(watchOS, introduced: 6.0, deprecated: 100000.0, message: "use `View.confirmationDialog(title:isPresented:titleVisibility:presenting:actions:)`instead.")
extension ActionSheet {
  public init(title: _Text, message: _Text? = nil, buttons: [ActionSheet.Button] = [.cancel()]) {
    self.init(title: title._text, message: message?._text, buttons: buttons)
  }
}

@available(iOS, introduced: 13.0, deprecated: 100000.0, message: "use `View.alert(title:isPresented:presenting::actions:) instead.")
@available(macOS, introduced: 10.15, deprecated: 100000.0, message: "use `View.alert(title:isPresented:presenting::actions:) instead.")
@available(tvOS, introduced: 13.0, deprecated: 100000.0, message: "use `View.alert(title:isPresented:presenting::actions:) instead.")
@available(watchOS, introduced: 6.0, deprecated: 100000.0, message: "use `View.alert(title:isPresented:presenting::actions:) instead.")
extension Alert {
  public init(title: _Text, message: _Text? = nil, dismissButton: Alert.Button? = nil) {
    self.init(title: title._text, message: message?._text, dismissButton: dismissButton)
  }

  public init(title: _Text, message: _Text? = nil, primaryButton: Alert.Button, secondaryButton: Alert.Button) {
    self.init(title: title._text, message: message?._text, primaryButton: primaryButton, secondaryButton: secondaryButton)
  }
}

extension Alert.Button {
  public static func `default`(_ label: _Text, action: (() -> Void)? = {}) -> Alert.Button {
    self.default(label._text, action: action)
  }

  public static func cancel(_ label: _Text, action: (() -> Void)? = {}) -> Alert.Button {
    self.cancel(label._text, action: action)
  }

  public static func destructive(_ label: _Text, action: (() -> Void)? = {}) -> Alert.Button {
    self.destructive(label._text, action: action)
  }
}

@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension CommandMenu where Content : View {
  public init(_ name: _Text, @ViewBuilder content: () -> Content) {
    self.init(name._text, content: content)
  }
}

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
extension GraphicsContext {
  public func resolve(_ text: _Text) -> GraphicsContext.ResolvedText {
    self.resolve(text._text)
  }

  public func draw(_ text: _Text, in rect: CGRect) {
    self.draw(text._text, in: rect)
  }

  public func draw(_ text: _Text, at point: CGPoint, anchor: UnitPoint = .center) {
    self.draw(text._text, at: point, anchor: anchor)
  }
}

extension Image {
  public init(_ name: String, bundle: Bundle? = nil, label: _Text) {
    self.init(name, bundle: bundle, label: label._text)
  }

  public init(_ cgImage: CGImage, scale: CGFloat, orientation: Image.Orientation = .up, label: _Text) {
    self.init(cgImage, scale: scale, label: label._text)
  }
}

extension SecureField where Label == Text {
  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init(_ titleKey: LocalizedStringKey, text: Binding<String>, prompt: _Text?) {
    self.init(titleKey, text: text, prompt: prompt?._text)
  }

  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init<S>(_ title: S, text: Binding<String>, prompt: _Text?) where S : StringProtocol {
    self.init(title, text: text, prompt: prompt?._text)
  }
}

extension SecureField {
  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init(text: Binding<String>, prompt: _Text? = nil, @ViewBuilder label: () -> Label) {
    self.init(text: text, prompt: prompt?._text, label: label)
  }
}

extension TextField where Label == Text {
  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init(_ titleKey: LocalizedStringKey, text: Binding<String>, prompt: _Text?) {
    self.init(titleKey, text: text, prompt: prompt?._text)
  }

  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init<S>(_ title: S, text: Binding<String>, prompt: _Text?) where S : StringProtocol {
    self.init(title, text: text, prompt: prompt?._text)
  }
}

extension TextField {
  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init(text: Binding<String>, prompt: _Text? = nil, @ViewBuilder label: () -> Label) {
    self.init(text: text, prompt: prompt?._text, label: label)
  }
}

extension TextField where Label == Text {
  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init<F>(_ titleKey: LocalizedStringKey, value: Binding<F.FormatInput?>, format: F, prompt: _Text? = nil) where F : ParseableFormatStyle, F.FormatOutput == String {
    self.init(titleKey, value: value, format: format, prompt: prompt?._text)
  }


  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init<S, F>(_ title: S, value: Binding<F.FormatInput?>, format: F, prompt: _Text? = nil) where S : StringProtocol, F : ParseableFormatStyle, F.FormatOutput == String {
    self.init(title, value: value, format: format, prompt: prompt?._text)
  }


  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init<F>(_ titleKey: LocalizedStringKey, value: Binding<F.FormatInput>, format: F, prompt: _Text? = nil) where F : ParseableFormatStyle, F.FormatOutput == String {
    self.init(titleKey, value: value, format: format, prompt: prompt?._text)
  }

  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init<S, F>(_ title: S, value: Binding<F.FormatInput>, format: F, prompt: _Text? = nil) where S : StringProtocol, F : ParseableFormatStyle, F.FormatOutput == String {
    self.init(title, value: value, format: format, prompt: prompt?._text)
  }
}

extension TextField where Label == Text {
  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init<V>(_ titleKey: LocalizedStringKey, value: Binding<V>, formatter: Formatter, prompt: _Text?) {
    self.init(titleKey, value: value, formatter: formatter, prompt: prompt?._text)
  }

  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init<S, V>(_ title: S, value: Binding<V>, formatter: Formatter, prompt: _Text?) where S : StringProtocol {
    self.init(title, value: value, formatter: formatter, prompt: prompt?._text)
  }
}

extension TextField {
  @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
  public init<V>(value: Binding<V>, formatter: Formatter, prompt: _Text? = nil, @ViewBuilder label: () -> Label) {
    self.init(value: value, formatter: formatter, prompt: prompt?._text, label: label)
  }
}

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
extension View {
  public func confirmationDialog<A>(_ title: _Text, isPresented: Binding<Bool>, titleVisibility: Visibility = .automatic, @ViewBuilder actions: () -> A) -> some View where A : View {
    self.confirmationDialog(title._text, isPresented: isPresented, titleVisibility: titleVisibility, actions: actions)
  }

  public func confirmationDialog<A, M>(_ title: _Text, isPresented: Binding<Bool>, titleVisibility: Visibility = .automatic, @ViewBuilder actions: () -> A, @ViewBuilder message: () -> M) -> some View where A : View, M : View {
    self.confirmationDialog(title._text, isPresented: isPresented, titleVisibility: titleVisibility, actions: actions, message: message)
  }

  public func confirmationDialog<A, T>(_ title: _Text, isPresented: Binding<Bool>, titleVisibility: Visibility = .automatic, presenting data: T?, @ViewBuilder actions: (T) -> A) -> some View where A : View {
    self.confirmationDialog(title._text, isPresented: isPresented, titleVisibility: titleVisibility, presenting: data, actions: actions)
  }

  public func confirmationDialog<A, M, T>(_ title: _Text, isPresented: Binding<Bool>, titleVisibility: Visibility = .automatic, presenting data: T?, @ViewBuilder actions: (T) -> A, @ViewBuilder message: (T) -> M) -> some View where A : View, M : View {
    self.confirmationDialog(title._text, isPresented: isPresented, titleVisibility: titleVisibility, presenting: data, actions: actions, message: message)
  }
}

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
extension View {
  public func alert<A>(_ title: _Text, isPresented: Binding<Bool>, @ViewBuilder actions: () -> A) -> some View where A : View {
    self.alert(title._text, isPresented: isPresented, actions: actions)
  }

  public func alert<A, M>(_ title: _Text, isPresented: Binding<Bool>, @ViewBuilder actions: () -> A, @ViewBuilder message: () -> M) -> some View where A : View, M : View {
    self.alert(title._text, isPresented: isPresented, actions: actions, message: message)
  }

  public func alert<A, T>(_ title: _Text, isPresented: Binding<Bool>, presenting data: T?, @ViewBuilder actions: (T) -> A) -> some View where A : View {
    self.alert(title._text, isPresented: isPresented, presenting: data, actions: actions)
  }

  public func alert<A, M, T>(_ title: _Text, isPresented: Binding<Bool>, presenting data: T?, @ViewBuilder actions: (T) -> A, @ViewBuilder message: (T) -> M) -> some View where A : View, M : View {
    self.alert(title._text, isPresented: isPresented, presenting: data, actions: actions, message: message)
  }
}

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
extension View {
  public func searchable(text: Binding<String>, placement: SearchFieldPlacement = .automatic, prompt: _Text? = nil) -> some View {
    self.searchable(text: text, placement: placement, prompt: prompt?._text)
  }

  public func searchable<S>(text: Binding<String>, placement: SearchFieldPlacement = .automatic, prompt: _Text? = nil, @ViewBuilder suggestions: () -> S) -> some View where S : View {
    self.searchable(text: text, placement: placement, prompt: prompt?._text, suggestions: suggestions)
  }
}

extension View {
  public func navigationTitle(_ title: _Text) -> some View {
    self.navigationTitle(title._text)
  }
}

extension View {
  public func help(_ text: _Text) -> some View {
    self.help(text._text)
  }
}

extension WindowGroup where Content : View {
  public init(_ title: _Text, id: String, @ViewBuilder content: () -> Content) {
    self.init(title._text, id: id, content: content)
  }

  public init(_ title: _Text, @ViewBuilder content: () -> Content) {
    self.init(title._text, content: content)
  }
}

