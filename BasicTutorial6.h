#include <OgreRoot.h>

class BasicTutorial6
{
public:
    BasicTutorial6(void);
    virtual ~BasicTutorial6(void);
    bool go(void);

private:
    Ogre::Root* mRoot;
    Ogre::String mPluginsCfg;

};
