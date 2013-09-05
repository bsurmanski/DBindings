/*
 * freeglut_ext.h
 *
 * The non-GLUT-compatible extensions to the freeglut library include file
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

module c.gl.freeglut_ext;

extern (C):

/*
 * Additional GLUT Key definitions for the Special key function
 */
enum {
	GLUT_KEY_NUM_LOCK = 0x006D,
	GLUT_KEY_BEGIN = 0x006E,
	GLUT_KEY_DELETE = 0x006F,
	GLUT_KEY_SHIFT_L = 0x0070,
	GLUT_KEY_SHIFT_R = 0x0071,
	GLUT_KEY_CTRL_L = 0x0072,
	GLUT_KEY_CTRL_R = 0x0073,
	GLUT_KEY_ALT_L = 0x0074,
	GLUT_KEY_ALT_R = 0x0075,
}

/*
 * GLUT API Extension macro definitions -- behaviour when the user clicks on an "x" to close a window
 */
enum {
	GLUT_ACTION_EXIT = 0,
	GLUT_ACTION_GLUTMAINLOOP_RETURNS = 1,
	GLUT_ACTION_CONTINUE_EXECUTION = 2,
}

/*
 * Create a new rendering context when the user opens a new window?
 */
enum {
	GLUT_CREATE_NEW_CONTEXT = 0,
	GLUT_USE_CURRENT_CONTEXT = 1,
}

/*
 * Direct/Indirect rendering context options (has meaning only in Unix/X11)
 */
enum {
	GLUT_FORCE_INDIRECT_CONTEXT = 0,
	GLUT_ALLOW_DIRECT_CONTEXT = 1,
	GLUT_TRY_DIRECT_CONTEXT = 2,
	GLUT_FORCE_DIRECT_CONTEXT = 3,
}

/*
 * GLUT API Extension macro definitions -- the glutGet parameters
 */
enum {
	GLUT_INIT_STATE = 0x007C,

	GLUT_ACTION_ON_WINDOW_CLOSE = 0x01F9,

	GLUT_WINDOW_BORDER_WIDTH = 0x01FA,
	GLUT_WINDOW_HEADER_HEIGHT = 0x01FB,

	GLUT_VERSION = 0x01FC,

	GLUT_RENDERING_CONTEXT = 0x01FD,
	GLUT_DIRECT_RENDERING = 0x01FE,

	GLUT_FULL_SCREEN = 0x01FF,
}

/*
 * New tokens for glutInitDisplayMode.
 * Only one GLUT_AUXn bit may be used at a time.
 * Value 0x0400 is defined in OpenGLUT.
 */
enum {
	GLUT_AUX = 0x1000,

	GLUT_AUX1 = 0x1000,
	GLUT_AUX2 = 0x2000,
	GLUT_AUX3 = 0x4000,
	GLUT_AUX4 = 0x8000,
}

/*
 * Context-related flags, see freeglut_state.c
 */
enum {
	GLUT_INIT_MAJOR_VERSION = 0x0200,
	GLUT_INIT_MINOR_VERSION = 0x0201,
	GLUT_INIT_FLAGS = 0x0202,
	GLUT_INIT_PROFILE = 0x0203,
}

/*
 * Flags for glutInitContextFlags, see freeglut_init.c
 */
enum {
	GLUT_DEBUG = 0x0001,
	GLUT_FORWARD_COMPATIBLE = 0x0002,
}


/*
 * Flags for glutInitContextProfile, see freeglut_init.c
 */
enum {
	GLUT_CORE_PROFILE = 0x0001,
	GLUT_COMPATIBILITY_PROFILE = 0x0002,
}

/*
 * Process loop function, see freeglut_main.c
 */
void     glutMainLoopEvent( void );
void     glutLeaveMainLoop( void );
void     glutExit         ( void );

/*
 * Window management functions, see freeglut_window.c
 */
void     glutFullScreenToggle( void );
void     glutLeaveFullScreen( void );

