NEW_WP=$(ls $HOME/wallpapers | shuf -n 1)

WALLPAPER="$HOME/wallpapers/$NEW_WP"

HYPRPAPER_CONF="$HOME/.config/hypr/hyprpaper.conf"

echo " " > $HYPRPAPER_CONF

echo "preload = $WALLPAPER" >> $HYPRPAPER_CONF
echo "wallpaper = DP-1,$WALLPAPER" >> $HYPRPAPER_CONF
echo "splash = false" >> $HYPRPAPER_CONF

killall hyprpaper
hyprpaper &
