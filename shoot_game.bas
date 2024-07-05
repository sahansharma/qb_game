Cls
TOPP:
score = 0
loading = 0
Dim sx(100)
Dim sy(100)

Cls
'for topmost display
COL5 = 1
atimer = 3
Do
    Locate 1, 1: Print
    If atimer = 3 Then
        Cls

        Locate 10, 24: Print "        3333333               "
        Locate 11, 24: Print "      33       333"
        Locate 12, 24: Print "               333"
        Locate 13, 24: Print "               333"
        Locate 14, 24: Print "            333333"
        Locate 15, 24: Print "            333333"
        Locate 16, 24: Print "               333"
        Locate 17, 24: Print "     33        333"
        Locate 18, 24: Print "        33333333"

    ElseIf atimer = 2 Then
        Cls
        Locate 10, 24: Print "             222          "
        Locate 11, 24: Print "           2222222        "
        Locate 12, 24: Print "         22       22   "
        Locate 13, 24: Print "                 22"
        Locate 14, 24: Print "                22"
        Locate 15, 24: Print "               22"
        Locate 16, 24: Print "             22"
        Locate 17, 24: Print "          2222 "
        Locate 18, 24: Print "          2222222222"
    ElseIf atimer = 1 Then
        Cls
        Locate 10, 24: Print "             11"
        Locate 11, 24: Print "            1111 "
        Locate 12, 24: Print "           11  1 "
        Locate 13, 24: Print "               1"
        Locate 14, 24: Print "               1"
        Locate 15, 24: Print "               1"
        Locate 16, 24: Print "               1"
        Locate 17, 24: Print "               1"
        Locate 18, 24: Print "           11111111"

    ElseIf atimer = 0 Then
        Cls
        Screen 12
        Do

            Locate 10, 24: Print "    SSSS      TTTTTTTTTT       AAAA        RRRRRRR     TTTTTTTTTT"
            Locate 11, 24: Print "   SS    S        TT         A      A      RR    RR        TT"
            Locate 12, 24: Print "    S             TT         A      A      RR     RR       TT"
            Locate 13, 24: Print "      SSSS        TT         A      A      RRRRR           TT "
            Locate 14, 24: Print "         SS       TT         AAAAAAAA      RR  R           TT"
            Locate 15, 24: Print "          S       TT         A      A      RR   RR         TT"
            Locate 16, 24: Print "    S    SS       TT         A      A      RR    RR        TT "
            Locate 17, 24: Print "    SSSS          TT         A      A      RR      RR      TT"
            Line (0, 350)-(680, 400), 5, B
            Line (0, 350)-(loading, 400), 6, BF
            SODING = loading


            loading = loading + 1

            For I = 1 To 100000
            Next I
        Loop Until loading = 680
        If loading = 680 Then GoTo BEGIN:
    End If


    If atimer = 0 Then COL5 = -1
    Color COL5 + 1
    Locate 1, 10: Print "    W              W    EEEEEEEE LL         CCCC    OOOO   MM      MM EEEEEEE  "
    Locate 2, 10: Print "    W      WW      W    EE       LL        CC      OO  OO  M MM  MM M EE       "
    Locate 3, 10: Print "    W     WWWW     W    EEEEEEEE LL        CC      OO  OO  M   MMM  M EEEEEEE  "
    Locate 4, 10: Print "    W   WWWWWWWW   W    EE       LL        CC      OO  OO  M        M EE       "
    Locate 5, 10: Print "    WWWW        WWWW    EE       LL        CC      OO  OO  M        M EE       "
    Locate 6, 10: Print "    WW            WW    EEEEEEEE LLLLLLLL   CCCC    OOOO   M        M EEEEEEEE "


    COL5 = COL5 + 1
    atimer = atimer - 1
    If COL5 = 15 Then COL5 = 1
    Sleep 1


    Sound 600, 1
Loop Until atimer = -1
BEGIN:
Screen 12
Cls




Locate 10, 10: Print " 1.BIGGINERS"
Locate 11, 10: Print " 2.AMATURE"
Locate 12, 10: Print " 3.SEMI-PROFESSIONAL"
Locate 13, 10: Print " 4.PROFESSIONAL"
Locate 14, 10: Print " 5.WORLD CLASS"
Locate 15, 10: Print " 6.LEDGENDARY"
Print
Print
Locate 17, 10: Input "ENTER YOUR CHOICE(1 - 6) "; level

If level = 1 Then
    delay = 450000
    lap = 300
    speed = 1

ElseIf level = 2 Then
    delay = 400000
    lap = 350
    speed = 1
ElseIf level = 3 Then
    delay = 350000
    lap = 400
    speed = 1
ElseIf level = 4 Then
    delay = 300000
    lap = 420
    speed = 1
ElseIf level = 5 Then
    delay = 250000
    lap = 440
    speed = 1
ElseIf level = 6 Then
    delay = 200000
    lap = 460
    speed = 1
End If





'for gun (co ordinates)
gunx = 300
guny = 450

'for bullet (co ordinates)
missilex = 303
missiley = 450
gunxx = 303

