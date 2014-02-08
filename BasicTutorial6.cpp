#include "BasicTutorial6.h"

#include <OgreException.h>

//-------------------------------------------------------------------------------------
BasicTutorial6::BasicTutorial6(void) : mRoot(0), mPluginsCfg(Ogre::StringUtil::BLANK)
{
}
//-------------------------------------------------------------------------------------
BasicTutorial6::~BasicTutorial6(void)
{
	delete mRoot;
}

bool BasicTutorial6::go(void)
{
#ifdef _DEBUG
	mPluginsCfg = "plugins_d.cfg";
#else
	mPluginsCfg = "plugins.cfg";
#endif

	mRoot = new Ogre::Root(mPluginsCfg);

    return true;
}


#if OGRE_PLATFORM == OGRE_PLATFORM_WIN32
#define WIN32_LEAN_AND_MEAN
#include "windows.h"
#endif

#ifdef __cplusplus
extern "C" {
#endif

#if OGRE_PLATFORM == OGRE_PLATFORM_WIN32
    INT WINAPI WinMain( HINSTANCE hInst, HINSTANCE, LPSTR strCmdLine, INT )
#else
    int main(int argc, char *argv[])
#endif
    {
        // Create application object
        BasicTutorial6 app;

        try {
            app.go();
        } catch( Ogre::Exception& e ) {
#if OGRE_PLATFORM == OGRE_PLATFORM_WIN32
            MessageBox( NULL, e.getFullDescription().c_str(), "An exception has occured!", MB_OK | MB_ICONERROR | MB_TASKMODAL);
#else
            std::cerr << "An exception has occured: " <<
                e.getFullDescription().c_str() << std::endl;
#endif
        }

        return 0;
    }

#ifdef __cplusplus
}
#endif
