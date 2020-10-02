MainMenu:

Createtext(4,"Tangkap Telur")
SetTextSize(4,100)
SetTextPosition(4,(720-GetTexttotalwidth(4))/4,180)

Createtext(5, "Tekan Untuk Memulai")
SetTextSize(5,60)
Settextposition(5,(720-GetTexttotalwidth(5))/5,900)

gosub Showmenutext

repeat 
	sync()
until GetPointerPressed()=1 

kalah=0
gosub Hidemenutext

Return

Hidemenutext:
SetTextVisible(4,0)
SetTextVisible(5,0)
Return

Showmenutext:
SetTextVisible(4,1)
SetTextVisible(5,1)
Return
