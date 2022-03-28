rm release/images/itch-icons/icon1024.png
for icon in release/images/itch-icons/icon*.png
do
	iconsize="${icon#release/images/itch-icons/icon}"
	iconsize="${iconsize%.png}"
	icondir="${pkgdir}/app/share/icons/hicolor/${iconsize}x${iconsize}/apps/"
	install -d "${icondir}"
	install -Dm644 "$icon" "$icondir/com.github.bageljrkhanofemus.itch.png"
done

