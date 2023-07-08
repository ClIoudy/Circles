
class Button {
    int x, y, sizeX, sizeY;
    String name;
    color col;
    boolean pmousePressed;
    Command command = () -> buttonPress();

    boolean pressed;

    Button(int x, int y, int sizeX, int sizeY, String name, color col) {
        this.x = x;
        this.y = y;
        this.sizeX = sizeX;
        this.sizeY = sizeY;
        this.name = name;
        this.col = col;
    }
    Button(int x,int y, int size, String name) {
        this(x, y, size, size, name, color(255));
    }

    void drawButton() {
        noStroke();
        rectMode(CENTER);
        fill(col);
        rect(x, y, sizeX, sizeY, 10);
        textSize(max(10, min(sizeX, sizeY)/2));
        textAlign(CENTER);
        text(name, x, y - sizeY/2 - 2);
        isPressed(command);
    }

    void isPressed(Command command) {
        if (!pmousePressed && mousePressed && mouseInRect(this))
            command.exectue();
            pmousePressed = mousePressed;
    }

    
    void buttonPress() {
        pressed = !pressed;
    }


}



interface Command {
    void exectue();
    //void exectue(Gamestate g);
}

boolean mouseInRect(int x, int y, int sizeX, int sizeY) {
    return mouseX < x + sizeX/2 && mouseX > x - sizeX/2 
        && mouseY < y + sizeY/2 && mouseY > y - sizeY/2;
}

boolean mouseInRect(int x, int y, int size) {
    return mouseInRect(x, y, size, size);
}
boolean mouseInRect(Button button) {
    return mouseInRect(button.x, button.y, button.sizeX, button.sizeY);
}