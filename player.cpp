#include "player.h"
#include "engine/olcPixelGameEngine.h"

olc::PixelGameEngine *engine;
std::string mSpritePath;
olc::Sprite *mSprite;
olc::Decal *mDecal;
olc::vf2d *mPosition;
olc::vf2d *mScale;
olc::Pixel *mTint;
float *mSpeed;

player::player(olc::PixelGameEngine *pge)
{
    engine = pge;
    mSprite = new olc::Sprite();
    mPosition = new olc::vf2d();
    mScale = new olc::vf2d({1.0f, 1.0f});
    mDecal = new olc::Decal(mSprite);
    mTint = new olc::Pixel(olc::WHITE);
    mSpeed = new float(1.0f);

}

player::player(olc::PixelGameEngine *pge, std::string spritePath)
{
    engine = pge;
    mSpritePath = spritePath;
    mSprite = new olc::Sprite();
    mPosition = new olc::vf2d();
    mScale = new olc::vf2d({1.0f, 1.0f});
    mDecal = new olc::Decal(mSprite);
    mTint = new olc::Pixel(olc::WHITE);
    mSpeed = new float(1.0f);

}

player::~player()
{
    delete mSprite;
    delete mDecal;
    delete mPosition;
    delete mScale;
    delete mTint;
    delete mSpeed;
}

olc::rcode player::loadPlayer()
{
    if(mSprite->LoadFromFile(mSpritePath) == olc::OK)
    {

        mDecal->Update();

    }else
    {

        return olc::FAIL;

    }
    return olc::OK;
}

olc::rcode player::reLoadPlayer()
{
    if(mSprite->LoadFromFile(mSpritePath) == olc::OK)
    {
        mDecal->Update();

    }else
    {

        return olc::FAIL;

    }
    return olc::OK;
}

void player::setSpritePath(std::string spritePath)
{
    mSpritePath = spritePath;
}

void player::setPosition(olc::vf2d pos)
{
    *mPosition = pos;
    engine->DrawDecal(*mPosition, mDecal, *mScale, *mTint);
}

void player::setScale(olc::vf2d scale)
{
    *mScale = scale;
}

void player::setTint(olc::Pixel tint)
{
    *mTint = tint;
}

olc::vf2d *player::getPosition()
{
    return mPosition;
}

void player::moveLeft(float moveValue, float *elapsedTime)
{
    mPosition->x = mPosition->x -= moveValue * *elapsedTime;

}

void player::moveRight(float moveValue, float *elapsedTime)
{
    mPosition->x = mPosition->x += moveValue * *elapsedTime;
}

void player::moveUp(float moveValue, float *elapsedTime)
{
    mPosition->y = mPosition->y -= moveValue * *elapsedTime;
}

void player::moveDown(float moveValue, float *elapsedTime)
{
    mPosition->y = mPosition->y += moveValue * *elapsedTime;
}

float *player::getSpeed()
{
    return mSpeed;
}

void player::setSpeed(float speed)
{
*mSpeed = speed;
}


