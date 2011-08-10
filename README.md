This project contains two templates for Xcode 4 that are reduced variants of the standard view-based and navigation-based templates.

## Installation ##

Copy the Minimal folder to ~/Library/Developer/Xcode/Templates (create the Templates folder if it doesn't exist yet).
Xcode's new project dialog should now have an additional "Minimal" section.

## Differences from Standard Templates ##

* No nibs
* No verbose comments
* Tab indentation
* Class names are not prefixed by project name (`AppDelegate` instead of `MyNewProjectAppDelegate`)
* All templates have an option for setting the device family (iPhone, iPad, Universal)
* QuartzCore.framework is included by default
* `UIApplicationExitsOnSuspend` is on by default – This is meant to make testing on a device easier during the initial stages of development.

## Credits ##

Inspired by [borealkiss/Minimal-Template](https://github.com/borealkiss/Minimal-Template). 

See [this article](http://blog.boreal-kiss.net/2011/03/11/a-minimal-project-template-for-xcode-4/) for more information about the Xcode 4 template system.