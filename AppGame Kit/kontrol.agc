keranjang:

moveX = 0
if GetKeyboardExists() = 1
	moveX = GetRawKeyState(39) * 10 - GetRawKeyState(37) * 10
else 
	moveX = GetDirectionX() * 10
endif

SetSpriteX(sKj, GetSpriteX(sKj) + moveX)

if GetSpriteX(sKj) < 0
	SetSpriteX(sKj, 0)
endif

if GetSpriteX(sKj) > LebarLayar - GetSpriteWidth(sKj)
	SetSpriteX(sKj, LebarLayar - GetSpriteWidth(sKj))
endif

return 
