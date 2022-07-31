
//
// StyleDictionaryColor.m
//
// Do not edit directly
// Generated on Sat, 09 Apr 2022 13:47:36 GMT
//

#import "StyleDictionaryColor.h"


@implementation StyleDictionaryColor

+ (UIColor *)color:(StyleDictionaryColorName)colorEnum{
  return [[self values] objectAtIndex:colorEnum];
}

+ (NSArray *)values {
  static NSArray* colorArray;
  static dispatch_once_t onceToken;

  dispatch_once(&onceToken, ^{
    colorArray = @[
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.984f green:0.984f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.812f green:0.129f blue:0.129f alpha:1.000f],
[UIColor colorWithRed:0.086f green:0.616f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.906f green:0.906f blue:0.906f alpha:1.000f],
[UIColor colorWithRed:0.757f green:0.757f blue:0.757f alpha:1.000f],
[UIColor colorWithRed:0.482f green:0.482f blue:0.482f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.408f blue:0.784f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end
