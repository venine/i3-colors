# i3-colors
Change i3wm window colors using *perl*.  

Please modularize your configuration first. This is to ensure that even after there are many major changes in i3wm, using this script won't spoil your config altogether. Use my template in template/ of this repo. 

Run these commands or do it by yourself.
`cp -r template ~/.config/i3`

After you are done modularizing, read this. 

### Features 
1. Change window border colors. 
2. Change dmenu colors. 

### Caveats
1. Current theme    => ~/currentTheme.i3
2. Themes' location => ~/.config/i3/i3themes
3. Required perl modules => Getopt::Long, JSON, File::Copy, File::Basename 
`sudo cpan Getopt::Long File::Copy File::Basename`
4. In order to use CustomDmenu (grep it. Use this repo https://github.com/venine/CustomDmenu)

Usage is quite intuitive. Here's the --help output

``` [Focused Container]
--f_bg #xxxxxx		 : background
--f_fg #xxxxxx		 : foreground

[Unfocused Container]
--u_bg #xxxxxx		 : background
--u_fg #xxxxxx		 : foreground

[Inactive Container]
--i_bg #xxxxxx		 : background 
--i_fg #xxxxxx		 : foreground

[Themes]
--save NAME_THEME	 : Save theme by NAME_THEME
--theme INDEX_THEME	 : Select theme by index. 
--show			 : Show all the available themes with their serial numbers.
--current                : Show current theme. 

[Misc]
--quick                  : Use this order (Comma separated HEX colors (#XXXXXX) + non-HEX STRING) format = FOCUS(BG,FG), UNFOCUS(BG,FG), INACTIVE_FOCUS(BG, FG), THEME_NAME

Caveats 
1. If one BG is provided and the rest/one of them are not, the provided BG will be used for.
2. All FGs are mandatory to provide.
3. Providing --save THEME_NAME is mandatory.
4. --theme and --show cannot be used with anything else.
5. ~/currentTheme.i3 contains json formatted theme. 
6. ~/.config/i3/user/themes.i3 is mandatory. Better modularize your config.
	Keep the above file blank and do not touch it if you are using this program for the first time
7. i3bar's colors would be changed accordingly. Background and Statusline shall be set to inactive_focused BG and FG. Active Workspace's colors shall be focused BG and FG.
```
### Screenshot
![Structure](https://github.com/venine/i3-colors/blob/master/i3colors.png?raw=true)
