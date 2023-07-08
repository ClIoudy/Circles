Gamestate gamestate;
int m = 200;
float lastMillis;

float a, f, offset;
int count = 50;

boolean pmousePressed;

void instantiate() {
    Frequency = new Slider("FrequencyButton", 0.3, 1);
    FrequencyButton = new Button(w/2, h/4, min(w, h)/20, "Frequency");
    Offset = new Slider("OffsetButton", 0.2, 1);
    OffsetButton = new Button(w/2, h - h/4, min(w, h)/20, "Offset");
    Count = new Slider("Circle Count", 8, -1, 5);
    CountButton = new Button(w/2, h - 2 * h/4, min(w, h)/20, "Count");
    println(min(w, h) / 20);
    SecondMenu = new Button(50, 50, min(w, h)/20, "");
    NullF = new Button(50, 150, min(w, h)/20, "Reset F");
    ColorButton = new Button(50, 225, min(w, h)/20, "Color");
    FastForward = new Button(50, 300, min(w, h)/20, "FF");
    Pause = new Button(50, 375, min(w, h)/20, "Pause");

    NullO = new Button(100, 150, min(w, h)/20, "Reset O");
    reset = new Button(100, 225, min(w, h)/20, "reset");
    CycleShapes = new Button(100, 300, min(w, h)/20, "");
    Reverse = new Button(100, 375, min(w, h)/20, "R");

    MenuButton = new Button(w-50, 50, min(w, h)/20, "Menu");
    PlayButton = new Button(w-50, 50, min(w, h)/20, "Play");
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

String Shapes[] = {
    "Circles",
    "Lines",
    "Rects"
};
int ShapeIndex;

enum Gamestate {
    PLAYING, 
    MENU,
    FREQUENCYSLIDER,
    OFFSETSLIDER,
    COUNTSLIDER;
}
