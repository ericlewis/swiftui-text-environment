# _Text

`_Text` is a simple augmentation to SwiftUI that makes styling easier. By utilizing the environment
it is possible to apply text modifiers to any views children text. The goal of this library is to make
it as seamless as possible to adopt `_Text` in your own projects.

Things of note:
- This library comes with 2 packages, `_Text` and `_TextCore`. The namesake package 
  typealiases `Text` to `_Text` and exports core. If you would prefer not to do that, import `_TextCore` instead.
- This library extends a lot of the SwiftUI interfaces to provide seamless interop where `Text` would
  be used. We attempt to cover all of the interfaces.
- `_Text` reflects the exact same API as `Text`, and the APIs function the same. However, the only
  way for our indirect styles to be applied is if our text object is rendered in a View. This is due
  to the reliance on Environment in order to work.
- You can even concatenate `_Text` with `Text`!

If you are using this library & also other SwiftUI components that accept a `Text` property, you may
want create shims for the components intitializers or you can utilize `_Text._text` to get the inner
SwiftUI `Text` container.

## Examples 
There are a view ways to utilize `_Text`, here are a few examples:

### Basic
Note the way we are importing here. This is so our `Text` can take over for the SwiftUI `Text`, otherwise
we would get amigious type warnings or have to use `_Text` everywhere.

```swift
import SwiftUI
import struct _Text.Text

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Oh wow, I am BOLD!")

      Text("Oh wow, I am BOLD and WIDE!")
        .text(.kerning(2))
        
      Text("Oh wow, I am ITALIC, BOLD, and WIDE!")
        .text(.kerning(2))
        .text(.italic())
    }
    .text(.bold())
  }
}
```

### Closure
Closure stylings behave differently from the way `text(_:)` works. This technique for applying style works 
most similarly to how the various styles in SwiftUI function, like `listStyle(_:)` and `buttonStyle(_:)`.

You get the underlying `Text` instance that needs styling in a closure, then return it when finished. 

```swift
import SwiftUI
import struct _Text.Text

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Oh wow, I am ITALIC, BOLD, and WIDE!")
    }
    .textStyle {
      $0.italic().bold().kerning(2) // implicit return! nice.
    }
  }
}
```

### Styles
Styles work exactly like they do in other SwiftUI components. You first conform to the protocol
`TextStyle`, then implement your desired styling. The styling aspect is very similar to how
the closure works, but instead is embedded in a struct. The benefit of that is you can now customize the
style in a more controller way, or even listen to Environment and change how your text gets styled.

```swift
import SwiftUI
import struct _Text.Text

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Oh wow, I am ITALIC, BOLD, and WIDE!")
      Text("Sub header")
        .textStyle(.subheader)
    }
    .textStyle(.header)
  }
}

extension TextStyle where Self == HeaderTextStyle {
  static var header: Self { .init() }
}

struct HeaderTextStyle: TextStyle {
  func applyStyle(_ text: SwiftUI.Text) -> SwiftUI.Text {
    text.font(.largeTitle).bold().kerning(2)
  }
}

extension TextStyle where Self == SubheaderTextStyle {
  static var subheader: Self { .init() }
}

struct SubheaderTextStyle: TextStyle {
  func applyStyle(_ text: SwiftUI.Text) -> SwiftUI.Text {
    text.italic().foregroundColor(.secondary)
  }
}
```

 ### 3rd Party
 When interacting with external libraries that may require we pass SwiftUI's `Text`, we have two
 ways of handling this, but both have the unfortunate side effect of our indirect styles not being applied.
 The preferred workaround is using a manual content closure instead of passing Text when possible.

#### Use `eraseToText()`
 ```swift
 import SwiftUI
 import _Text
 import NeatButton
 
 struct ContentView: View {
  var body: some View {
    VStack {
      // This library accepts normal SwiftUI `Text`, not `_Text`.
      NeatButton(
        Text("Oh wow, I am ITALIC, BOLD, and WIDE!").eraseToText()
      ) {
        // do something...
      }
    }
    .textStyle {
      $0.italic().bold().kerning(2) // implicit return! nice.
    }
  }
}
 ```
 
 #### Create shims
 If you are going to be interacting with a library often, it is probably easier to create a shim.
 ```swift
 import SwiftUI
 import _Text
 import NeatButton
 
 extension NeatButton {
    init(_ text: _Text, action: () -> Void) {
      self.init(text.eraseToText(), action: action)
    }
 }
 
 struct ContentView: View {
  var body: some View {
    VStack {
      // Now _Text is erased to Text when we use it.
      NeatButton(Text("Oh wow, I am ITALIC, BOLD, and WIDE!")) {
        // do something...
      }
    }
    .textStyle {
      $0.italic().bold().kerning(2) // implicit return! nice.
    }
  }
 }
 ```

## License
This library is released under the MIT license.
