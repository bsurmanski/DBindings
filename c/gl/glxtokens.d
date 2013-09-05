/*
 * SGI FREE SOFTWARE LICENSE B (Version 2.0, Sept. 18, 2008)
 * Copyright (C) 1991-2000 Silicon Graphics, Inc. All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice including the dates of first publication and
 * either this permission notice or a reference to
 * http://oss.sgi.com/projects/FreeB/
 * shall be included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
 * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * SILICON GRAPHICS, INC. BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of Silicon Graphics, Inc.
 * shall not be used in advertising or otherwise to promote the sale, use or
 * other dealings in this Software without prior written authorization from
 * Silicon Graphics, Inc.
 */

module c.gl.glxtokens;

extern(C):

enum {
    GLX_VERSION_1_1 = 1,
    GLX_VERSION_1_2 = 1,
    GLX_VERSION_1_3 = 1,
    GLX_VERSION_1_4 = 1,
}

/*
** Visual Config Attributes (glXGetConfig, glXGetFBConfigAttrib)
*/
enum {
    GLX_USE_GL = 1,	/* support GLX rendering */
    GLX_BUFFER_SIZE = 2,	/* depth of the color buffer */
    GLX_LEVEL = 3,	/* level in plane stacking */
    GLX_RGBA = 4,	/* true if RGBA mode */
    GLX_DOUBLEBUFFER = 5,	/* double buffering supported */
    GLX_STEREO = 6,	/* stereo buffering supported */
    GLX_AUX_BUFFERS = 7,	/* number of aux buffers */
    GLX_RED_SIZE = 8,	/* number of red component bits */
    GLX_GREEN_SIZE = 9,	/* number of green component bits */
    GLX_BLUE_SIZE = 10,	/* number of blue component bits */
    GLX_ALPHA_SIZE = 11,	/* number of alpha component bits */
    GLX_DEPTH_SIZE = 12,	/* number of depth bits */
    GLX_STENCIL_SIZE = 13,	/* number of stencil bits */
    GLX_ACCUM_RED_SIZE = 14,	/* number of red accum bits */
    GLX_ACCUM_GREEN_SIZE = 15,	/* number of green accum bits */
    GLX_ACCUM_BLUE_SIZE = 16,	/* number of blue accum bits */
    GLX_ACCUM_ALPHA_SIZE = 17,	/* number of alpha accum bits */
    /*
    ** FBConfig-specific attributes
    */
    GLX_X_VISUAL_TYPE = 0x22,
    GLX_CONFIG_CAVEAT = 0x20,	/* Like visual_info VISUAL_CAVEAT_EXT */
    GLX_TRANSPARENT_TYPE = 0x23,
    GLX_TRANSPARENT_INDEX_VALUE = 0x24,
    GLX_TRANSPARENT_RED_VALUE = 0x25,
    GLX_TRANSPARENT_GREEN_VALUE = 0x26,
    GLX_TRANSPARENT_BLUE_VALUE = 0x27,
    GLX_TRANSPARENT_ALPHA_VALUE = 0x28,
    GLX_DRAWABLE_TYPE = 0x8010,
    GLX_RENDER_TYPE = 0x8011,
    GLX_X_RENDERABLE = 0x8012,
    GLX_FBCONFIG_ID = 0x8013,
    GLX_MAX_PBUFFER_WIDTH = 0x8016,
    GLX_MAX_PBUFFER_HEIGHT = 0x8017,
    GLX_MAX_PBUFFER_PIXELS = 0x8018,
    GLX_VISUAL_ID = 0x800B,

    /* FBConfigSGIX Attributes */
    GLX_OPTIMAL_PBUFFER_WIDTH_SGIX = 0x8019,
    GLX_OPTIMAL_PBUFFER_HEIGHT_SGIX = 0x801A,

    /*
    ** Error return values from glXGetConfig.  Success is indicated by
    ** a value of 0.
    */
    GLX_BAD_SCREEN = 1,	/* screen # is bad */
    GLX_BAD_ATTRIBUTE = 2,	/* attribute to get is bad */
    GLX_NO_EXTENSION = 3,	/* no glx extension on server */
    GLX_BAD_VISUAL = 4,	/* visual # not known by GLX */
    GLX_BAD_CONTEXT = 5,	/* returned only by import_context EXT? */
    GLX_BAD_VALUE = 6,	/* returned only by glXSwapIntervalSGI? */
    GLX_BAD_ENUM = 7,	/* unused? */

