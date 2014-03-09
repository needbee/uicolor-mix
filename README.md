UIColor+Mix
===========

Allows calculation of colors partway in between other colors

Demo
====

The demo/ folder contains a demo project showing
UIColor+Mix in use. Open and run it.

Usage
=====

To mix between two colors, use the following:

	[UIColor colorBetweenColor:… andColor:… percentage:…];

You can also mix between multiple colors, i.e. creating a complex
gradient. The gradient is configured similarly to in Photoshop: you
define a series of points along the gradient, and what the color is at
each point:

	NSArray *gradient = @[
		@{@"position": @0.0,
			@"color": [UIColor redColor]},
		@{@"position": @0.5,
			@"color": [UIColor yellowColor]},
		@{@"position": @1.0,
			@"color": [UIColor greenColor]}
	];
	[UIColor colorAlongColors:gradient percentage:…];

Instead of defining a gradient in the code, you can define it in a
.plist file instead. Since UIColor is not available in .plists, you can
instead define a color as an Array of Numbers, where item 0 is red,
1 green, 2 blue, and 3 alpha:

![plist screenshot](https://github.com/needbee/uicolor-mix/blob/master/plist.png)

Compatibility
=============

This class has been tested back to iOS 6.0.

Implementation
==============

This class is implemented by splitting the colors into components using
CGColorGetComponents(), then combining the components between the
different colors in the correct percentages.

License
=======

This code is released under the MIT License. See the LICENSE file for details.