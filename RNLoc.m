// RNLoc.m
#import "RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(RNLoc, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(NSNumber *)date);
RCT_EXTERN_METHOD(locationManager:(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!));

@end