/*
 * Window-specific callback functions, see freeglut_callbacks.c
 */
void     glutMouseWheelFunc( void function( int, int, int, int ) callback );
void     glutCloseFunc( void function( void ) callback );
void     glutWMCloseFunc( void function( void ) callback );
/* A. Donev: Also a destruction callback for menus */
void     glutMenuDestroyFunc( void function( void ) callback );

/*
 * State setting and retrieval functions, see freeglut_state.c
 */
void     glutSetOption ( GLenum option_flag, int value );
int *    glutGetModeValues(GLenum mode, int * size);
/* A.Donev: User-data manipulation */
void*    glutGetWindowData( void );
void     glutSetWindowData(void* data);
void*    glutGetMenuData( void );
void     glutSetMenuData(void* data);

/*
 * Font stuff, see freeglut_font.c
 */
int      glutBitmapHeight( void* font );
GLfloat  glutStrokeHeight( void* font );
void     glutBitmapString( void* font, const ubyte *string );
void     glutStrokeString( void* font, const ubyte *string );

/*
 * Geometry functions, see freeglut_geometry.c
 */
void     glutWireRhombicDodecahedron( void );
void     glutSolidRhombicDodecahedron( void );
void     glutWireSierpinskiSponge ( int num_levels, GLdouble offset[3], GLdouble scale );
void     glutSolidSierpinskiSponge ( int num_levels, GLdouble offset[3], GLdouble scale );
void     glutWireCylinder( GLdouble radius, GLdouble height, GLint slices, GLint stacks);
void     glutSolidCylinder( GLdouble radius, GLdouble height, GLint slices, GLint stacks);

/*
 * Extension functions, see freeglut_ext.c
 */
alias void function() GLUTproc;
GLUTproc  glutGetProcAddress( const char *procName );

/*
 * Multi-touch/multi-pointer extensions
 */

immutable GLUT_HAS_MULTI = 1;

void  glutMultiEntryFunc( void function( int, int ) callback );
void  glutMultiButtonFunc( void function( int, int, int, int, int ) callback );
void  glutMultiMotionFunc( void function( int, int, int ) callback );
void  glutMultiPassiveFunc( void function( int, int, int ) callback );

/*
 * Joystick functions, see freeglut_joystick.c
 */
/* USE OF THESE FUNCTIONS IS DEPRECATED !!!!! */
/* If you have a serious need for these functions in your application, please either
 * contact the "freeglut" developer community at freeglut-developer@lists.sourceforge.net,
 * switch to the OpenGLUT library, or else port your joystick functionality over to PLIB's
 * "js" library.
 */
int     glutJoystickGetNumAxes( int ident );
int     glutJoystickGetNumButtons( int ident );
int     glutJoystickNotWorking( int ident );
float   glutJoystickGetDeadBand( int ident, int axis );
void    glutJoystickSetDeadBand( int ident, int axis, float db );
float   glutJoystickGetSaturation( int ident, int axis );
void    glutJoystickSetSaturation( int ident, int axis, float st );
void    glutJoystickSetMinRange( int ident, float *axes );
void    glutJoystickSetMaxRange( int ident, float *axes );
void    glutJoystickSetCenter( int ident, float *axes );
void    glutJoystickGetMinRange( int ident, float *axes );
void    glutJoystickGetMaxRange( int ident, float *axes );
void    glutJoystickGetCenter( int ident, float *axes );

/*
 * Initialization functions, see freeglut_init.c
 */
void     glutInitContextVersion( int majorVersion, int minorVersion );
void     glutInitContextFlags( int flags );
void     glutInitContextProfile( int profile );

void     glutInitErrorFunc( void function( const char *fmt, va_list ap ) callback );
void     glutInitWarningFunc( void function( const char *fmt, va_list ap ) callback );

/*
 * GLUT API macro definitions -- the display mode definitions
 */
enum {
	GLUT_CAPTIONLESS = 0x0400,
	GLUT_BORDERLESS = 0x0800,
	GLUT_SRGB = 0x1000,
}
