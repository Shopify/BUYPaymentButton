# BUYPaymentButton

`BUYPaymentButton` is a vector-based Apple Pay button that provides a custom `UIButton` for Apple Pay that replicates Apple's [`PKPaymentButton`](https://developer.apple.com/library/ios/documentation/PassKit/Reference/PKPaymentButton_Class/index.html) available in iOS 8.3 and later.

`BUYPaymentButton` automatically creates and returns a custom vector-based `UIButton` on older version of iOS 8 that's near identical to Apple's button and a `PKPaymentButton` on iOS 8.3 and later so you don't have to worry about any version logic or creating your own button with images.

<img src="https://raw.github.com/Shopify/buypaymentbutton/master/BUYPaymentButton.png" height="600" alt="BUYPaymentButton"><img src="https://raw.github.com/Shopify/buypaymentbutton/master/PKPaymentButton.png" height="600" alt="PKPaymentButton">

## Installation

### Cocoapods

Add the following to your [Podfile](http://guides.cocoapods.org/using/using-cocoapods.html):

```ruby
pod 'BUYPaymentButton'
```

### Carthage

Add the following to your [Cartfile](https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile):

```ruby
github "Shopify/BUYPaymentButton"
```

### Manually

* Drag the `BUYPaymentButton/BUYPaymentButton` folder into your project.
* Add the **PassKit** framework to your project.

## Usage

`BUYPaymentButton` includes a sample project that shows how to use the button in your project. It shows all six variations of the Apple Pay button. Run the sample project on iOS 8.3 to see the button created with a `PKPaymentButton` and on older iOS 8 versions to see the custom `BUYPaymentButton` in action.

In your own project, create the button like you would any other button:

```objc
BUYPaymentButton *paymentButton = [BUYPaymentButton buttonWithType:BUYPaymentButtonTypeBuy style:BUYPaymentButtonStyleBlack];
```

### Button types and styles

There are two enums: `BUYPaymentButtonStyle` and `BUYPaymentButtonType`. 

These are identical to `PKPaymentButtonStyle` and `PKPaymentButtonType`, so if you're currently using PKPaymentButton, they're easy to replace.

## Contributing to this project

If you have a feature requests or find a bug, please feel free to submit a pull request or create a ticket. 
