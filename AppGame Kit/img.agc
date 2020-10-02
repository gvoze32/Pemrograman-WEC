//Latar
sBG=CreateSprite(LoadImage("img\bg.png",1))
SetSpriteSize(sBG, 1366, 768)

//Keranjang
sKj=CreateSprite(LoadImage("img\bucket.png",0))
SetSpriteSize(sKj, 200, 120)
SetSpritePosition(sKj,5,384)

//Strawberry
sSt=CreateSprite(LoadImage("img\egg.png.png",0))
SetSpriteSize(sSt, 50, 50)
SetSpritePosition(sSt,Random(10,400),Random(10,400)*-1)
//Grape
sGp=CreateSprite(LoadImage("img\egg.png",0))
SetSpriteSize(sGp, 30, 60)
SetSpritePosition(sGp,Random(10,400),Random(10,400)*-1)

//Banana
sBn=CreateSprite(LoadImage("img\egg.png",0))
SetSpriteSize(sBn, 60, 30)
SetSpritePosition(sBn,Random(10,400),Random(10,400)*-1)

//Orange
sOr=CreateSprite(LoadImage("img\egg.png",0))
SetSpriteSize(sOr, 50, 50)
SetSpritePosition(sOr,Random(10,400),Random(10,400)*-1)

//Watermelon
sWm=CreateSprite(LoadImage("img\egg.png",0))
SetSpriteSize(sWm, 60, 60)
SetSpritePosition(sWm,Random(10,400),Random(10,400)*-1)
