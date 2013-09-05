/*
 * freeglut_std.h
 *
 * The GLUT-compatible part of the freeglut library include file
 *
 * Copyright (c) 1999-2000 Pawel W. Olszta. All Rights Reserved.
 * Written by Pawel W. Olszta, <olszta@sourceforge.net>
 * Creation date: Thu Dec 2 1999
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
 * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
 * PAWEL W. OLSZTA BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

module c.gl.freeglut_std;

extern (C):

/*
 * The freeglut and GLUT API versions
 */
immutable FREEGLUT = 1;
immutable GLUT_API_VERSION = 4;
immutable FREEGLUT_VERSION_2_0 = 1;
immutable GLUT_XLIB_IMPLEMENTATION = 13;

/*
 * Always include OpenGL and GLU headers
 */

public import c.gl.gl;
public import c.gl.glu;

/*
 * GLUT API macro definitions -- the special key codes:
 */
enum {
	GLUT_KEY_F1 = 0x0001,
	GLUT_KEY_F2 = 0x0002,
	GLUT_KEY_F3 = 0x0003,
	GLUT_KEY_F4 = 0x0004,
	GLUT_KEY_F5 = 0x0005,
	GLUT_KEY_F6 = 0x0006,
	GLUT_KEY_F7 = 0x0007,
	GLUT_KEY_F8 = 0x0008,
	GLUT_KEY_F9 = 0x0009,
	GLUT_KEY_F10 = 0x000A,
	GLUT_KEY_F11 = 0x000B,
	GLUT_KEY_F12 = 0x000C,
	GLUT_KEY_LEFT = 0x0064,
	GLUT_KEY_UP = 0x0065,
	GLUT_KEY_RIGHT = 0x0066,
	GLUT_KEY_DOWN = 0x0067,
	GLUT_KEY_PAGE_UP = 0x0068,
	GLUT_KEY_PAGE_DOWN = 0x0069,
	GLUT_KEY_HOME = 0x006A,
	GLUT_KEY_END = 0x006B,
	GLUT_KEY_INSERT = 0x006C,
}

/*
 * GLUT API macro definitions -- mouse state definitions
 */
enum {
	GLUT_LEFT_BUTTON = 0x0000,
	GLUT_MIDDLE_BUTTON = 0x0001,
	GLUT_RIGHT_BUTTON = 0x0002,
	GLUT_DOWN = 0x0000,
	GLUT_UP = 0x0001,
	GLUT_LEFT = 0x0000,
	GLUT_ENTERED = 0x0001,
}

/*
 * GLUT API macro definitions -- the display mode definitions
 */
enum {
	GLUT_RGB = 0x0000,
	GLUT_RGBA = 0x0000,
	GLUT_INDEX = 0x0001,
	GLUT_SINGLE = 0x0000,
	GLUT_DOUBLE = 0x0002,
	GLUT_ACCUM = 0x0004,
	GLUT_ALPHA = 0x0008,
	GLUT_DEPTH = 0x0010,
	GLUT_STENCIL = 0x0020,
	GLUT_MULTISAMPLE = 0x0080,
	GLUT_STEREO = 0x0100,
	GLUT_LUMINANCE = 0x0200,
}

/*
 * GLUT API macro definitions -- windows and menu related definitions
 */
enum {
	GLUT_MENU_NOT_IN_USE = 0x0000,
	GLUT_MENU_IN_USE = 0x0001,
	GLUT_NOT_VISIBLE = 0x0000,
	GLUT_VISIBLE = 0x0001,
	GLUT_HIDDEN = 0x0000,
	GLUT_FULLY_RETAINED = 0x0001,
	GLUT_PARTIALLY_RETAINED = 0x0002,
	GLUT_FULLY_COVERED = 0x0003,
}

/*
 * GLUT API macro definitions -- fonts definitions
 *
 * Steve Baker suggested to make it binary compatible with GLUT:
 */
