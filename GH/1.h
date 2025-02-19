Prism.languages.objectivec = Prism.languages.extend('c', {
	'string': {
		pattern: /@?"(?:\\(?:\r\n|[\s\S])|[^"\\\r\n])*"/,
// Example.h
#import <Foundation/Foundation.h>

@interface Example : NSObject

- (void)sayHello;

@end
#import "Example.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Example *example = [[Example alloc] init];
        [example sayHello];
    }
    return 0;
}
