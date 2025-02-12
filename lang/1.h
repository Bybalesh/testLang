Prism.languages.objectivec = Prism.languages.extend('c', {
	'string': {
		pattern: /@?"(?:\\(?:\r\n|[\s\S])|[^"\\\r\n])*"/,
// Example.h
#import <Foundation/Foundation.h>

@interface Example : NSObject

- (void)sayHello;

@end
