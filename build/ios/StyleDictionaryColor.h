
//
// StyleDictionaryColor.h
//
// Do not edit directly
// Generated on Sat, 09 Apr 2022 13:47:36 GMT
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, StyleDictionaryColorName) {
ColorText,
ColorPrimary,
ColorLayoutBackground,
ColorError,
ColorSuccess,
ColorTextContrast,
ColorBackground,
ColorLayoutBorder,
ColorLayoutContrast,
ColorLayoutHeavyContrast,
ColorLink
};

@interface StyleDictionaryColor : NSObject
+ (NSArray *)values;
+ (UIColor *)color:(StyleDictionaryColorName)color;
@end
