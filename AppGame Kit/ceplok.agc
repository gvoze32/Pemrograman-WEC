poop:

//Poop
if GetSpriteCollision(sKj,sB1)=1
		inc skor,10
		SetSpriteSize (sLdk1, GetSpriteWidth(sB1),GetSpriteHeight (sB1))
		
		SetSpritePosition (sLdk1, GetSpriteX(sB1),GetSpriteY (sB1))
		SetSpritePosition (sB1, random(0, LebarLayar), GetSpriteY (sB1)-TinggiLayar-random (50,300))
		PlaySound (suaraTelur)
			if nPoop=0
				PlaySound(suaraTelur)
				nPoop=1
			endif
			
else
	SetSpritePosition (sLdk1,0,-1000)
endif

//Poop2
if GetSpriteCollision(sKj,sB2)=1
		inc skor,10
		SetSpriteSize (sLdk2, GetSpriteWidth(sB2),GetSpriteHeight (sB2))
		
		SetSpritePosition (sLdk2, GetSpriteX(sB2),GetSpriteY (sB2))
		SetSpritePosition (sB2, random(0, LebarLayar), GetSpriteY (sB2)-TinggiLayar-random (50,300))
		PlaySound (suaraTelur)
			if nPoop=0
				PlaySound(suaraTelur)
				nPoop=1
			endif
else
	SetSpritePosition (sLdk2,0,-1000)
endif

//Poop3
if GetSpriteCollision(sKj,sB3)=1
		inc skor,10
		SetSpriteSize (sLdk3, GetSpriteWidth(sB3),GetSpriteHeight (sB3))
		
		SetSpritePosition (sLdk3, GetSpriteX(sB3),GetSpriteY (sB3))
		SetSpritePosition (sB3, random(0, LebarLayar), GetSpriteY (sB3)-TinggiLayar-random (50,300))
		PlaySound (suaraTelur)
			if nPoop=0
				PlaySound(suaraTelur)
				nPoop=1
			endif
else
	SetSpritePosition (sLdk1,0,-1000)
endif

//Poop4
if GetSpriteCollision(sKj,sB4)=1
		inc skor,10
		SetSpriteSize (sLdk4, GetSpriteWidth(sB4),GetSpriteHeight (sB4))
		
		SetSpritePosition (sLdk4, GetSpriteX(sB4),GetSpriteY (sB4))
		SetSpritePosition (sB4, random(0, LebarLayar), GetSpriteY (sB4)-TinggiLayar-random (50,300))
		PlaySound (suaraTelur)
			if nPoop=0
				PlaySound(suaraTelur)
				nPoop=1
			endif
else
	SetSpritePosition (sLdk4,0,-1000)
endif

//Poop5
if GetSpriteCollision(sKj,sB5)=1
		inc skor,10
		SetSpriteSize (sLdk5, GetSpriteWidth(sB5),GetSpriteHeight (sB5))
		
		SetSpritePosition (sLdk5, GetSpriteX(sB5),GetSpriteY (sB5))
		SetSpritePosition (sB5, random(0, LebarLayar), GetSpriteY (sB5)-TinggiLayar-random (50,300))
		PlaySound (suaraTelur)
			if nPoop=0
				PlaySound(suaraTelur)
				nPoop=1
			endif
else
	SetSpritePosition (sLdk5,0,-1000)
endif

if GetSpriteCollision(sKj,sB6)=1
	inc kalah
	//inc lamakalah
	//dec skor, 7
	SetSpriteSize (sLdk6, GetSpriteWidth(sB6),GetSpriteHeight (sB6))
	
	SetSpritePosition (sLdk6, GetSpriteX(sB6),GetSpriteY (sB6))
	SetSpritePosition (sB6, random(0, LebarLayar), GetSpriteY (sB6)-TinggiLayar-random (50,300))
	PlaySound (suaraPoop)
	if nPoop=0
		PlaySound(suaraPoop)
		nPoop=1
	endif

else
	SetSpritePosition (sLdk6,0,-1000)
endif

if kalah=1
	inc lamakalah
endif

if lamakalah >=10
	SetSpriteX(sKj, LebarLayar / 2 - GetSpriteWidth(sKj) / 2)
	//SetSpritePosition(sKj,0,0)
	kalah=0
	lamakalah=0
	skor=0
	
endif


return
