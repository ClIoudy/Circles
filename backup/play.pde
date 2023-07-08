
void play(float f, float offset, float count){
    MenuButton.drawButton();
    SecondMenu.drawButton();
    if(SecondMenu.pressed) {
        text("F:" + nf(Frequency.val, 0, 2), 100, 50);
        text("O:" + nf(Offset.val, 0, 2), 175, 50);
        NullF.drawButton();
        ColorButton.drawButton();
        FastForward.drawButton();
        //Count1.drawButton();
        //Count2.drawButton();
        reset.drawButton();
        CycleShapes.drawButton();
        CycleShapes.name = Shapes[ShapeIndex];       

        Reverse.drawButton();
        Pause.drawButton();
        NullO.drawButton();

    }
    float c = 2;
    if(Shapes[ShapeIndex] == "Circles")
        circles(f, offset, count, c);
    else if(Shapes[ShapeIndex] == "Lines")
        lines(f, offset, count, c);

    else if(Shapes[ShapeIndex] == "Rects")
        rects(f, offset, count, c);


    if(mousePressed && pmousePressed)  {
        
        Frequency.val += mouseX > 0 && mouseX < w/2 ? (float)(pmouseY - mouseY) / (float)w : 0;
        Offset.val    += mouseX > w/2 && mouseX < w ? (float)(pmouseY - mouseY) / (float)w / 15.0 : 0;
        //Count.val += (float)(mouseX - pmouseX) / (float)w; 
    }
    pmousePressed = mousePressed;
    int FF = FastForward.pressed ? 10 : 1;
    int R = Reverse.pressed ? -1 : 1;
    int P = Pause.pressed ? 0 : 1;
    float dt = (millis() - lastMillis)/1000;
    a += f * dt * FF * R * P;
    lastMillis = millis();

}

void circles(float f, float offset, float count, float c) {
    for(int i = 1; i < count+1; i++){
    color col = color((c*255/count * i + a)%255, 255, 255);
        fill( ColorButton.pressed ? color(255, 0, 255) : col);

        circle(
            w/2 + sin(a * TWO_PI * (float) i/ count * offset) * m, 
            h/2 + cos(a * TWO_PI * (float) i/ count) * m,
            20
        );
    }  
}

void rects(float f, float offset, float count, float c) {
    for(int i = 1; i < count+1; i++){
    color col = color((c*255/count * i + a)%255, 255, 255);
        fill( ColorButton.pressed ? color(255, 0, 255) : col);

        rect(
            w/2 + sin(a * TWO_PI * (float) i/ count * offset) * m, 
            h/2 + cos(a * TWO_PI * (float) i/ count) * m,
            20,
            20
        );
    }  
}

void lines(float f, float offset, float count, float c) {

    for(int i = 2; i < count+2; i++) {
    color col = color((c*255/count * i + a)%255, 255, 255);
        stroke( ColorButton.pressed ? color(255, 0, 255) : col);
        line(
            w/2 + sin(a * TWO_PI * (float)i / count * offset) * m, 
            h/2 + cos(a * TWO_PI * (float)i / count) * m,
            w/2 + sin(a * TWO_PI * (float)(i-1)/count * offset) * m, 
            h/2 + cos(a * TWO_PI * (float)(i-1)/count) * m
        );


    }

}