    /* FBConfig attribute values */

    /*
    ** Generic "don't care" value for glX ChooseFBConfig attributes (except
    ** GLX_LEVEL)
    */
    GLX_DONT_CARE = 0xFFFFFFFF,

    /* GLX_RENDER_TYPE bits */
    GLX_RGBA_BIT = 0x00000001,
    GLX_COLOR_INDEX_BIT = 0x00000002,

    /* GLX_DRAWABLE_TYPE bits */
    GLX_WINDOW_BIT = 0x00000001,
    GLX_PIXMAP_BIT = 0x00000002,
    GLX_PBUFFER_BIT = 0x00000004,

    /* GLX_CONFIG_CAVEAT attribute values */
    GLX_NONE = 0x8000,
    GLX_SLOW_CONFIG = 0x8001,
    GLX_NON_CONFORMANT_CONFIG = 0x800D,

    /* GLX_X_VISUAL_TYPE attribute values */
    GLX_TRUE_COLOR = 0x8002,
    GLX_DIRECT_COLOR = 0x8003,
    GLX_PSEUDO_COLOR = 0x8004,
    GLX_STATIC_COLOR = 0x8005,
    GLX_GRAY_SCALE = 0x8006,
    GLX_STATIC_GRAY = 0x8007,

    /* GLX_TRANSPARENT_TYPE attribute values */
    /* GLX_NONE = 0x8000, */
    GLX_TRANSPARENT_RGB = 0x8008,
    GLX_TRANSPARENT_INDEX = 0x8009,

    /* glXCreateGLXPbuffer attributes */
    GLX_PRESERVED_CONTENTS = 0x801B,
    GLX_LARGEST_PBUFFER = 0x801C,
    GLX_PBUFFER_HEIGHT = 0x8040,	/* New for GLX 1.3 */
    GLX_PBUFFER_WIDTH = 0x8041,	/* New for GLX 1.3 */

    /* glXQueryGLXPBuffer attributes */
    GLX_WIDTH = 0x801D,
    GLX_HEIGHT = 0x801E,
    GLX_EVENT_MASK = 0x801F,

    /* glXCreateNewContext render_type attribute values */
    GLX_RGBA_TYPE = 0x8014,
    GLX_COLOR_INDEX_TYPE = 0x8015,

    /* glXQueryContext attributes */
    /* GLX_FBCONFIG_ID = 0x8013, */
    /* GLX_RENDER_TYPE = 0x8011, */
    GLX_SCREEN = 0x800C,

    /* glXSelectEvent event mask bits */
    GLX_PBUFFER_CLOBBER_MASK = 0x08000000,
    GLX_BUFFER_SWAP_COMPLETE_INTEL_MASK = 0x04000000,

    /* GLXPbufferClobberEvent event_type values */
    GLX_DAMAGED = 0x8020,
    GLX_SAVED = 0x8021,
    GLX_EXCHANGE_COMPLETE_INTEL = 0x8180,
    GLX_BLIT_COMPLETE_INTEL = 0x8181,
    GLX_FLIP_COMPLETE_INTEL = 0x8182,

    /* GLXPbufferClobberEvent draw_type values */
    GLX_WINDOW = 0x8022,
    GLX_PBUFFER = 0x8023,

    /* GLXPbufferClobberEvent buffer_mask bits */
    GLX_FRONT_LEFT_BUFFER_BIT = 0x00000001,
    GLX_FRONT_RIGHT_BUFFER_BIT = 0x00000002,
    GLX_BACK_LEFT_BUFFER_BIT = 0x00000004,
    GLX_BACK_RIGHT_BUFFER_BIT = 0x00000008,
    GLX_AUX_BUFFERS_BIT = 0x00000010,
    GLX_DEPTH_BUFFER_BIT = 0x00000020,
    GLX_STENCIL_BUFFER_BIT = 0x00000040,
    GLX_ACCUM_BUFFER_BIT = 0x00000080,

    /*
    ** Extension return values from glXGetConfig.  These are also
    ** accepted as parameter values for glXChooseVisual.
    */