version (Windows)
{
    immutable GLUT_STROKE_ROMAN               = (cast(void *)0x0000);
    immutable GLUT_STROKE_MONO_ROMAN          = (cast(void *)0x0001);
    immutable GLUT_BITMAP_9_BY_15             = (cast(void *)0x0002);
    immutable GLUT_BITMAP_8_BY_13             = (cast(void *)0x0003);
    immutable GLUT_BITMAP_TIMES_ROMAN_10      = (cast(void *)0x0004);
    immutable GLUT_BITMAP_TIMES_ROMAN_24      = (cast(void *)0x0005);
    immutable GLUT_BITMAP_HELVETICA_10        = (cast(void *)0x0006);
    immutable GLUT_BITMAP_HELVETICA_12        = (cast(void *)0x0007);
    immutable GLUT_BITMAP_HELVETICA_18        = (cast(void *)0x0008);
} else
{
    /*
     * I don't really know if it's a good idea... But here it goes:
     */
    extern void* glutStrokeRoman;
    extern void* glutStrokeMonoRoman;
    extern void* glutBitmap9By15;
    extern void* glutBitmap8By13;
    extern void* glutBitmapTimesRoman10;
    extern void* glutBitmapTimesRoman24;
    extern void* glutBitmapHelvetica10;
    extern void* glutBitmapHelvetica12;
    extern void* glutBitmapHelvetica18;

    /*
     * Those pointers will be used by following definitions:
     */
    immutable GLUT_STROKE_ROMAN               = (cast(void *) &glutStrokeRoman);
    immutable GLUT_STROKE_MONO_ROMAN          = (cast(void *) &glutStrokeMonoRoman);
    immutable GLUT_BITMAP_9_BY_15             = (cast(void *) &glutBitmap9By15);
    immutable GLUT_BITMAP_8_BY_13             = (cast(void *) &glutBitmap8By13);
    immutable GLUT_BITMAP_TIMES_ROMAN_10      = (cast(void *) &glutBitmapTimesRoman10);
    immutable GLUT_BITMAP_TIMES_ROMAN_24      = (cast(void *) &glutBitmapTimesRoman24);
    immutable GLUT_BITMAP_HELVETICA_10        = (cast(void *) &glutBitmapHelvetica10);
    immutable GLUT_BITMAP_HELVETICA_12        = (cast(void *) &glutBitmapHelvetica12);
    immutable GLUT_BITMAP_HELVETICA_18        = (cast(void *) &glutBitmapHelvetica18);
}

/*
 * GLUT API macro definitions -- the glutGet parameters
 */
enum {
	GLUT_WINDOW_X = 0x0064,
	GLUT_WINDOW_Y = 0x0065,
	GLUT_WINDOW_WIDTH = 0x0066,
	GLUT_WINDOW_HEIGHT = 0x0067,
	GLUT_WINDOW_BUFFER_SIZE = 0x0068,
	GLUT_WINDOW_STENCIL_SIZE = 0x0069,
	GLUT_WINDOW_DEPTH_SIZE = 0x006A,
	GLUT_WINDOW_RED_SIZE = 0x006B,
	GLUT_WINDOW_GREEN_SIZE = 0x006C,
	GLUT_WINDOW_BLUE_SIZE = 0x006D,
	GLUT_WINDOW_ALPHA_SIZE = 0x006E,
	GLUT_WINDOW_ACCUM_RED_SIZE = 0x006F,
	GLUT_WINDOW_ACCUM_GREEN_SIZE = 0x0070,
	GLUT_WINDOW_ACCUM_BLUE_SIZE = 0x0071,
	GLUT_WINDOW_ACCUM_ALPHA_SIZE = 0x0072,
	GLUT_WINDOW_DOUBLEBUFFER = 0x0073,
	GLUT_WINDOW_RGBA = 0x0074,
	GLUT_WINDOW_PARENT = 0x0075,
	GLUT_WINDOW_NUM_CHILDREN = 0x0076,
	GLUT_WINDOW_COLORMAP_SIZE = 0x0077,
	GLUT_WINDOW_NUM_SAMPLES = 0x0078,
	GLUT_WINDOW_STEREO = 0x0079,
	GLUT_WINDOW_CURSOR = 0x007A,

