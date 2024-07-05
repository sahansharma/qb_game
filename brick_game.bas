Cls
toopp:
score = 0
'  BRICK GAME
'
'
'  лллллл
'  лллллл
'  лллллл
'  лллллл
'                                  лллллл
'                                  лллллл
'                                  лллллл
'                                  лллллл
'
'
'
'    лллллллллллллллллллллллллллллл         лллллллллллллллллллллл
'    лллллллллллллллллллллллллллллл         лллллллллллллллллллллл

Screen 12
loada = 50
loadb = 360
loadc = 50
loadd = 360
CALu = 2
Do


    Line (50, 50)-(50 + 40, 140), 5, B
    Line (360, 100)-(360 + 40, 190), 5, B
    Line (50, 400)-(310, 450), 6, B
    Line (360, 400)-(630, 450), 6, B

    Line (50, 50)-(loada, 140), 5, BF
    Line (360, 100)-(loadb, 190), 5, BF
    Line (50, 400)-(loadc, 450), 6, BF
    Line (360, 400)-(loadd, 450), 6, BF
    If loada <> 90 Then
        loada = loada + 1
    ElseIf loadb <> 360 + 40 Then
        loadb = loadb + 1

    ElseIf loadc <> 310 Then
        loadc = loadc + 2

    ElseIf loadd <> 630 Then
        loadd = loadd + 2

    End If
    CALu = CALu + 1
    Color CALu
    Locate 25, 25: Print "LOADING......"
    If CALu = 15 Then CALu = 0

    For i = 1 To 1000000
    Next i
    If loadd = 630 Then GoTo poppp:
    If loadd = 630 Then
        Sleep 1
        Color 8

        Locate 25, 20:
        Print "GAME LOADED"
    End If

Loop Until loadd >= 631




poppp:




Cls

Cls
a7 = 5
Do

    Line (a1 - 780, b1)-(a1 - 340, b1 - 50), c1, BF
    Line (a1 - 340 + 80, b1)-(a1, b1 - 50), c1, BF
    Line (a1 + 80, b1)-(a1 + 780, b1 - 50), c1, BF

    Color a7
    Locate 10, 10: Print "#TO MOVE THE PLANK RIGT PRESS (RIGHT ARROW KEY)"
    Locate 11, 10: Print "#TO MOVE THE PLANK LEFT PRESS (LEFT ARROW KEY)"
    Locate 12, 10: Print "#YOUR OBJECTIVE IS TO PASS THE BRICKS FALLING"
    Locate 13, 10: Print "DOWNWARD THROUGH THE HOLE IN THE PLANK."

    a7 = a7 + 1
    If a7 = 15 Then a7 = 1
    Locate 20, 20: Input "PRESS ANY KEY TO CONTINUE"; A$
Loop Until A$ <> " "

sMode:
Cls
Color 10
Locate 11, 11: Print "1.BEGGINER"
Locate 12, 11: Print "2.AMMATURE"
Locate 13, 11: Print "3.SEMI PRO"
Locate 14, 11: Print "4.PROFESSIONAL"
Locate 15, 11: Print "5.LEDGENDARY"

Locate 10, 10: Input "SELECT A GAME LEVEL FROM: 1 to 5"; a
Select Case a
    Case 1
        gamelevel = 700000
    Case 2
        gamelevel = 650000
    Case 3
        gamelevel = 500000
    Case 4
        gamelevel = 450000
    Case 5
        gamelevel = 300000
End Select

Cls
stttt:
a1 = 320
'a1 = controlable
b1 = 480

'b1=constant
a = 300
b = 80
c = 1
c1 = 2



first:
'to continue the game until the game is over



Line (a1 - 780, b1)-(a1 - 340, b1 - 50), c1, BF
Line (a1 - 340 + 80, b1)-(a1, b1 - 50), c1, BF
Line (a1 + 80, b1)-(a1 + 780, b1 - 50), c1, BF
'for the slidable portion


A$ = InKey$
Select Case A$
    Case Chr$(0) + Chr$(75)
        If a1 > -100 Then a1 = a1 - 10 + a12

    Case Chr$(0) + Chr$(77)
        If a1 < 720 Then a1 = a1 + 10 + a12
End Select

If a < a1 - 340 And b = 480 - 50 Then GoTo last
If a > a1 - 340 + 60 And b = 480 - 50 And a < a1 Then GoTo last
If a > a1 + 60 And b = 480 - 50 Then GoTo last





'in order to keep rectangle falling
Line (a, b - 80)-(a + 40, b), c, BF
'for  the falling rectangle
For i = 1 To gamelevel
Next i

Locate 1, 1: Print score
Cls
Locate 1, 1: Print score
If b <> 480 Then
    b = b + 1
    c1 = c1 + 1
    GoTo first:
End If
If b = 480 Then
    b = 80
    a11 = b11
    a = 600 * Rnd
    c = c + 2
    score = score + 10


    GoTo first:
End If
last:
Locate 10, 10: Print "YOUR SCORE IS:"; score
If score < 100 Then
    Cls
    Locate 10, 10: Print "PLEASE TRY AGAIN. NOT A GOOD SCORE."
    GoTo last11
End If
If score > 100 And score < 150 Then
    Cls
    Locate 10, 10: Print "WELL PLAYED"
    GoTo last11
End If
If score < 100 Then
    Cls

    Locate 10, 10: Print "WOUNDERFUL PLAY MASTER"
    GoTo last11
End If


last11:
Do
    Line (a1 - 780, b1)-(a1 - 340, b1 - 50), c1, BF
    Line (a1 - 340 + 80, b1)-(a1, b1 - 50), c1, BF
    Line (a1 + 80, b1)-(a1 + 780, b1 - 50), c1, BF
    Line (a, b - 80)-(a + 40, b), c, BF
    Input "  DO YOU WANT TO RETRY (y/n)  "; ask$
    If ask$ = "y " Then GoTo toopp
Loop Until ask$ = "y" Or ask$ = "n"

END

