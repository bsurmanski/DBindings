/*
 * Mesa 3-D graphics library
 * Version:  6.5
 * 
 * Copyright (C) 1999-2006  Brian Paul   All Rights Reserved.
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
 * BRIAN PAUL BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
 * AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

module c.gl.glx;

public import c.X11.Xlib;
public import c.X11.Xutil;
public import c.gl.gl;

extern(C):

const GLX_VERSION_1_1 = 1;
const GLX_VERSION_1_2 = 1;
const GLX_VERSION_1_3 = 1;
const GLX_VERSION_1_4 = 1;

const GLX_EXTENSION_NAME = "GLX";



/*
 * Tokens for glXChooseVisual and glXGetConfig:
 */
enum {
    GLX_USE_GL = 1,
    GLX_BUFFER_SIZE = 2,
    GLX_LEVEL = 3,
    GLX_RGBA = 4,
    GLX_DOUBLEBUFFER = 5,
    GLX_STEREO = 6,
    GLX_AUX_BUFFERS = 7,
    GLX_RED_SIZE = 8,
    GLX_GREEN_SIZE = 9,
    GLX_BLUE_SIZE = 10,
    GLX_ALPHA_SIZE = 11,
    GLX_DEPTH_SIZE = 12,
    GLX_STENCIL_SIZE = 13,
    GLX_ACCUM_RED_SIZE = 14,
    GLX_ACCUM_GREEN_SIZE = 15,
    GLX_ACCUM_BLUE_SIZE = 16,
    GLX_ACCUM_ALPHA_SIZE = 17,
}

/*
 * Error codes returned by glXGetConfig:
 */
enum {
    GLX_BAD_SCREEN = 1,
    GLX_BAD_ATTRIBUTE = 2,
    GLX_NO_EXTENSION = 3,
    GLX_BAD_VISUAL = 4,
    GLX_BAD_CONTEXT = 5,
    GLX_BAD_VALUE = 6,
    GLX_BAD_ENUM = 7,
}


/*
 * GLX 1.1 and later:
 */
enum {
    GLX_VENDOR = 1,
    GLX_VERSION = 2,
    GLX_EXTENSIONS = 3,
}


/*
 * GLX 1.3 and later:
 */
enum {
    GLX_CONFIG_CAVEAT = 0x20,
    GLX_DONT_CARE = 0xFFFFFFFF,
    GLX_X_VISUAL_TYPE = 0x22,
    GLX_TRANSPARENT_TYPE = 0x23,
    GLX_TRANSPARENT_INDEX_VALUE = 0x24,
    GLX_TRANSPARENT_RED_VALUE = 0x25,
    GLX_TRANSPARENT_GREEN_VALUE = 0x26,
    GLX_TRANSPARENT_BLUE_VALUE = 0x27,
    GLX_TRANSPARENT_ALPHA_VALUE = 0x28,
    GLX_WINDOW_BIT = 0x00000001,
    GLX_PIXMAP_BIT = 0x00000002,
    GLX_PBUFFER_BIT = 0x00000004,
    GLX_AUX_BUFFERS_BIT = 0x00000010,
    GLX_FRONT_LEFT_BUFFER_BIT = 0x00000001,
    GLX_FRONT_RIGHT_BUFFER_BIT = 0x00000002,
    GLX_BACK_LEFT_BUFFER_BIT = 0x00000004,
    GLX_BACK_RIGHT_BUFFER_BIT = 0x00000008,
    GLX_DEPTH_BUFFER_BIT = 0x00000020,
    GLX_STENCIL_BUFFER_BIT = 0x00000040,
    GLX_ACCUM_BUFFER_BIT = 0x00000080,
    GLX_NONE = 0x8000,
    GLX_SLOW_CONFIG = 0x8001,
    GLX_TRUE_COLOR = 0x8002,
    GLX_DIRECT_COLOR = 0x8003,
    GLX_PSEUDO_COLOR = 0x8004,
    GLX_STATIC_COLOR = 0x8005,
    GLX_GRAY_SCALE = 0x8006,
    GLX_STATIC_GRAY = 0x8007,
    GLX_TRANSPARENT_RGB = 0x8008,
    GLX_TRANSPARENT_INDEX = 0x8009,
    GLX_VISUAL_ID = 0x800B,
    GLX_SCREEN = 0x800C,
    GLX_NON_CONFORMANT_CONFIG = 0x800D,
    GLX_DRAWABLE_TYPE = 0x8010,
    GLX_RENDER_TYPE = 0x8011,
    GLX_X_RENDERABLE = 0x8012,
    GLX_FBCONFIG_ID = 0x8013,
    GLX_RGBA_TYPE = 0x8014,
    GLX_COLOR_INDEX_TYPE = 0x8015,
    GLX_MAX_PBUFFER_WIDTH = 0x8016,
    GLX_MAX_PBUFFER_HEIGHT = 0x8017,
    GLX_MAX_PBUFFER_PIXELS = 0x8018,
    GLX_PRESERVED_CONTENTS = 0x801B,
    GLX_LARGEST_PBUFFER = 0x801C,
    GLX_WIDTH = 0x801D,
    GLX_HEIGHT = 0x801E,
    GLX_EVENT_MASK = 0x801F,
    GLX_DAMAGED = 0x8020,
    GLX_SAVED = 0x8021,
    GLX_WINDOW = 0x8022,
    GLX_PBUFFER = 0x8023,
    GLX_PBUFFER_HEIGHT = 0x8040,
    GLX_PBUFFER_WIDTH = 0x8041,
    GLX_RGBA_BIT = 0x00000001,
    GLX_COLOR_INDEX_BIT = 0x00000002,
    GLX_PBUFFER_CLOBBER_MASK = 0x08000000,
}

