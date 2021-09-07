# This sctript is to install dracula theme for gtk
# qt/plasma theme for dracula is to install via kde store
# for qt theme go to system settings > Appearance > Global Theme > Get New Global Theme
# search the theme name "Ant-Dracula Kde" install it.

# Make dir if not exists
mkdir -p ~/.themes
# Clone the dracula gkt repo inside ~/.themes directory
git clone https://github.com/dracula/gtk.git ~/.themes/dracula

# Printing further instruction to active the theme.
# \33[1;33m is for color yellow 
# \33[0m is for color white
printf '\33[1;33m Dracula theme for gdk is installed please follow the steps for active the theme\n'
printf '\33[1;33m go to System Settings > Appearance > Application Style > Configure GNOME/GTK Application Style \n'
printf '\33[1;33m click GTK theme and select dracula and hit Apply \33[0m'
