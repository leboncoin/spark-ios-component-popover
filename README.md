
# Popover

## Specifications

The popover specifications on Zeroheight is [here](https://zeroheight.com/1186e1705/v/latest/p/88a08c-popover).

![Figma anatomy](https://github.com/adevinta/spark-ios-component-popover/blob/main/.github/assets/popover.png)

Popover is available for all versions in UIKit.  
Popover is availabe starting iOS 16.4 in SwiftUI.

## UIKit

### Usage

Spark's approach is heavily relying on the native UIKit `popoverPresentationController`.  
The API is very similar.

```swift
public extension UIViewController {

    /// Presents a Spark Popover modally.
    /// - Parameters:
    ///   - popoverViewControllerToPresent: The Spark Popover to display over the current view controller’s content
    ///   - sourceView: UIPopoverPresentationController.sourceView
    ///   - sourceRect: UIPopoverPresentationController.sourceRect
    ///   - permittedArrowDirections: UIPopoverPresentationController.permittedArrowDirections
    ///   - flag: Pass true to animate the presentation; otherwise, pass false.
    ///   - completion: The block to execute after the presentation finishes. This block has no return value and takes no parameters. You may specify nil for this parameter.
    func presentPopover(
        _ popoverViewControllerToPresent: PopoverViewController,
        sourceView: UIView,
        sourceRect: CGRect? = nil,
        permittedArrowDirections: UIPopoverArrowDirection = .any,
        animated flag: Bool = true,
        completion: (() -> Void)? = nil
    )

}
```

### PopoverViewController

To define the Popover's content, consumers will need to provide a PopoverViewController with its content.

```swift
/// ViewController used as a container for the content of a Popover
/// It handles the background configuration such as color, inner spacings and the drawing of the arrow if needed
/// The content viewController is defined by the consumer, it should have a .clear background, no padding and have a well defined preferredContentSize for the popover to calculate its size properly
public final class PopoverViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    /// PopoverViewController initializer
    /// - Parameters:
    ///   - contentViewController: The viewController that will be embedded in the popover: it should have a .clear background, no padding and have a well defined preferredContentSize for the popover to calculate its size properly
    ///   - theme: The theme of a Popover
    ///   - intent: The intent of the Popover
    ///   - showArrow: Boolean used to show or hide the tip arrow of the Popover
    public convenience init(
        contentViewController: UIViewController,
        theme: any Theme, 
        intent: PopoverIntent, 
        showArrow: Bool = true
    )

}
```

## SwiftUI

The same way as for UIKit, Spark's SwiftUI Popover builds upon the native one

```swift
public extension View {
    @available(iOS 16.4, *)
    /// Presents a Spark popover when a given condition is true.
    /// - Parameters:
    ///   - theme: The Spark theme of the Spark popover.
    ///   - intent: The Spark intent of the Spark popover.
    ///   - isPresented: A binding to a Boolean value that determines whether
    ///     to present the popover content that you return from the modifier's
    ///     `content` closure.
    ///   - attachmentAnchor: The positioning anchor that defines the
    ///     attachment point of the popover. The default is
    ///     ``Anchor/Source/bounds``.
    ///   - arrowEdge: The edge of the `attachmentAnchor` that defines the
    ///     location of the popover's arrow in macOS. The default is ``Edge/top``.
    ///     iOS ignores this parameter.
    ///   - content: A closure returning the content of the popover.
    ///     It has a `PopoverColors` as a parameter.
    func popover<Content>(
        theme: any Theme,
        intent: PopoverIntent,
        isPresented: Binding<Bool>,
        attachmentAnchor: PopoverAttachmentAnchor = .rect(.bounds),
        arrowEdge: Edge = .top,
        @ViewBuilder content: @escaping (PopoverColors) -> Content
    ) -> some View where Content: View
}
```

## Content configuration

To help you configure your content's colors accordingly to the intent, use `PopoverIntent.getColors(theme:)`
```swift
/// Intent used to { get set } background & foreground colors on the popover
public enum PopoverIntent: CaseIterable {

    case surface
    case main
    case support
    case accent
    case basic
    case success
    case alert
    case error
    case info
    case neutral

    /// Get the colors to apply on popovers from an intent
    /// - Parameters:
    ///   - theme: Spark theme
    /// - Returns: PopoverColors
    public func getColors(theme: Theme) -> PopoverColors

}

public struct PopoverColors {

    /// Popover background color
    public let background: any ColorToken
    /// Popover foreground color
    public let foreground: any ColorToken

}
```

## License

```
MIT License

Copyright (c) 2024 Adevinta

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```