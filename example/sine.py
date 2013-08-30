from turtle import *
from math import sin, cos, radians

# Selle ülesande juures tuleb abiks kilpkonna käsk goto, mis liigutab
# kilpkonna näidatud koordinaatidele.
# Ülesande saaks lahendada ka left/right/forward käskudega,
# siis tuleks lihtsalt rohkem arvutamist ise teha


# selleks, et graafik tuleks paraja suurusega
# venitame seda y teljel pikemaks
# ja pigistame x teljel kitsamaks
y_scale = 20
x_scale = 0.3

# siinus -----------------------------------------------------
color("blue")
# alustame x väärtusega -500 kraadi
x = -1000
y = sin(radians(x))

# liigutame kilpkonna sinna esialgu ilma joont tõmbamata
up()
goto(round(x * x_scale), round(y * y_scale))
down()

while x < 1000:
    x += 10
    y = sin(radians(x))
    goto(round(x * x_scale) , round(y * y_scale))
    
# koosinus -----------------------------------------------------
color("red")
# alustame x väärtusega -500 kraadi
x = -1000
y = cos(radians(x))

# liigutame kilpkonna sinna esialgu ilma joont tõmbamata
up()
goto(round(x * x_scale), round(y * y_scale))
down()

while x < 1000:
    x += 10
    y = cos(radians(x))
    goto(round(x * x_scale) , round(y * y_scale))
    
exitonclick()
