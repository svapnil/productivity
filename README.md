# productivity
A repo to store and easily transfer the productivity setup I use for development.

## Hammerspoon and Karabiner
### Managing Windows and Applications

I first found out about the Hammerspoon and Karabiner setup through Kevin Zheng, who has written a blog post on this [here.](https://kevzheng.com/hammerspoon-karabiner)

In this tutorial you'll find more about what the application is and how it works. The tldr is basically: by replacing caps-lock with a custom "hyperkey" you can resize monitors and create keyboard shortcuts to switch active applications. The ones I use are

- Moving applications between monitors (Hyper + Shift + Arrow Keys)
- Moving applications between different sides of the screen (Hyper + Arrow Keys)
- Moving applications between windowed and full screen (Hyper + Enter)
- Switching between applications (Hyper + custom key x)

I added my own shortcuts to focus certain apps. Some of these examples are:

### `Hyperkey +`

`Q` : VSCode
`C` : Chrome
`Spacebar` : iTerm
`M` : Spotify
`I` : Messages/Messenger Alternating

and many more..

### Installation

Install [Hammerspoon](https://www.hammerspoon.org/)
Install [Karabiner](https://karabiner-elements.pqrs.org/)

Both of these applications will require some amount of Accessibility / Input Monitoring clearance from MacOS. Grant these permissions when prompted.


Then, enter this directory and move the config files to their needed locatio

`cp -r hammerspoon ~/.hammerspoon`

`cp karabiner/karabiner.json ~/.config/karabiner/karabiner.json`

then reload the Hammerspoon config - and you're done!
