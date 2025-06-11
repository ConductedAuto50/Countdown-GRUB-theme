# Countdown GRUB theme

This GRUB theme greets you with a hello and shows a countdown to boot.

## Setup

### Choose Background (Optional)
To use a custom background, replace ```background.png``` in the ```countdown``` directory with the image of your choice. Make sure the name of the image is still ```background.png```.

### Installation

To install the theme, run: 
```
sudo ./install.sh
```

## Screenshot

![Screenshot of Countdown GRUB theme](demoscreenshot.png?raw=true "[your name] will be replaced by your name, or whatever you want to replace it with.")

## Notes
- If the font doesn't load correctly (the default grub font shows), it can be fixed by disabling Secure Boot. This is not a recommended solution, but it is the only one I've found that works. Also see [here](https://github.com/AdisonCavani/distro-grub-themes/issues/101#issuecomment-1423353475) and [here](https://lists.gnu.org/archive/html/grub-devel/2022-11/msg00168.html).