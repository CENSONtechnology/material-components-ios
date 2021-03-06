/*
 Copyright 2017-present the Material Components for iOS authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "MDCSliderColorThemer.h"
#import "MaterialPalettes.h"

static const CGFloat kSliderThemerLightAlpha = 0.26f;
static const CGFloat kSliderThemerDarkAlpha = 0.3f;

@implementation MDCSliderColorThemer

+ (void)applyColorScheme:(id<MDCColorScheme>)colorScheme
                toSlider:(MDCSlider *)slider {
  slider.trackBackgroundColor = colorScheme.primaryLightColor;
  slider.color = colorScheme.primaryColor;
  slider.disabledColor = colorScheme.primaryDarkColor;
}

#pragma mark - Default color schemes

+ (MDCBasicColorScheme *)defaultSliderLightColorScheme {
  UIColor *lightTrackOffColor =
      [[UIColor blackColor] colorWithAlphaComponent:kSliderThemerLightAlpha];
  UIColor *lightDisabledColor =
      [[UIColor blackColor] colorWithAlphaComponent:kSliderThemerLightAlpha];

  MDCBasicColorScheme *lightScheme =
      [[MDCBasicColorScheme alloc] initWithPrimaryColor:MDCPalette.bluePalette.tint500
                                      primaryLightColor:lightTrackOffColor
                                       primaryDarkColor:lightDisabledColor];
  return lightScheme;
}

+ (MDCBasicColorScheme *)defaultSliderDarkColorScheme {
  UIColor *darkTrackOffColor =
      [[UIColor whiteColor] colorWithAlphaComponent:kSliderThemerDarkAlpha];
  UIColor *darkDisabledColor =
      [[UIColor whiteColor] colorWithAlphaComponent:kSliderThemerDarkAlpha];

  MDCBasicColorScheme *darkScheme =
      [[MDCBasicColorScheme alloc] initWithPrimaryColor:MDCPalette.bluePalette.tint500
                                      primaryLightColor:darkTrackOffColor
                                       primaryDarkColor:darkDisabledColor];
  return darkScheme;
}

@end
