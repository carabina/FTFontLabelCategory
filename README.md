# FTFontLabelCategory

[![CI Status](https://travis-ci.org/johnsongs/FTFontLabelCategory.svg?branch=master)](https://travis-ci.org/johnsongs/FTFontLabelCategory)
[![Version](https://img.shields.io/cocoapods/v/FTFontLabelCategory.svg?style=flat)](http://cocoapods.org/pods/FTFontLabelCategory)
[![License](https://img.shields.io/cocoapods/l/FTFontLabelCategory.svg?style=flat)](http://cocoapods.org/pods/FTFontLabelCategory)
[![Platform](https://img.shields.io/cocoapods/p/FTFontLabelCategory.svg?style=flat)](http://cocoapods.org/pods/FTFontLabelCategory)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage：

```Objective-C
#import "UILabel+FTFontLabel.h"

UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, 300, 100)];
label.text = @"ABC-123";
[label fontToFit];
[self.view addSubview:label];
```

## Installation

FTFontLabelCategory is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'FTFontLabelCategory'
```

## Author

johnsongs, johnson_gs@live.cn

## License

FTFontLabelCategory is available under the MIT license. See the LICENSE file for more info.