/*
 * GLX 1.4 and later:
 */
enum {
    GLX_SAMPLE_BUFFERS = 0x186a0, /*100000*/
    GLX_SAMPLES = 0x186a1, /*100001*/
}



alias __GLXcontextRec *GLXContext;
alias XID GLXPixmap;
alias XID GLXDrawable;
/* GLX 1.3 and later */
alias __GLXFBConfigRec *GLXFBConfig;
alias XID GLXFBConfigID;
alias XID GLXContextID;
alias XID GLXWindow;
alias XID GLXPbuffer;


/*
** Events.
** __GLX_NUMBER_EVENTS is set to 17 to account for the BufferClobberSGIX
**  event - this helps initialization if the server supports the pbuffer
**  extension and the client doesn't.
*/
const GLX_PbufferClobber	= 0;
const GLX_BufferSwapComplete	= 1;

const __GLX_NUMBER_EVENTS  = 17;

extern XVisualInfo* glXChooseVisual( Display *dpy, int screen,
				     int *attribList );

extern GLXContext glXCreateContext( Display *dpy, XVisualInfo *vis,
				    GLXContext shareList, Bool direct );

extern void glXDestroyContext( Display *dpy, GLXContext ctx );

extern Bool glXMakeCurrent( Display *dpy, GLXDrawable drawable,
			    GLXContext ctx);

extern void glXCopyContext( Display *dpy, GLXContext src, GLXContext dst,
			    uint mask );

extern void glXSwapBuffers( Display *dpy, GLXDrawable drawable );

extern GLXPixmap glXCreateGLXPixmap( Display *dpy, XVisualInfo *visual,
				     Pixmap pixmap );

extern void glXDestroyGLXPixmap( Display *dpy, GLXPixmap pixmap );

extern Bool glXQueryExtension( Display *dpy, int *errorb, int *event );

extern Bool glXQueryVersion( Display *dpy, int *maj, int *min );

extern Bool glXIsDirect( Display *dpy, GLXContext ctx );

extern int glXGetConfig( Display *dpy, XVisualInfo *visual,
			 int attrib, int *value );

extern GLXContext glXGetCurrentContext( void );

extern GLXDrawable glXGetCurrentDrawable( void );

extern void glXWaitGL( void );

extern void glXWaitX( void );

extern void glXUseXFont( Font font, int first, int count, int list );



/* GLX 1.1 and later */
extern const char *glXQueryExtensionsString( Display *dpy, int screen );

extern const char *glXQueryServerString( Display *dpy, int screen, int name );