	GLUT_SCREEN_WIDTH = 0x00C8,
	GLUT_SCREEN_HEIGHT = 0x00C9,
	GLUT_SCREEN_WIDTH_MM = 0x00CA,
	GLUT_SCREEN_HEIGHT_MM = 0x00CB,
	GLUT_MENU_NUM_ITEMS = 0x012C,
	GLUT_DISPLAY_MODE_POSSIBLE = 0x0190,
	GLUT_INIT_WINDOW_X = 0x01F4,
	GLUT_INIT_WINDOW_Y = 0x01F5,
	GLUT_INIT_WINDOW_WIDTH = 0x01F6,
	GLUT_INIT_WINDOW_HEIGHT = 0x01F7,
	GLUT_INIT_DISPLAY_MODE = 0x01F8,
	GLUT_ELAPSED_TIME = 0x02BC,
	GLUT_WINDOW_FORMAT_ID = 0x007B,
}

/*
 * GLUT API macro definitions -- the glutDeviceGet parameters
 */
enum {
	GLUT_HAS_KEYBOARD = 0x0258,
	GLUT_HAS_MOUSE = 0x0259,
	GLUT_HAS_SPACEBALL = 0x025A,
	GLUT_HAS_DIAL_AND_BUTTON_BOX = 0x025B,
	GLUT_HAS_TABLET = 0x025C,
	GLUT_NUM_MOUSE_BUTTONS = 0x025D,
	GLUT_NUM_SPACEBALL_BUTTONS = 0x025E,
	GLUT_NUM_BUTTON_BOX_BUTTONS = 0x025F,
	GLUT_NUM_DIALS = 0x0260,
	GLUT_NUM_TABLET_BUTTONS = 0x0261,
	GLUT_DEVICE_IGNORE_KEY_REPEAT = 0x0262,
	GLUT_DEVICE_KEY_REPEAT = 0x0263,
	GLUT_HAS_JOYSTICK = 0x0264,
	GLUT_OWNS_JOYSTICK = 0x0265,
	GLUT_JOYSTICK_BUTTONS = 0x0266,
	GLUT_JOYSTICK_AXES = 0x0267,
	GLUT_JOYSTICK_POLL_RATE = 0x0268,
}

/*
 * GLUT API macro definitions -- the glutLayerGet parameters
 */
enum {
	GLUT_OVERLAY_POSSIBLE = 0x0320,
	GLUT_LAYER_IN_USE = 0x0321,
	GLUT_HAS_OVERLAY = 0x0322,
	GLUT_TRANSPARENT_INDEX = 0x0323,
	GLUT_NORMAL_DAMAGED = 0x0324,
	GLUT_OVERLAY_DAMAGED = 0x0325,
}

/*
 * GLUT API macro definitions -- the glutVideoResizeGet parameters
 */
enum {
	GLUT_VIDEO_RESIZE_POSSIBLE = 0x0384,
	GLUT_VIDEO_RESIZE_IN_USE = 0x0385,
	GLUT_VIDEO_RESIZE_X_DELTA = 0x0386,
	GLUT_VIDEO_RESIZE_Y_DELTA = 0x0387,
	GLUT_VIDEO_RESIZE_WIDTH_DELTA = 0x0388,
	GLUT_VIDEO_RESIZE_HEIGHT_DELTA = 0x0389,
	GLUT_VIDEO_RESIZE_X = 0x038A,
	GLUT_VIDEO_RESIZE_Y = 0x038B,
	GLUT_VIDEO_RESIZE_WIDTH = 0x038C,
	GLUT_VIDEO_RESIZE_HEIGHT = 0x038D,
}

/*
 * GLUT API macro definitions -- the glutUseLayer parameters
 */
enum {
	GLUT_NORMAL = 0x0000,
	GLUT_OVERLAY = 0x0001,
}

/*
 * GLUT API macro definitions -- the glutGetModifiers parameters
 */
enum {
	GLUT_ACTIVE_SHIFT = 0x0001,
	GLUT_ACTIVE_CTRL = 0x0002,
	GLUT_ACTIVE_ALT = 0x0004,
}

/*
 * GLUT API macro definitions -- the glutSetCursor parameters
 */
