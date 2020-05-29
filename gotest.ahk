^!r::
reload
return


^!z::
Toggle := !Toggle
Stopme = 1
send hi
Myvar = 1
send %Toggle%
Goto, lp
return

lp:
loop
{
  sleep 3000
  Myvar += 1
  send %Myvar%
  if (%Toggle% = 0)
    break
}
return

^!s::
Stopme = 0
return

^!h::
loop {
PixelSearch, Px, Py, -673, -207, 18, 278, 297994, 3, Fast
if ErrorLevel = 0 
{
MsgBox, 4,, blue
} 
else
{
sleep, 2000
}
}
return

^!j::
; two points to find color in that area
mp := [202, 172, 1554, 818]
; Color to find
myc = 0x947929
iscolor()
return

^!c::  ; get color
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox The color at the current cursor position is %color%.
return

; Will search an area for a certain color
iscolor() {
; all p numbers are taken from mp var
p1y := mp[1] 
p1x := mp[2]
p2y := mp[3]
p2x := mp[4]

; the 2 end parts are speed at witch is searches and methood
PixelSearch, Px, Py, %p1y%, %p1x%, %p2y%, %p2x%, %myc%, 3, Fast

; %ErrorLevel% codes 1 = not found, 0 = found, 2 = error
MsgBox, 4,, %ErrorLevel%
}