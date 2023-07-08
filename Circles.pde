// reverse button


void setup() {
    //size(800, 600);
    fullScreen();
    w = displayWidth;
    h = displayHeight;
    m = min(w, h)/4;
    colorMode(HSB);

    //fullScreen();
    noStroke();
    gamestate = gamestate.MENU;

    instantiate();
    //Gamestate to;
    FrequencyButton.command = () -> gamestate = gamestate.FREQUENCYSLIDER;
    OffsetButton.command = () -> gamestate = gamestate.OFFSETSLIDER;
    CountButton.command = () -> gamestate = gamestate.COUNTSLIDER;
    MenuButton.command = () -> gamestate = gamestate.MENU;
    PlayButton.command = () -> gamestate = gamestate.PLAYING;
    DrawCustom.command = () -> {
        background(30);
        gamestate = gamestate.DRAW;
    };
    NullF.command = () -> Frequency.val = 1;
    NullO.command = () -> Offset.val = 1;
    //Count1.command = () -> Count.val += 1;
    //Count2.command = () -> Count.val -= 1;
    reset.command = () -> a = 0;
    CycleShapes.command = () -> shapes = shapes.next();

    SaveCustom.command = () -> {
        gamestate = gamestate.MENU;
        to_draw = canvas.get();
        to_draw.resize(70, 70);
    };
    ClearCustom.command = () -> canvas.clear();
}

void draw() {
    Count.val = abs(Count.val);
    
    background(30);
    
    
    if (gamestate == gamestate.PLAYING) play(Frequency.val, Offset.val, Count.val);
    else menu(gamestate);
    //play(f, offset, count);
}
