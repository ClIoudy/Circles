PGraphics canvas;


void drawing() {

    image(canvas, 0, 0);
    canvas.beginDraw();

        if(!mousePressed) return;
        canvas.fill(255);
        canvas.stroke(255);
        canvas.strokeWeight(7);
        canvas.line(mouseX, mouseY, pmouseX, pmouseY);

        
        
    canvas.endDraw();

}


void playCustom(float f, float offset, float count, float c) {
    for(int i = 1; i < count+1; i++){
    color col = color((c*255/count * i + a)%255, 255, 255);
        tint( ColorButton.pressed ? color(255, 0, 255) : col );
        image(
            to_draw,
            w/2 + sin(a * TWO_PI * (float) i/ count * offset) * m, 
            h/2 + cos(a * TWO_PI * (float) i/ count) * m
        );
    }  
}

