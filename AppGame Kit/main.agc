// Project: Tangkap Telur
// Created: 2019-06-27

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Tangkap Telur" )
SetWindowSize( 720, 1280,0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
LebarLayar=720
TinggiLayar=1280
SetVirtualResolution( LebarLayar, TinggiLayar ) // doesn't have to match the window
SetOrientationAllowed( 1, 0, 0, 0 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

//Variable
skor=0
kalah=0
lamakalah=0

X as float
Y as float
 
//Background
sBG=CreateSprite(LoadImage("img\bg.png",1))
SetSpriteSize(sBG, LebarLayar, TinggiLayar)

//Keranjang
sKj=CreateSprite(LoadImage("img\basket.png",0))
SetSpriteSize(sKj, 170, 80)
SetSpritePosition(sKj,LebarLayar/2-100/2, 690)

X=GetVirtualWidth()/2 - GetSpriteWidth(sKj)/2
Y=GetVirtualHeight()-GetSpriteHeight(sKj)

SetSpritePosition(sKj,X,Y)

//Telur
sB1=CreateSprite(LoadImage("img\egg.png",1))
SetSpriteSize(sB1, 50, 60)
//SetSpritePosition(sB1,0,0)
SetSpritePosition(sB1,Random(100,LebarLayar),Random(50,TinggiLayar)*-1)

//Poop
sLdk1=CreateSprite(LoadImage("img\splash.png",1))
SetSpriteAnimation(sLdk1,100,60,3)
PlaySprite(sLdk1)
SetSpriteSize(sLdk1,100,100)
SetSpritePosition(sLdk1,0,-200)

//Telur 2
sB2=CreateSprite(LoadImage("img\egg.png",1))
SetSpriteSize(sB2, 50, 70)
//SetSpritePosition(sB2,0,80)
SetSpritePosition(sB2,Random(50,LebarLayar),Random(100,TinggiLayar)*-1)

//Poop2
sLdk2=CreateSprite(LoadImage("img\splash.png",1))
SetSpriteAnimation(sLdk2,100,60,2)
PlaySprite(sLdk2)
SetSpritePosition(sLdk2,0,-200)

//Telur 3
sB3=CreateSprite(LoadImage("img\egg.png",0))
SetSpriteSize(sB3, 70, 40)
//SetSpritePosition(sB3,0,130)
SetSpritePosition(sB3,Random(500,LebarLayar),Random(100,TinggiLayar)*-1)

//Poop3
sLdk3=CreateSprite(LoadImage("img\splash.png",1))
SetSpriteAnimation(sLdk3,100,60,2)
PlaySprite(sLdk3)
SetSpritePosition(sLdk3,0,-200)

//Telur 4
sB4=CreateSprite(LoadImage("img\egg.png",0))
SetSpriteSize(sB4, 50, 60)
//SetSpritePosition(sB4,0,190)
SetSpritePosition(sB4,Random(90,LebarLayar),Random(10,TinggiLayar)*-1)

//Poop4
sLdk4=CreateSprite(LoadImage("img\splash.png",1))
SetSpriteAnimation(sLdk4,100,60,2)
PlaySprite(sLdk4)
SetSpritePosition(sLdk4,0,-200)

//Telur 5
sB5=CreateSprite(LoadImage("img\egg.png",0))
SetSpriteSize(sB5, 70, 70)
//SetSpritePosition(sB5,0,260)
SetSpritePosition(sB5,Random(100,LebarLayar),Random(10,TinggiLayar)*-1)

//Poop5
sLdk5=CreateSprite(LoadImage("img\splash.png",1))
SetSpriteAnimation(sLdk5,100,60,2)
PlaySprite(sLdk5)
SetSpritePosition(sLdk5,0,-200)

//Poop
sB6=CreateSprite(LoadImage("img\Poop.png",0))
SetSpriteSize(sB6, 50, 65)
//SetSpritePosition(sB5,0,260)
SetSpritePosition(sB6,Random(10,LebarLayar),Random(100,TinggiLayar)*-1)

//Poop6
sLdk6=CreateSprite(LoadImage("img\explosion.png",1))
SetSpriteAnimation(sLdk6,200,200,3)
PlaySprite(sLdk6)
SetSpritePosition(sLdk6,200,-200)

//Suara Telur
suaraTelur=LoadSound("sound\crack.wav")
suaraPoop=LoadSound("sound\splat.wav")

nPoop=0

CreateText(1,"SKOR: "+str(skor))
SetTextSize(1,60)
SetTextPosition(1,0,0)

#Include "kontrol.agc"
#Include "telor.agc"
#Include "ceplok.agc"

SetSpriteY(sKj, TinggiLayar - GetSpriteHeight(sKj))


do
	
    gosub keranjang
    gosub telor
    gosub poop
    
    
    SetTextString(1,"SKOR: "+str(skor))
    
    
    
    Sync()
loop
 
