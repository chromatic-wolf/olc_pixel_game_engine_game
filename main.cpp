#define OLC_PGE_APPLICATION
#define OLC_IMAGE_STB
#include "stb_image.h"
#include "olcPixelGameEngine.h"
#include "player.h"

//Ideas
//Physics object should be the base class and everything should use that
//Physics object should handle collisions ect


class Game : public olc::PixelGameEngine
{
private:
    player *character;
    float characterSpeed = 1;
    olc::vf2d *mousePos;


public:

    Game()
    {
        sAppName = "My Game";
    }

public:
    bool OnUserCreate() override
    {

        // Called once at the start, so create things here
        mousePos = new olc::vf2d();

        character = new player(this, "images/player.png");

        if(character->loadPlayer() == olc::OK)
        {
            std::cout << "sprite loaded" << std::endl;
            character->setPosition(olc::vf2d({1.0f,1.0f}));

        }else
        {
            std::cout << "sprite failed to load" << std::endl;

        }
        return true;
    }

    bool OnUserUpdate(float fElapsedTime) override
    {
        // called once per frame
        *mousePos = { float(GetMouseX()), float(GetMouseY()) };

        character->setPosition(*character->getPosition());
        if (GetKey(olc::Key::LEFT).bHeld) character->moveLeft(characterSpeed, &fElapsedTime);
        if (GetKey(olc::Key::RIGHT).bHeld) character->moveRight(characterSpeed, &fElapsedTime);
        if (GetKey(olc::Key::UP).bHeld) character->moveUp(characterSpeed, &fElapsedTime);
        if (GetKey(olc::Key::DOWN).bHeld) character->moveDown(characterSpeed, &fElapsedTime);
        if (GetKey(olc::Key::M).bHeld) characterSpeed ++;
        if (GetKey(olc::Key::N).bHeld && characterSpeed > 0.0f) characterSpeed --;



        return true;
    }
};


int main()
{
    Game demo;


    if (demo.Construct(256, 240, 4, 4, false, true, true))
    {
        demo.Start();
        //ToDo display message box on both linux and windows if window creation fails
    }else
    {
        std::cerr << "Unable to create openGL window! cannot continue" << std::endl;
        return -1;
    }

    return 0;
}
