1. Gnome tweaks
2. Gnome settings extensions
3. User themes extension (for shell theme)
4. Download: Icons, Themes (Gnome 40+ themes), Cursors
5. Move the assets to usr/share/{icons,themes,icons}
6. Set the theme settings in gnome tweaks
7. Copy all gtk-{3-4}.0 related files from the theme source folder. Required:
- gtk.css
- gtk-dark.css
- thumbnail.png

8. Append this to ~/.config/gtk-{3,4}.0 settings.ini:
```
[Settings]
gtk-application-prefer-dark-theme=1
gtk-theme-name=Otis
```
