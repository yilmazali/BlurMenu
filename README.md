BlurMenu
========

A simple iOS menu with blur background. Uses Apple's UIImage+ImageEffects.

USAGE

Add BlurMenu and BlurMenuItemCell files to your project. Initialize your menu items with an NSArray and then initialize the BlurMenu with that NSArray.


<code>NSArray *items = [[NSArray alloc] initWithObjects:@"First Item", @"Second Item", @"Third Item", @"Fourth Item", nil];</code>

<code>BlurMenu *menu = [[BlurMenu alloc] initWithItems:items parentView:self.view delegate:self];</code>

<code>[menu show];</code>

Screenshot

![alt tag](https://raw.github.com/aljhen/BlurMenu/master/BlurMenu/screenshot-1.png)&nbsp; 
![alt tag](https://raw.github.com/aljhen/BlurMenu/master/BlurMenu/screenshot-2.png)
