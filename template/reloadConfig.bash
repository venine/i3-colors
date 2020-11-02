cp ~/.config/i3/config ~/.config/i3/config.temp
cat ~/.config/i3/user/*.i3 >> ~/.config/i3/config
i3-msg "restart"
cp ~/.config/i3/config.temp ~/.config/i3/config