extern const char *glXGetClientString( Display *dpy, int name );


/* GLX 1.2 and later */
extern Display *glXGetCurrentDisplay( void );


/* GLX 1.3 and later */
extern GLXFBConfig *glXChooseFBConfig( Display *dpy, int screen,
                                       const int *attribList, int *nitems );

extern int glXGetFBConfigAttrib( Display *dpy, GLXFBConfig config,
                                 int attribute, int *value );

extern GLXFBConfig *glXGetFBConfigs( Display *dpy, int screen,
                                     int *nelements );

extern XVisualInfo *glXGetVisualFromFBConfig( Display *dpy,
                                              GLXFBConfig config );

extern GLXWindow glXCreateWindow( Display *dpy, GLXFBConfig config,
                                  Window win, const int *attribList );

extern void glXDestroyWindow( Display *dpy, GLXWindow window );

extern GLXPixmap glXCreatePixmap( Display *dpy, GLXFBConfig config,
                                  Pixmap pixmap, const int *attribList );

extern void glXDestroyPixmap( Display *dpy, GLXPixmap pixmap );

extern GLXPbuffer glXCreatePbuffer( Display *dpy, GLXFBConfig config,
                                    const int *attribList );

extern void glXDestroyPbuffer( Display *dpy, GLXPbuffer pbuf );

extern void glXQueryDrawable( Display *dpy, GLXDrawable draw, int attribute,
                              uint *value );

extern GLXContext glXCreateNewContext( Display *dpy, GLXFBConfig config,
                                       int renderType, GLXContext shareList,
                                       Bool direct );

extern Bool glXMakeContextCurrent( Display *dpy, GLXDrawable draw,
                                   GLXDrawable read, GLXContext ctx );

extern GLXDrawable glXGetCurrentReadDrawable( void );

extern int glXQueryContext( Display *dpy, GLXContext ctx, int attribute,
                            int *value );

extern void glXSelectEvent( Display *dpy, GLXDrawable drawable,
                            uint mask );

extern void glXGetSelectedEvent( Display *dpy, GLXDrawable drawable,
                                 uint *mask );

/*
 * ARB 2. GLX_ARB_get_proc_address
 */

extern __GLXextFuncPtr glXGetProcAddressARB (const GLubyte *);

/* GLX_ARB_get_proc_address */



/* GLX 1.4 and later */
//extern void (*glXGetProcAddress(const GLubyte *procname))( void );

/* GLX_GLXEXT_LEGACY */


/**
 ** The following aren't in glxext.h yet.
 **/


/*
 * ???. GLX_NV_vertex_array_range
 */

extern void *glXAllocateMemoryNV(GLsizei size, GLfloat readfreq, GLfloat writefreq, GLfloat priority);
extern void glXFreeMemoryNV(GLvoid *pointer);

/* GLX_NV_vertex_array_range */


/*
 * ARB ?. GLX_ARB_render_texture
 * XXX This was never finalized!
 */

extern Bool glXBindTexImageARB(Display *dpy, GLXPbuffer pbuffer, int buffer);
extern Bool glXReleaseTexImageARB(Display *dpy, GLXPbuffer pbuffer, int buffer);
extern Bool glXDrawableAttribARB(Display *dpy, GLXDrawable draw, const int *attribList);

/* GLX_ARB_render_texture */


/*
 * Remove this when glxext.h is updated.
 */

const GLX_FLOAT_COMPONENTS_NV         = 0x20B0;

/* GLX_NV_float_buffer */



/*
 * #?. GLX_MESA_swap_frame_usage
 */

extern int glXGetFrameUsageMESA(Display *dpy, GLXDrawable drawable, float *usage);
extern int glXBeginFrameTrackingMESA(Display *dpy, GLXDrawable drawable);
extern int glXEndFrameTrackingMESA(Display *dpy, GLXDrawable drawable);
extern int glXQueryFrameTrackingMESA(Display *dpy, GLXDrawable drawable, int64_t *swapCount, int64_t *missedFrames, float *lastMissedUsage);

/* GLX_MESA_swap_frame_usage */



/*
 * #?. GLX_MESA_swap_control
 */