enum {
	GLUT_CURSOR_RIGHT_ARROW = 0x0000,
	GLUT_CURSOR_LEFT_ARROW = 0x0001,
	GLUT_CURSOR_INFO = 0x0002,
	GLUT_CURSOR_DESTROY = 0x0003,
	GLUT_CURSOR_HELP = 0x0004,
	GLUT_CURSOR_CYCLE = 0x0005,
	GLUT_CURSOR_SPRAY = 0x0006,
	GLUT_CURSOR_WAIT = 0x0007,
	GLUT_CURSOR_TEXT = 0x0008,
	GLUT_CURSOR_CROSSHAIR = 0x0009,
	GLUT_CURSOR_UP_DOWN = 0x000A,
	GLUT_CURSOR_LEFT_RIGHT = 0x000B,
	GLUT_CURSOR_TOP_SIDE = 0x000C,
	GLUT_CURSOR_BOTTOM_SIDE = 0x000D,
	GLUT_CURSOR_LEFT_SIDE = 0x000E,
	GLUT_CURSOR_RIGHT_SIDE = 0x000F,
	GLUT_CURSOR_TOP_LEFT_CORNER = 0x0010,
	GLUT_CURSOR_TOP_RIGHT_CORNER = 0x0011,
	GLUT_CURSOR_BOTTOM_RIGHT_CORNER = 0x0012,
	GLUT_CURSOR_BOTTOM_LEFT_CORNER = 0x0013,
	GLUT_CURSOR_INHERIT = 0x0064,
	GLUT_CURSOR_NONE = 0x0065,
	GLUT_CURSOR_FULL_CROSSHAIR = 0x0066,
}

/*
 * GLUT API macro definitions -- RGB color component specification definitions
 */
enum {
	GLUT_RED = 0x0000,
	GLUT_GREEN = 0x0001,
	GLUT_BLUE = 0x0002,
}

/*
 * GLUT API macro definitions -- additional keyboard and joystick definitions
 */
enum {
	GLUT_KEY_REPEAT_OFF = 0x0000,
	GLUT_KEY_REPEAT_ON = 0x0001,
	GLUT_KEY_REPEAT_DEFAULT = 0x0002,

	GLUT_JOYSTICK_BUTTON_A = 0x0001,
	GLUT_JOYSTICK_BUTTON_B = 0x0002,
	GLUT_JOYSTICK_BUTTON_C = 0x0004,
	GLUT_JOYSTICK_BUTTON_D = 0x0008,
}

/*
 * GLUT API macro definitions -- game mode definitions
 */
enum {
	GLUT_GAME_MODE_ACTIVE = 0x0000,
	GLUT_GAME_MODE_POSSIBLE = 0x0001,
	GLUT_GAME_MODE_WIDTH = 0x0002,
	GLUT_GAME_MODE_HEIGHT = 0x0003,
	GLUT_GAME_MODE_PIXEL_DEPTH = 0x0004,
	GLUT_GAME_MODE_REFRESH_RATE = 0x0005,
	GLUT_GAME_MODE_DISPLAY_CHANGED = 0x0006,
}

/*
 * Initialization functions, see fglut_init.c
 */
void     glutInit( int* pargc, char** argv );
void     glutInitWindowPosition( int x, int y );
void     glutInitWindowSize( int width, int height );
void     glutInitDisplayMode( uint displayMode );
void     glutInitDisplayString( const char* displayMode );

/*
 * Process loop function, see freeglut_main.c
 */
void     glutMainLoop( void );

/*
 * Window management functions, see freeglut_window.c
 */
int      glutCreateWindow( const char* title );
int      glutCreateSubWindow( int window, int x, int y, int width, int height );
void     glutDestroyWindow( int window );
void     glutSetWindow( int window );
int      glutGetWindow( void );
void     glutSetWindowTitle( const char* title );
void     glutSetIconTitle( const char* title );
void     glutReshapeWindow( int width, int height );
void     glutPositionWindow( int x, int y );
void     glutShowWindow( void );
void     glutHideWindow( void );
void     glutIconifyWindow( void );
void     glutPushWindow( void );
void     glutPopWindow( void );
void     glutFullScreen( void );

/*
 * Display-connected functions, see freeglut_display.c
 */
void     glutPostWindowRedisplay( int window );
void     glutPostRedisplay( void );
void     glutSwapBuffers( void );

/*
 * Mouse cursor functions, see freeglut_cursor.c
 */
