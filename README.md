BlurMenu
========

A simple iOS menu with blur background. Uses Apple's UIImage+ImageEffects.

USAGE

Add BlurMenu and BlurMenuItemCell files to your project. Initialize your menu items with an NSArray and then initialize the BlurMenu with that NSArray.

NSArray *items = [[NSArray alloc] initWithObjects:@"First Item", @"Second Item", @"Third Item", @"Fourth Item", nil];
BlurMenu *menu = [[BlurMenu alloc] initWithItems:items parentView:self.view delegate:self];
[menu show];