    GLX_X_VISUAL_TYPE_EXT = 0x22,	/* visual_info extension type */
    GLX_TRANSPARENT_TYPE_EXT = 0x23,	/* visual_info extension */
    GLX_TRANSPARENT_INDEX_VALUE_EXT = 0x24,	/* visual_info extension */
    GLX_TRANSPARENT_RED_VALUE_EXT = 0x25,	/* visual_info extension */
    GLX_TRANSPARENT_GREEN_VALUE_EXT = 0x26,	/* visual_info extension */
    GLX_TRANSPARENT_BLUE_VALUE_EXT = 0x27,	/* visual_info extension */
    GLX_TRANSPARENT_ALPHA_VALUE_EXT = 0x28,	/* visual_info extension */

    /* Property values for visual_type */
    GLX_TRUE_COLOR_EXT = 0x8002,
    GLX_DIRECT_COLOR_EXT = 0x8003,
    GLX_PSEUDO_COLOR_EXT = 0x8004,
    GLX_STATIC_COLOR_EXT = 0x8005,
    GLX_GRAY_SCALE_EXT = 0x8006,
    GLX_STATIC_GRAY_EXT = 0x8007,

    /* Property values for transparent pixel */
    GLX_NONE_EXT = 0x8000,
    GLX_TRANSPARENT_RGB_EXT = 0x8008,
    GLX_TRANSPARENT_INDEX_EXT = 0x8009,

    /* Property values for visual_rating */
    GLX_VISUAL_CAVEAT_EXT = 0x20,  /* visual_rating extension type */
    GLX_SLOW_VISUAL_EXT = 0x8001,
    GLX_NON_CONFORMANT_VISUAL_EXT = 0x800D,

    /* Property values for swap method (GLX_OML_swap_method) */
    GLX_SWAP_METHOD_OML = 0x8060,
    GLX_SWAP_EXCHANGE_OML = 0x8061,
    GLX_SWAP_COPY_OML = 0x8062,
    GLX_SWAP_UNDEFINED_OML = 0x8063,

    /* Property values for multi-sampling */
    GLX_VISUAL_SELECT_GROUP_SGIX = 0x8028,	/* visuals grouped by select priority */

    /*
    ** Names for attributes to glXGetClientString.
    */
    GLX_VENDOR = 0x1,
    GLX_VERSION = 0x2,
    GLX_EXTENSIONS = 0x3,

    /*
    ** Names for attributes to glXQueryContextInfoEXT.
    */
    GLX_SHARE_CONTEXT_EXT = 0x800A,	/* id of share context */
    GLX_VISUAL_ID_EXT = 0x800B,	/* id of context's visual */
    GLX_SCREEN_EXT = 0x800C,	/* screen number */

    /*
    ** GLX_EXT_texture_from_pixmap
    */
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

    /*
     * GLX 1.4 and later:
     */
    GLX_SAMPLE_BUFFERS_SGIS = 100000,
    GLX_SAMPLES_SGIS = 100001,

    /*
     * GLX_EXT_framebuffer_SRGB
     */
    GLX_FRAMEBUFFER_SRGB_CAPABLE_EXT = 0x20B2,

    /*
     * GLX_ARB_create_context
     * GLX_ARB_create_context_profile
     * GLX_EXT_create_context_es2_profile
     */
    GLX_CONTEXT_MAJOR_VERSION_ARB = 0x2091,
    GLX_CONTEXT_MINOR_VERSION_ARB = 0x2092,
    GLX_CONTEXT_FLAGS_ARB = 0x2094,
    GLX_CONTEXT_PROFILE_MASK_ARB = 0x9126,

    GLX_CONTEXT_DEBUG_BIT_ARB = 0x0001,
    GLX_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = 0x0002,

    GLX_CONTEXT_CORE_PROFILE_BIT_ARB = 0x0001,
    GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB = 0x0002,
    GLX_CONTEXT_ES2_PROFILE_BIT_EXT = 0x0004,

    /*
     * GLX_ARB_create_context_robustness
     */
    GLX_CONTEXT_ROBUST_ACCESS_BIT_ARB = 0x0004,
    GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB = 0x8256,
    GLX_NO_RESET_NOTIFICATION_ARB = 0x8261,
    GLX_LOSE_CONTEXT_ON_RESET_ARB = 0x8252,
}
