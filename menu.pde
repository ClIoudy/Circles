

void menu(Gamestate gamestate) {
    a = 0;

    switch (gamestate) {

        case MENU:
            FrequencyButton.drawButton();
            OffsetButton.drawButton();
            CountButton.drawButton();
            PlayButton.drawButton();
            DrawCustom.drawButton();
            break;
        
        case FREQUENCYSLIDER:
            //Frequency.pa = atan2(Frequency.x - mouseX, Frequency.y - mouseY) / PI;
            Frequency.drawSlider();
            MenuButton.drawButton();
            break;

        case COUNTSLIDER:
            //Count.pa = atan2(Count.x - mouseX, Count.y - mouseY) / PI;
            Count.drawSlider();
            MenuButton.drawButton();
            break;
        

        case OFFSETSLIDER:
            //Offset.pa = atan2(Offset.x - mouseX, Offset.y - mouseY) / PI;
            Offset.drawSlider();
            MenuButton.drawButton();
            break;
        case DRAW:
            drawing();
            SaveCustom.drawButton();
            ClearCustom.drawButton();
        }



}