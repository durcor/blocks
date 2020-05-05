# blocks
Collection of i3blocks blocklets

**Made for use with the Nerd Fonts font set**

## Some blocks that I have made/heavily modified
* amdgpu - monitors the status of your AMD GPU
  * View edge/junction/memory temperatures
  * View fan RPM
  * View shader/memory clocks
* distcompute - show the status of distributed computing projects in progress
  * Support for foldingathome and BOINC
* time - tells the current time
  * When interacted with, allows you to check your calendar and view your upcoming events as a notification
  * Integrated with [khal](https://github.com/pimutils/khal)
* cpu - display CPU usage and temperature
* vol - control volume and observe current volume
* news - get information about unread news articles and if news is currently being synced or not
  * Integrated with Newsboat
* mail - check unread mail and mail sync status
  * Integrated with Neomutt and Luke Smith's [mutt-wizard](https://github.com/LukeSmithxyz/mutt-wizard)
* bt - manage bluetooth and list connected devices
* bat - view current PC battery status (Laptop/UPS-specific)
* mus - list currently playing song/video based on file metadata
  * Integrated with playerctl/mpris2 interface, so it should work with modern browsers (Chrome,Firefox,Qutebrowser), music players (Spotify), and any other media client that can be connected to the mpris2 interface.
* vpn - display VPN connection status
  * Only supports Mullvad at the moment
  * Mostly deprecated as Mullvad has its own tray icon for interacting with the daemon

## Other blocks
* accuweather
* batplus - sophisticated battery status notifier
* kb - display the currently-active keyboard layout
* mem - get information about memory usage
* net - network statistics
* darksky - weather block using darksky's api
* iplocate - get current ip
* dsk - get information about disk usage
