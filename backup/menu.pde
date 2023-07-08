

void menu(Gamestate gamestate) {
    a = 0;
    if (gamestate == gamestate.MENU) {
        FrequencyButton.drawButton();
        OffsetButton.drawButton();
        CountButton.drawButton();
        PlayButton.drawButton();
    }
    else if (gamestate == gamestate.FREQUENCYSLIDER) {
        //Frequency.pa = atan2(Frequency.x - mouseX, Frequency.y - mouseY) / PI;
        Frequency.drawSlider();
        MenuButton.drawButton();
    }
    else if (gamestate == gamestate.COUNTSLIDER) {
        //Count.pa = atan2(Count.x - mouseX, Count.y - mouseY) / PI;
        Count.drawSlider();
        MenuButton.drawButton();
    }

    else if (gamestate == gamestate.OFFSETSLIDER) {
        //Offset.pa = atan2(Offset.x - mouseX, Offset.y - mouseY) / PI;
        Offset.drawSlider();
        MenuButton.drawButton();
    }


}