//
//  UIColor+Mix.h
//  Scriptive
//
//  Created by Josh Justice on 10/4/13.
//  Copyright (c) 2013 Scriptive. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Mix)

+(UIColor *)colorBetweenColor:(UIColor *)color1
                     andColor:(UIColor *)color2
                   percentage:(float)percentage;

/**
 * colors - an NSArray of NSDictionaries, each with two keys:
 *   position - an NSNumber position between 0.0 and 1.0 along the gradient
 *   color - the UIColor at that position
 */
+(UIColor *)colorAlongColors:(NSArray *)colors
                  percentage:(float)percentage;

/**
 * Takes in an array of NSNumbers and configures a color from it.
 * Position 0 is red, 1 green, 2 blue, 3 alpha.
 */
+(UIColor *)colorWithConfig:(NSArray *)config;

@end
