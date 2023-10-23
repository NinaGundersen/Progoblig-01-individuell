rec-red = rectangle(130, 75, "solid", "red")
square-red = square(75, "solid", "red")
rec-blue = rectangle(255, 200, "solid", "blue")
square-white = square(87.5, "solid", "white")
rec-white = rectangle(142.5, 87.5, "solid", "white")

# Her er de ulike delene som vil gjøre opp flagget definert med riktige proposjoner i forhold til hverandre.

wtop1 = overlay-align("left", "top", (square-white), (rec-blue))
wbottom1 = overlay-align("left", "bottom", (square-white), (wtop1))
wtop2 = overlay-align("right", "top", (rec-white), (wbottom1))
wbottom2 = overlay-align("right", "bottom", (rec-white), (wtop2))

# startet med blått rektangel i bunnen, før de hvite delene er plassert en etter en.

final = overlay-align("left", "top", (square-red), overlay-align("left", "bottom", (square-red), overlay-align("right", "top", (rec-red), overlay-align("right", "bottom", (rec-red), (wbottom2)))))
