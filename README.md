SpotlightFinder
===============

SpotlightFinder is Spotlight plugin which adds show in Finder option

![Preview](https://raw.githubusercontent.com/jcavar/SpotlightFinder/master/previews/preview.gif)

##Install

SpotlightFinder can be installed via [EasySIMBL](https://github.com/norio-nomura/EasySIMBL).

There are two ways to do this:

*   Download latest bundle directly from [releases](https://github.com/jcavar/SpotlightFinder/releases/latest) then just drag and drop ti to EasySIMBL

*	Download source code, open it with Xcode and build project. After that, find SpotlightFinder.bundle file, drag and drop it to EasySIMBL 

![Preview](https://raw.githubusercontent.com/jcavar/SpotlightFinder/master/previews/install.png)

If you use great Spotlight plugin system [Flashlight](http://flashlight.nateparrott.com/) there is a way to use SpotlightFinder within it. Just move SpotlightFinder.bundle file into `Flashlight.app/Contents/Library/LoginItems/FlashlightSIMBLAgent.app/Contents/Resources/SIMBLPlugins`

##Uninstall

Just remove bundle from folder where it is installed.

##Troubleshooting

If you have any problems either with installation or uninstallation, you can try to restart Spotlight in Activity Monitor.

![Preview](https://raw.githubusercontent.com/jcavar/SpotlightFinder/master/previews/remove.png)

If you use SpotlightFinder in Flashlight, you can try to disable and then enable plugins.

![Preview](https://raw.githubusercontent.com/jcavar/SpotlightFinder/master/previews/restart.png)

If you have any other problems feel free to open [new issue](https://github.com/jcavar/SpotlightFinder/issues/new)