void     glutWarpPointer( int x, int y );
void     glutSetCursor( int cursor );

/*
 * Overlay stuff, see freeglut_overlay.c
 */
void     glutEstablishOverlay( void );
void     glutRemoveOverlay( void );
void     glutUseLayer( GLenum layer );
void     glutPostOverlayRedisplay( void );
void     glutPostWindowOverlayRedisplay( int window );
void     glutShowOverlay( void );
void     glutHideOverlay( void );

/*
 * Menu stuff, see freeglut_menu.c
 */
int      glutCreateMenu( void function(int menu) callback );
void     glutDestroyMenu( int menu );
int      glutGetMenu( void );
void     glutSetMenu( int menu );
void     glutAddMenuEntry( const char* label, int value );
void     glutAddSubMenu( const char* label, int subMenu );
void     glutChangeToMenuEntry( int item, const char* label, int value );
void     glutChangeToSubMenu( int item, const char* label, int value );
void     glutRemoveMenuItem( int item );
void     glutAttachMenu( int button );
void     glutDetachMenu( int button );

/*
 * Global callback functions, see freeglut_callbacks.c
 */
void     glutTimerFunc( uint time, void function( int ) callback, int value );
void     glutIdleFunc( void function( void ) callback );

/*
 * Window-specific callback functions, see freeglut_callbacks.c
 */
void     glutKeyboardFunc( void function( ubyte, int, int ) callback );
void     glutSpecialFunc( void function( int, int, int ) callback );
void     glutReshapeFunc( void function( int, int ) callback );
void     glutVisibilityFunc( void function( int ) callback );
void     glutDisplayFunc( void function( void ) callback );
void     glutMouseFunc( void function( int, int, int, int ) callback );
void     glutMotionFunc( void function( int, int ) callback );
void     glutPassiveMotionFunc( void function( int, int ) callback );
void     glutEntryFunc( void function( int ) callback );

void     glutKeyboardUpFunc( void function( ubyte, int, int ) callback );
void     glutSpecialUpFunc( void function( int, int, int ) callback );
void     glutJoystickFunc( void function( uint, int, int, int ) callback, int pollInterval );
void     glutMenuStateFunc( void function( int ) callback );
void     glutMenuStatusFunc( void function( int, int, int ) callback );
void     glutOverlayDisplayFunc( void function( void ) callback );
void     glutWindowStatusFunc( void function( int ) callback );

void     glutSpaceballMotionFunc( void function( int, int, int ) callback );
void     glutSpaceballRotateFunc( void function( int, int, int ) callback );
void     glutSpaceballButtonFunc( void function( int, int ) callback );
void     glutButtonBoxFunc( void function( int, int ) callback );
void     glutDialsFunc( void function( int, int ) callback );
void     glutTabletMotionFunc( void function( int, int ) callback );
void     glutTabletButtonFunc( void function( int, int, int, int ) callback );

/*
 * State setting and retrieval functions, see freeglut_state.c
 */
int      glutGet( GLenum query );
int      glutDeviceGet( GLenum query );
int      glutGetModifiers( void );
int      glutLayerGet( GLenum query );

/*
 * Font stuff, see freeglut_font.c
 */
void     glutBitmapCharacter( void* font, int character );
int      glutBitmapWidth( void* font, int character );
void     glutStrokeCharacter( void* font, int character );
int      glutStrokeWidth( void* font, int character );
int      glutBitmapLength( void* font, const ubyte* string );
int      glutStrokeLength( void* font, const ubyte* string );

/*
 * Geometry functions, see freeglut_geometry.c
 */
void     glutWireCube( GLdouble size );
void     glutSolidCube( GLdouble size );
void     glutWireSphere( GLdouble radius, GLint slices, GLint stacks );
void     glutSolidSphere( GLdouble radius, GLint slices, GLint stacks );
void     glutWireCone( GLdouble base, GLdouble height, GLint slices, GLint stacks );
void     glutSolidCone( GLdouble base, GLdouble height, GLint slices, GLint stacks );

