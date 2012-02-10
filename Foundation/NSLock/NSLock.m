/* Copyright (c) 2006-2007 Christopher J. W. Lloyd

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. */

// Original - Christopher Lloyd <cjwl@objc.net>
#import <Foundation/NSLock.h>
#import <Foundation/NSPlatform.h>
#import <Foundation/NSRaise.h>

@implementation NSLock

+allocWithZone:(NSZone *)zone {
   if(self==[NSLock class])
    return NSAllocateObject([[NSPlatform currentPlatform] lockClass],0,zone);
   else
    return NSAllocateObject(self,0,zone);

}

-init {
   NSInvalidAbstractInvocation();
   return self;
}

-(NSString *)name
{
    return _name;
}

-(void)setName:(NSString *)value
{
    if(value!=_name)
    {
        [_name release];
        _name=[value retain];
    }
}

-(void)lock {
   NSInvalidAbstractInvocation();
}

-(void)unlock {
   NSInvalidAbstractInvocation();
}

-(BOOL)tryLock {
   NSInvalidAbstractInvocation();
   return NO;
}

-(BOOL)lockBeforeDate:(NSDate *)value {
   NSInvalidAbstractInvocation();
   return NO;
}

@end
