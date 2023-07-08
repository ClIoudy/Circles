class Slider {

    float val, stepSize;
    int x, y, size;
    String name;
    int digits;
    int b = 30;
    boolean pmousePressed;
    float a, pa;

    Slider(int x, int y, int size, String name, float stepSize, int digits, float startval) {
        this.x = x;
        this.y = y;
        this.size = size;
        this.stepSize = stepSize;
        this.name = name;
        this.digits = digits;
        this.val = startval;
    }
    Slider(int x, int y, int size, String name, float stepSize, float startval) { 
        this(x, y, size, name, stepSize, 2, startval);
    }
    Slider(String name, float stepSize, float startval) { 
        this(w/2, h/2, min(w, h)/3, name, stepSize, 2, startval);
    }
    Slider(String name, float stepSize, int digits, float startval) { 
        this(w/2, h/2, min(w, h)/3, name, stepSize, digits, startval);
    }

    void drawSlider() {
        
        a = atan2(x - mouseX, y - mouseY) / PI;
        if(mousePressed && abs(a - pa) < 1 && pmousePressed) 
            val += (a - pa) * stepSize;
        pa = a;        

        fill(255);
        circle(x, y, size);
        fill(30);
        circle(x, y, size - b);
        fill(255);
        textSize(size/8);
        textAlign(CENTER);
        text(name, x, y - size/2 - b/2);
        text(nf(val, 0, digits), x, y);
        fill(100);
        circle(
            x + (size - b/2)/2 * sin( TWO_PI * val / stepSize / 6 ),
            y + (size - b/2)/2 * cos( TWO_PI * val / stepSize / 6 ),
            b/2
        );

        pmousePressed = mousePressed;

    }


}