void     glutWireTorus( GLdouble innerRadius, GLdouble outerRadius, GLint sides, GLint rings );
void     glutSolidTorus( GLdouble innerRadius, GLdouble outerRadius, GLint sides, GLint rings );
void     glutWireDodecahedron( void );
void     glutSolidDodecahedron( void );
void     glutWireOctahedron( void );
void     glutSolidOctahedron( void );
void     glutWireTetrahedron( void );
void     glutSolidTetrahedron( void );
void     glutWireIcosahedron( void );
void     glutSolidIcosahedron( void );

/*
 * Teapot rendering functions, found in freeglut_teapot.c
 */
void     glutWireTeapot( GLdouble size );
void     glutSolidTeapot( GLdouble size );

/*
 * Game mode functions, see freeglut_gamemode.c
 */
void     glutGameModeString( const char* string );
int      glutEnterGameMode( void );
void     glutLeaveGameMode( void );
int      glutGameModeGet( GLenum query );

/*
 * Video resize functions, see freeglut_videoresize.c
 */
int      glutVideoResizeGet( GLenum query );
void     glutSetupVideoResizing( void );
void     glutStopVideoResizing( void );
void     glutVideoResize( int x, int y, int width, int height );
void     glutVideoPan( int x, int y, int width, int height );

/*
 * Colormap functions, see freeglut_misc.c
 */
void     glutSetColor( int color, GLfloat red, GLfloat green, GLfloat blue );
GLfloat  glutGetColor( int color, int component );
void     glutCopyColormap( int window );

/*
 * Misc keyboard and joystick functions, see freeglut_misc.c
 */
void     glutIgnoreKeyRepeat( int ignore );
void     glutSetKeyRepeat( int repeatMode );
void     glutForceJoystickFunc( void );

/*
 * Misc functions, see freeglut_misc.c
 */
int      glutExtensionSupported( const char* extension );
void     glutReportErrors( void );

/* Comment from glut.h of classic GLUT:

   Win32 has an annoying issue where there are multiple C run-time
   libraries (CRTs).  If the executable is linked with a different CRT
   from the GLUT DLL, the GLUT DLL will not share the same CRT static
   data seen by the executable.  In particular, atexit callbacks registered
   in the executable will not be called if GLUT calls its (different)
   exit routine).  GLUT is typically built with the
   "/MD" option (the CRT with multithreading DLL support), but the Visual
   C++ linker default is "/ML" (the single threaded CRT).

   One workaround to this issue is requiring users to always link with
   the same CRT as GLUT is compiled with.  That requires users supply a
   non-standard option.  GLUT 3.7 has its own built-in workaround where
   the executable's "exit" function pointer is covertly passed to GLUT.
   GLUT then calls the executable's exit function pointer to ensure that
   any "atexit" calls registered by the application are called if GLUT
   needs to exit.

   Note that the __glut*WithExit routines should NEVER be called directly.
   To avoid the atexit workaround, #define GLUT_DISABLE_ATEXIT_HACK. */

/* to get the prototype for exit() */

/+ TODO D

#if defined(_WIN32) && !defined(GLUT_DISABLE_ATEXIT_HACK) && !defined(__WATCOMC__)
void  __glutInitWithExit(int *argcp, char **argv, void (__cdecl *exitfunc)(int));
int  __glutCreateWindowWithExit(const char *title, void (__cdecl *exitfunc)(int));
int  __glutCreateMenuWithExit(void (* func)(int), void (__cdecl *exitfunc)(int));
#ifndef FREEGLUT_BUILDING_LIB
#if defined(__GNUC__)
#define FGUNUSED __attribute__((unused))
#else
#define FGUNUSED
#endif
static void  FGUNUSED glutInit_ATEXIT_HACK(int *argcp, char **argv) { __glutInitWithExit(argcp, argv, exit); }
#define glutInit glutInit_ATEXIT_HACK
static int  FGUNUSED glutCreateWindow_ATEXIT_HACK(const char *title) { return __glutCreateWindowWithExit(title, exit); }
#define glutCreateWindow glutCreateWindow_ATEXIT_HACK
static int  FGUNUSED glutCreateMenu_ATEXIT_HACK(void (* func)(int)) { return __glutCreateMenuWithExit(func, exit); }
#define glutCreateMenu glutCreateMenu_ATEXIT_HACK
#endif
#endif
+/