' for circles (co ordinate)
a = 22
ay = 22
b = 69
by = 22
C = 116
cy = 22
d = 163
dy = 22
e = 210
ey = 22

c1 = 2
c2 = 2
c3 = 2
c4 = 2
c5 = 2



Cls

top:
a = -188
b = -141
C = -94
d = -47
e = 0


Do
    Cls

    Circle (a, ay), 20, c1
    Paint (a, ay), c1, c1

    Circle (b, by), 20, c2
    Paint (b, by), c2, c2

    Circle (C, cy), 20, c3
    Paint (C, cy), c3, c3


    Circle (d, dy), 20, c4
    Paint (d, dy), c4, c4

    Circle (e, ey), 20, c5
    Paint (e, ey), c5, c5


    Line (gunx, guny)-(gunx + 20, guny + 30), 5, BF
    Line (missilex + 5, missiley)-(missilex + 11, missiley + 10), 7, BF
    Line (gunx - 10, guny + 10)-(gunx + 30, guny + 30), 5, BF
    a$ = InKey$

    For s = 1 To 100
        Let xstars = Int(Rnd * 680) + 1
        Let ystars = Int(Rnd * 480) + 1
        Let sx(s) = xstars
        Let sy(s) = ystars
    Next s

    For I = 1 To 100
        PSet (sx(I), sy(I)), 15
    Next I

    Select Case a$
        Case Chr$(0) + Chr$(75)
            If gunx > 0 Then
                gunx = gunx - 10
                gunxx = gunx

                If missiley = 450 Then missilex = missilex - 10
            End If
        Case Chr$(0) + Chr$(77)
            If gunx < 610 Then
                gunx = gunx + 10
                gunxx = gunx
                If missiley = 450 Then missilex = missilex + 10
            End If
        Case Chr$(0) + Chr$(72)
            missilex = gunxx
            missiley = 450
            missiley = missiley - 10
    End Select
    'FOR KEEPING THE MISSILE MOVING
    If missiley < 450 And missiley > -12 Then
        missiley = missiley - speed
    End If
    ' FOR RELOADING MISSILE
    If missiley = -12 Then
        missiley = 450
    End If


    Print score
    'FOR KEEPING THE MISSILE NEAR THE GUN
    If missiley >= 450 Then missilex = gunxx



    ' FOR MAKING THE BALL DISAPPEAR
    For I = a - 22 To a + 22
        If missilex = I And missiley = ay And c1 <> 0 Then
            score = score + lap
            c1 = 0
        End If

    Next I
    For I = b - 22 To b + 22
        If missilex = I And missiley = by And c2 <> 0 Then
            score = score + lap
            c2 = 0
        End If
    Next I
    For I = C - 22 To C + 22
        If missilex = I And missiley = cy And c3 <> 0 Then
            c3 = 0
            score = score + lap
        End If
    Next I
    For I = d - 22 To d + 22
        If missilex = I And missiley = dy And c4 <> 0 Then
            c4 = 0
            score = score + lap
        End If
    Next I
    For I = e - 22 To e + 22
        If missilex = I And missiley = ey And c5 <> 0 Then
            c5 = 0
            score = score + lap
        End If
    Next I
    Line (0, 430)-(680, 430), 14
    If ay >= 400 Then GoTo last

    'FOR QUITTING THE GAME AFTER ALL THE BALLS ARE SHOT
    If c1 = 0 And c2 = 0 And c3 = 0 And c4 = 0 And c5 = 0 Then GoTo last

    ' TO KEEP THE BALL MOVING
    a = a + speed
    b = b + speed
    C = C + speed
    d = d + speed
    e = e + speed

    For I = 1 To delay
    Next I


Loop Until a >= 690

If a >= 690 Then
    ay = ay + 44
    by = by + 44
    cy = cy + 44
    dy = dy + 44
    ey = ey + 44
    lap = lap - 10
    GoTo top
End If

'GAME OVER
last:
If c1 <> 0 Or c2 <> 0 Or c3 <> 0 Or c4 <> 0 Or c5 <> 0 Then
    Cls
    Print "YOU LOST:"
    GoTo LAST111:
End If

Cls
Color 7
Locate 10, 10: Print "YOUR SCORE IS:"; score
If level = 1 Then
    Color 2
    Print "LOOKS LIKE YOU ARE A BEGGINER."
ElseIf level = 2 Then
    Color 2
    Print "NICE TRY."
ElseIf level = 3 Then
    Color 2
    Print "WELL PLAYED."
ElseIf level = 4 Then
    Color 2
    Print "PERFECT PLAYER. "
ElseIf level = 5 Then
    Color 2
    Print "PROFESSIONAL PLAY MASTER."

End If
LAST111:


Line (0, 430)-(680, 430), 14
Line (gunx, guny)-(gunx + 20, guny + 30), 5, BF
Line (missilex, missiley)-(missilex + 6, missiley + 10), 7, BF
Line (gunx - 10, guny + 10)-(gunx + 30, guny + 30), 5, BF


Color 12
Input "DO YOU WANT TO RETRY(y/n)"; yesno$
If yesno$ = "y" Then
    GoTo TOPP:
Else End
End If

END

