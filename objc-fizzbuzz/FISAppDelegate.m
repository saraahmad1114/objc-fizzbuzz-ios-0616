//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*
     
     * Write your code here!
     
     */
    
    // do not alter
    //One of the things to remember is that you shouldn't be using "magic numbers" because then they are just integer values, you want them to have meaningful names so that you can go back to it or anyone else can look at it and understand what is going on and why it is there.
    NSUInteger start = 1;
    NSUInteger limit = 100;
    NSUInteger fizzIncrement = 3;
    NSUInteger buzzIncrement = 5;
    
    
    for (NSUInteger i = start; i <= limit; i++)
    {
        //Normally this would just print numbers from 1 to 100 however now we are providing a set of conditions
        //that says that now if i is divisible by 3, or 5 or both then just print out Fizz, Buzz, or FizzBuzz together
        NSString *result = @"";
        if (i % fizzIncrement == 0 && i % buzzIncrement == 0)
        {
            result = @"FizzBuzz";
        }
        else if (i % fizzIncrement == 0)
        {
            result = @"Fizz";
        }
        else if (i % buzzIncrement == 0)
        {
            result = @"Buzz";
        }
        else
        {
            result = [NSString stringWithFormat:@"%lu", i];
        }
        NSLog(@"%@",result);
    }
    return YES;  //
    ///////////////
}

@end