extern int glXSwapIntervalMESA(uint interval);
extern int glXGetSwapIntervalMESA(void);

/* GLX_MESA_swap_control */



/*
 * #?. GLX_EXT_texture_from_pixmap
 * XXX not finished?
 */

enum {
    GLX_BIND_TO_TEXTURE_RGB_EXT = 0x20D0,
    GLX_BIND_TO_TEXTURE_RGBA_EXT = 0x20D1,
    GLX_BIND_TO_MIPMAP_TEXTURE_EXT = 0x20D2,
    GLX_BIND_TO_TEXTURE_TARGETS_EXT = 0x20D3,
    GLX_Y_INVERTED_EXT = 0x20D4,

    GLX_TEXTURE_FORMAT_EXT = 0x20D5,
    GLX_TEXTURE_TARGET_EXT = 0x20D6,
    GLX_MIPMAP_TEXTURE_EXT = 0x20D7,

    GLX_TEXTURE_FORMAT_NONE_EXT = 0x20D8,
    GLX_TEXTURE_FORMAT_RGB_EXT = 0x20D9,
    GLX_TEXTURE_FORMAT_RGBA_EXT = 0x20DA,

    GLX_TEXTURE_1D_BIT_EXT = 0x00000001,
    GLX_TEXTURE_2D_BIT_EXT = 0x00000002,
    GLX_TEXTURE_RECTANGLE_BIT_EXT = 0x00000004,

    GLX_TEXTURE_1D_EXT = 0x20DB,
    GLX_TEXTURE_2D_EXT = 0x20DC,
    GLX_TEXTURE_RECTANGLE_EXT = 0x20DD,

    GLX_FRONT_LEFT_EXT = 0x20DE,
    GLX_FRONT_RIGHT_EXT = 0x20DF,
    GLX_BACK_LEFT_EXT = 0x20E0,
    GLX_BACK_RIGHT_EXT = 0x20E1,
    GLX_FRONT_EXT = GLX_FRONT_LEFT_EXT,
    GLX_BACK_EXT = GLX_BACK_LEFT_EXT,
    GLX_AUX0_EXT = 0x20E2,
    GLX_AUX1_EXT = 0x20E3, 
    GLX_AUX2_EXT = 0x20E4, 
    GLX_AUX3_EXT = 0x20E5, 
    GLX_AUX4_EXT = 0x20E6, 
    GLX_AUX5_EXT = 0x20E7, 
    GLX_AUX6_EXT = 0x20E8,
    GLX_AUX7_EXT = 0x20E9, 
    GLX_AUX8_EXT = 0x20EA, 
    GLX_AUX9_EXT = 0x20EB,
}

extern void glXBindTexImageEXT(Display *dpy, GLXDrawable drawable, int buffer, const int *attrib_list);
extern void glXReleaseTexImageEXT(Display *dpy, GLXDrawable drawable, int buffer);

/* GLX_EXT_texture_from_pixmap */




/*** Should these go here, or in another header? */
/*
** GLX Events
*/
struct GLXPbufferClobberEvent{
    int event_type;		/* GLX_DAMAGED or GLX_SAVED */
    int draw_type;		/* GLX_WINDOW or GLX_PBUFFER */
    uint serial;	/* # of last request processed by server */
    Bool send_event;		/* true if this came for SendEvent request */
    Display *display;		/* display the event was read from */
    GLXDrawable drawable;	/* XID of Drawable */
    uint buffer_mask;	/* mask indicating which buffers are affected */
    uint aux_buffer;	/* which aux buffer was affected */
    int x, y;
    int width, height;
    int count;			/* if nonzero, at least this many more */
}

struct GLXBufferSwapComplete{
    int type;
    uint serial;	/* # of last request processed by server */
    Bool send_event;		/* true if this came from a SendEvent request */
    Display *display;		/* Display the event was read from */
    GLXDrawable drawable;	/* drawable on which event was requested in event mask */
    int event_type;
    int64_t ust;
    int64_t msc;
    int64_t sbc;
}

union GLXEvent {
    GLXPbufferClobberEvent glxpbufferclobber;
    GLXBufferSwapComplete glxbufferswapcomplete;
    int pad[24];
}
