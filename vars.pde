Gamestate gamestate;
int m = 200;
float lastMillis;

float a, f, offset;
int count = 50;

boolean pmousePressed;

void instantiate() {
    int min_20 = min(w, h)/20;

    Frequency = new Slider("FrequencyButton", 0.3, 1);
    FrequencyButton = new Button(w/2, h/4, min_20, "Frequency");
    Offset = new Slider("OffsetButton", 0.2, 1);
    OffsetButton = new Button(w/2, h - h/4, min_20, "Offset");
    Count = new Slider("Circle Count", 8, -1, 5);
    CountButton = new Button(w/2, h - 2 * h/4, min_20, "Count");

    SecondMenu = new Button(50, 50, min(w, h)/25, "");
    NullF = new Button(50, 150, min(w, h)/25, "Reset F");
    ColorButton = new Button(50, 225, min(w, h)/25, "Color");
    FastForward = new Button(50, 300, min(w, h)/25, "FF");
    Pause = new Button(50, 375, min(w, h)/25, "Pause");

    NullO = new Button(100, 150, min(w, h)/25, "Reset O");
    reset = new Button(100, 225, min(w, h)/25, "reset");
    CycleShapes = new Button(100, 300, min(w, h)/25, "");
    Reverse = new Button(100, 375, min(w, h)/25, "R");

    MenuButton = new Button(w-50, 50, min_20, "Menu");
    PlayButton = new Button(w-50, 50, min_20, "Play");
    DrawCustom = new Button(50, 50, min_20, "Draw!");

    SaveCustom = new Button(50, 50, min_20, "Save");
    ClearCustom = new Button(w - 50, 50, min_20, "Clear");
    canvas = createGraphics(w, h);
    
    to_draw = createImage(0, 0, RGB);
}


int w = 800, h = 600;
Slider Frequency;
Button FrequencyButton;
Slider Offset;
Button OffsetButton;
Slider Count;
Button CountButton;

Button SecondMenu;
Button NullF;
Button ColorButton;
Button FastForward;
Button Pause;

Button NullO;
Button reset;
Button CycleShapes;
Button Reverse;

Button MenuButton;
Button PlayButton;
Button DrawCustom;

Button ClearCustom;
Button SaveCustom;
PImage to_draw;


enum Shapes {
    Circles("Circles"),
    Lines("Lines"),
    Rects("Rects"),
    Custom("Custom");

    private final String text;
    
     
    Shapes(final String text) {
        this.text = text;
    }

    static final Shapes[] vals = values();
    
    public String to_string() {
        return this.text;
    }

    Shapes next() {
        return vals[(this.ordinal() + 1) % vals.length];
    }


}

Shapes shapes = Shapes.Circles;

enum Gamestate {
    PLAYING, 
    MENU,
    FREQUENCYSLIDER,
    OFFSETSLIDER,
    COUNTSLIDER,
    DRAW;
}
