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
  if (%Stopme% = 0)
    break
}
return

^!s::
Stopme = 0
return