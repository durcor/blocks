# blocks
Collection of i3blocks blocklets

**Made for use with the [Nerd Fonts font set](https://github.com/ryanoasis/nerd-fonts)**

Makes heavy use of Powerline symbols for defining block boundaries.

## Some blocks that I have made/heavily modified
* [amdgpu](amdgpu) - monitors the status of your AMD GPU
  * View edge/junction/memory temperatures
  * View fan RPM
  * View shader/memory clocks
* [distcompute](distcompute) - show the status of distributed computing projects in progress
  * Support for foldingathome and BOINC
* [time](time) - tells the current time and date
  * When interacted with, allows you to check your calendar and view your upcoming events as a notification
  * Integrated with [khal](https://github.com/pimutils/khal)
* [cpu](cpu) - display CPU usage and temperature
* [vol](vol) - control volume and observe current volume
* [mscr](mscr) - track the current value and daily percentage of stocks
* [news](news) - get information about unread news articles and if news is currently being updated or not
  * Integrated with Newsboat
* [mail](mail) - check unread mail and mail sync status
  * Integrated with Neomutt and Luke Smith's [mutt-wizard](https://github.com/LukeSmithxyz/mutt-wizard)
* [bt](bt) - manage bluetooth and list connected devices
  * Show number of connected bluetooth devices and what type of device each one is (headset, game controller)
  * TODO: add support for more types of bluetooth devices (keyboard, mouse)
* [bat](bat) - view current PC battery status (Laptop/UPS-specific)
* [mus](mus) - list currently playing song/video based on file metadata exposed via mpris2
  * Integrated with playerctl/mpris2 interface, so it should work with modern browsers (Chrome, Firefox, Qutebrowser), music players (Spotify), and any other media client that can be connected to the mpris2 interface (MPD via mpDris2).
  * Left click to go back one song
  * Right click to go forward one song
  * Middle click to pause
  * Scroll to peek in current song
* [vpn](vpn) - display VPN connection status
  * Only supports Mullvad at the moment
  * TODO: display currently-conencted mullvad server
* [kb](kb) - display the currently-active keyboard layout
  * Made for English + Spanish users
  * Relies on [xkblayout-state](https://github.com/nonpop/xkblayout-state)
* [accuweather](accuweather)
  * Use Accuweather's RSS API to get the current weather based on an input zip code
* [dsk](dsk) - get information about disk usage

## Other blocks
* [batplus](batplus) - sophisticated battery status notifier
* [mem](mem) - get information about memory usage
* [net](net) - network statistics
* [darksky](darksky) - weather block using darksky's api
* [iplocate](iplocate) - get current ip

## Possible block ideas
* Last.fm API module for displaying currently playing song
