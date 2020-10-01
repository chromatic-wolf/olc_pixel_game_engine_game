#ifndef PLAYER_H
#define PLAYER_H
#include "engine/olcPixelGameEngine.h"

class player
{
public:
    player(olc::PixelGameEngine* pge);
    player(olc::PixelGameEngine* pge, std::string spritePath);
    ~player();
    olc::rcode loadPlayer();
    olc::rcode reLoadPlayer();
    void setSpritePath(std::string spritePath);
    void setPosition(olc::vf2d pos);
    void setScale(olc::vf2d scale);
    void setTint(olc::Pixel tint);
    olc::vf2d* getPosition();
    void moveLeft(float moveValue, float *elapsedTime);
    void moveRight(float moveValue, float *elapsedTime);
    void moveUp(float moveValue, float *elapsedTime);
    void moveDown(float moveValue, float *elapsedTime);
    float* getSpeed();
    void setSpeed(float speed);


};

#endif // PLAYER_H
