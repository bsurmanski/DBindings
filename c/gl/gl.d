/*
 * Mesa 3-D graphics library
 * Version:  7.6
 *
 * Copyright (C) 1999-2006  Brian Paul   All Rights Reserved.
 * Copyright (C) 2009  VMware, Inc.  All Rights Reserved.
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

module gl.gl;

extern(C):

immutable GL_VERSION_1_1 =  1;
immutable GL_VERSION_1_2 =  1;
immutable GL_VERSION_1_3 =  1;
immutable GL_ARB_imaging =  1;

/*
 * Datatypes
 */
alias uint	    GLenum;
alias ubyte     GLboolean;
alias uint	    GLbitfield;
alias void		GLvoid;
alias byte      GLbyte;		/* 1-byte signed */
alias short		GLshort;	/* 2-byte signed */
alias int		GLint;		/* 4-byte signed */
alias ubyte     GLubyte;	/* 1-byte unsigned */
alias ushort	GLushort;	/* 2-byte unsigned */
alias uint	    GLuint;		/* 4-byte unsigned */
alias int		GLsizei;	/* 4-byte signed */
alias float		GLfloat;	/* single precision float */
alias float		GLclampf;	/* single precision float in [0,1] */
alias double 	GLdouble;	/* double precision float */
alias double    GLclampd;	/* double precision float in [0,1] */

/*
 * Constants
 */

/* Boolean values */
immutable GL_FALSE	= 0;
immutable GL_TRUE	= 1;

/* Data types */

enum {
    GL_BYTE = 0x1400,
    GL_UNSIGNED_BYTE = 0x1401,
    GL_SHORT = 0x1402,
    GL_UNSIGNED_SHORT = 0x1403,
    GL_INT = 0x1404,
    GL_UNSIGNED_INT = 0x1405,
    GL_FLOAT = 0x1406,
    GL_2_BYTES = 0x1407,
    GL_3_BYTES = 0x1408,
    GL_4_BYTES = 0x1409,
    GL_DOUBLE = 0x140A,

    /* Primitives */
    GL_POINTS = 0x0000,
    GL_LINES = 0x0001,
    GL_LINE_LOOP = 0x0002,
    GL_LINE_STRIP = 0x0003,
    GL_TRIANGLES = 0x0004,
    GL_TRIANGLE_STRIP = 0x0005,
    GL_TRIANGLE_FAN = 0x0006,
    GL_QUADS = 0x0007,
    GL_QUAD_STRIP = 0x0008,
    GL_POLYGON = 0x0009,

    /* Vertex Arrays */
    GL_VERTEX_ARRAY = 0x8074,
    GL_NORMAL_ARRAY = 0x8075,
    GL_COLOR_ARRAY = 0x8076,
    GL_INDEX_ARRAY = 0x8077,
    GL_TEXTURE_COORD_ARRAY = 0x8078,
    GL_EDGE_FLAG_ARRAY = 0x8079,
    GL_VERTEX_ARRAY_SIZE = 0x807A,
    GL_VERTEX_ARRAY_TYPE = 0x807B,
    GL_VERTEX_ARRAY_STRIDE = 0x807C,
    GL_NORMAL_ARRAY_TYPE = 0x807E,
    GL_NORMAL_ARRAY_STRIDE = 0x807F,
    GL_COLOR_ARRAY_SIZE = 0x8081,
    GL_COLOR_ARRAY_TYPE = 0x8082,
    GL_COLOR_ARRAY_STRIDE = 0x8083,
    GL_INDEX_ARRAY_TYPE = 0x8085,
    GL_INDEX_ARRAY_STRIDE = 0x8086,
    GL_TEXTURE_COORD_ARRAY_SIZE = 0x8088,
    GL_TEXTURE_COORD_ARRAY_TYPE = 0x8089,
    GL_TEXTURE_COORD_ARRAY_STRIDE = 0x808A,
    GL_EDGE_FLAG_ARRAY_STRIDE = 0x808C,
    GL_VERTEX_ARRAY_POINTER = 0x808E,
    GL_NORMAL_ARRAY_POINTER = 0x808F,
    GL_COLOR_ARRAY_POINTER = 0x8090,
    GL_INDEX_ARRAY_POINTER = 0x8091,
    GL_TEXTURE_COORD_ARRAY_POINTER = 0x8092,
    GL_EDGE_FLAG_ARRAY_POINTER = 0x8093,
    GL_V2F = 0x2A20,
    GL_V3F = 0x2A21,
    GL_C4UB_V2F = 0x2A22,
    GL_C4UB_V3F = 0x2A23,
    GL_C3F_V3F = 0x2A24,
    GL_N3F_V3F = 0x2A25,
    GL_C4F_N3F_V3F = 0x2A26,
    GL_T2F_V3F = 0x2A27,
    GL_T4F_V4F = 0x2A28,
    GL_T2F_C4UB_V3F = 0x2A29,
    GL_T2F_C3F_V3F = 0x2A2A,
    GL_T2F_N3F_V3F = 0x2A2B,
    GL_T2F_C4F_N3F_V3F = 0x2A2C,
    GL_T4F_C4F_N3F_V4F = 0x2A2D,

    /* Matrix Mode */
    GL_MATRIX_MODE = 0x0BA0,
    GL_MODELVIEW = 0x1700,
    GL_PROJECTION = 0x1701,
    GL_TEXTURE = 0x1702,

    /* Points */
    GL_POINT_SMOOTH = 0x0B10,
    GL_POINT_SIZE = 0x0B11,
    GL_POINT_SIZE_GRANULARITY  = 0x0B13,
    GL_POINT_SIZE_RANGE = 0x0B12,

    /* Lines */
    GL_LINE_SMOOTH = 0x0B20,
    GL_LINE_STIPPLE = 0x0B24,
    GL_LINE_STIPPLE_PATTERN = 0x0B25,
    GL_LINE_STIPPLE_REPEAT = 0x0B26,
    GL_LINE_WIDTH = 0x0B21,
    GL_LINE_WIDTH_GRANULARITY = 0x0B23,
    GL_LINE_WIDTH_RANGE = 0x0B22,

    /* Polygons */
    GL_POINT = 0x1B00,
    GL_LINE = 0x1B01,
    GL_FILL = 0x1B02,
    GL_CW = 0x0900,
    GL_CCW = 0x0901,
    GL_FRONT = 0x0404,
    GL_BACK = 0x0405,
    GL_POLYGON_MODE = 0x0B40,
    GL_POLYGON_SMOOTH = 0x0B41,
    GL_POLYGON_STIPPLE = 0x0B42,
    GL_EDGE_FLAG = 0x0B43,
    GL_CULL_FACE = 0x0B44,
    GL_CULL_FACE_MODE = 0x0B45,
    GL_FRONT_FACE = 0x0B46,
    GL_POLYGON_OFFSET_FACTOR = 0x8038,
    GL_POLYGON_OFFSET_UNITS = 0x2A00,
    GL_POLYGON_OFFSET_POINT = 0x2A01,
    GL_POLYGON_OFFSET_LINE = 0x2A02,
    GL_POLYGON_OFFSET_FILL = 0x8037,

    /* Display Lists */
    GL_COMPILE = 0x1300,
    GL_COMPILE_AND_EXECUTE = 0x1301,
    GL_LIST_BASE = 0x0B32,
    GL_LIST_INDEX = 0x0B33,
    GL_LIST_MODE = 0x0B30,

    /* Depth buffer */
    GL_NEVER = 0x0200,
    GL_LESS = 0x0201,
    GL_EQUAL = 0x0202,
    GL_LEQUAL = 0x0203,
    GL_GREATER = 0x0204,
    GL_NOTEQUAL = 0x0205,
    GL_GEQUAL = 0x0206,
    GL_ALWAYS = 0x0207,
    GL_DEPTH_TEST = 0x0B71,
    GL_DEPTH_BITS = 0x0D56,
    GL_DEPTH_CLEAR_VALUE = 0x0B73,
    GL_DEPTH_FUNC = 0x0B74,
    GL_DEPTH_RANGE = 0x0B70,
    GL_DEPTH_WRITEMASK = 0x0B72,
    GL_DEPTH_COMPONENT = 0x1902,

    /* Lighting */
    GL_LIGHTING = 0x0B50,
    GL_LIGHT0 = 0x4000,
    GL_LIGHT1 = 0x4001,
    GL_LIGHT2 = 0x4002,
    GL_LIGHT3 = 0x4003,
    GL_LIGHT4 = 0x4004,
    GL_LIGHT5 = 0x4005,
    GL_LIGHT6 = 0x4006,
    GL_LIGHT7 = 0x4007,
    GL_SPOT_EXPONENT = 0x1205,
    GL_SPOT_CUTOFF = 0x1206,
    GL_CONSTANT_ATTENUATION = 0x1207,
    GL_LINEAR_ATTENUATION = 0x1208,
    GL_QUADRATIC_ATTENUATION = 0x1209,
    GL_AMBIENT = 0x1200,
    GL_DIFFUSE = 0x1201,
    GL_SPECULAR = 0x1202,
    GL_SHININESS = 0x1601,
    GL_EMISSION = 0x1600,
    GL_POSITION = 0x1203,
    GL_SPOT_DIRECTION = 0x1204,
    GL_AMBIENT_AND_DIFFUSE = 0x1602,
    GL_COLOR_INDEXES = 0x1603,
    GL_LIGHT_MODEL_TWO_SIDE = 0x0B52,
    GL_LIGHT_MODEL_LOCAL_VIEWER = 0x0B51,
    GL_LIGHT_MODEL_AMBIENT = 0x0B53,
    GL_FRONT_AND_BACK = 0x0408,
    GL_SHADE_MODEL = 0x0B54,
    GL_FLAT = 0x1D00,
    GL_SMOOTH = 0x1D01,
    GL_COLOR_MATERIAL = 0x0B57,
    GL_COLOR_MATERIAL_FACE = 0x0B55,
    GL_COLOR_MATERIAL_PARAMETER = 0x0B56,
    GL_NORMALIZE = 0x0BA1,

    /* User clipping planes */
    GL_CLIP_PLANE0 = 0x3000,
    GL_CLIP_PLANE1 = 0x3001,
    GL_CLIP_PLANE2 = 0x3002,
    GL_CLIP_PLANE3 = 0x3003,
    GL_CLIP_PLANE4 = 0x3004,
    GL_CLIP_PLANE5 = 0x3005,

    /* Accumulation buffer */
    GL_ACCUM_RED_BITS = 0x0D58,
    GL_ACCUM_GREEN_BITS = 0x0D59,
    GL_ACCUM_BLUE_BITS = 0x0D5A,
    GL_ACCUM_ALPHA_BITS = 0x0D5B,
    GL_ACCUM_CLEAR_VALUE = 0x0B80,
    GL_ACCUM = 0x0100,
    GL_ADD = 0x0104,
    GL_LOAD = 0x0101,
    GL_MULT = 0x0103,
    GL_RETURN = 0x0102,

    /* Alpha testing */
    GL_ALPHA_TEST = 0x0BC0,
    GL_ALPHA_TEST_REF = 0x0BC2,
    GL_ALPHA_TEST_FUNC = 0x0BC1,

    /* Blending */
    GL_BLEND = 0x0BE2,
    GL_BLEND_SRC = 0x0BE1,
    GL_BLEND_DST = 0x0BE0,
    GL_ZERO = 0,
    GL_ONE = 1,
    GL_SRC_COLOR = 0x0300,
    GL_ONE_MINUS_SRC_COLOR = 0x0301,
    GL_SRC_ALPHA = 0x0302,
    GL_ONE_MINUS_SRC_ALPHA = 0x0303,
    GL_DST_ALPHA = 0x0304,
    GL_ONE_MINUS_DST_ALPHA = 0x0305,
    GL_DST_COLOR = 0x0306,
    GL_ONE_MINUS_DST_COLOR = 0x0307,
    GL_SRC_ALPHA_SATURATE = 0x0308,

    /* Render Mode */
    GL_FEEDBACK = 0x1C01,
    GL_RENDER = 0x1C00,
    GL_SELECT = 0x1C02,

    /* Feedback */
    GL_2D = 0x0600,
    GL_3D = 0x0601,
    GL_3D_COLOR = 0x0602,
    GL_3D_COLOR_TEXTURE = 0x0603,
    GL_4D_COLOR_TEXTURE = 0x0604,
    GL_POINT_TOKEN = 0x0701,
    GL_LINE_TOKEN = 0x0702,
    GL_LINE_RESET_TOKEN = 0x0707,
    GL_POLYGON_TOKEN = 0x0703,
    GL_BITMAP_TOKEN = 0x0704,
    GL_DRAW_PIXEL_TOKEN = 0x0705,
    GL_COPY_PIXEL_TOKEN = 0x0706,
    GL_PASS_THROUGH_TOKEN = 0x0700,
    GL_FEEDBACK_BUFFER_POINTER = 0x0DF0,
    GL_FEEDBACK_BUFFER_SIZE = 0x0DF1,
    GL_FEEDBACK_BUFFER_TYPE = 0x0DF2,

    /* Selection */
    GL_SELECTION_BUFFER_POINTER = 0x0DF3,
    GL_SELECTION_BUFFER_SIZE = 0x0DF4,

    /* Fog */
    GL_FOG = 0x0B60,
    GL_FOG_MODE = 0x0B65,
    GL_FOG_DENSITY = 0x0B62,
    GL_FOG_COLOR = 0x0B66,
    GL_FOG_INDEX = 0x0B61,
    GL_FOG_START = 0x0B63,
    GL_FOG_END = 0x0B64,
    GL_LINEAR = 0x2601,
    GL_EXP = 0x0800,
    GL_EXP2 = 0x0801,

    /* Logic Ops */
    GL_LOGIC_OP = 0x0BF1,
    GL_INDEX_LOGIC_OP = 0x0BF1,
    GL_COLOR_LOGIC_OP = 0x0BF2,
    GL_LOGIC_OP_MODE = 0x0BF0,
    GL_CLEAR = 0x1500,
    GL_SET = 0x150F,
    GL_COPY = 0x1503,
    GL_COPY_INVERTED = 0x150C,
    GL_NOOP = 0x1505,
    GL_INVERT = 0x150A,
    GL_AND = 0x1501,
    GL_NAND = 0x150E,
    GL_OR = 0x1507,
    GL_NOR = 0x1508,
    GL_XOR = 0x1506,
    GL_EQUIV = 0x1509,
    GL_AND_REVERSE = 0x1502,
    GL_AND_INVERTED = 0x1504,
    GL_OR_REVERSE = 0x150B,
    GL_OR_INVERTED = 0x150D,

    /* Stencil */
    GL_STENCIL_BITS = 0x0D57,
    GL_STENCIL_TEST = 0x0B90,
    GL_STENCIL_CLEAR_VALUE = 0x0B91,
    GL_STENCIL_FUNC = 0x0B92,
    GL_STENCIL_VALUE_MASK = 0x0B93,
    GL_STENCIL_FAIL = 0x0B94,
    GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95,
    GL_STENCIL_PASS_DEPTH_PASS = 0x0B96,
    GL_STENCIL_REF = 0x0B97,
    GL_STENCIL_WRITEMASK = 0x0B98,
    GL_STENCIL_INDEX = 0x1901,
    GL_KEEP = 0x1E00,
    GL_REPLACE = 0x1E01,
    GL_INCR = 0x1E02,
    GL_DECR = 0x1E03,

    /* Buffers, Pixel Drawing/Reading */
    GL_NONE = 0,
    GL_LEFT = 0x0406,
    GL_RIGHT = 0x0407,
    /*GL_FRONT					0x0404 */
    /*GL_BACK					0x0405 */
    /*GL_FRONT_AND_BACK				0x0408 */
    GL_FRONT_LEFT = 0x0400,
    GL_FRONT_RIGHT = 0x0401,
    GL_BACK_LEFT = 0x0402,
    GL_BACK_RIGHT = 0x0403,
    GL_AUX0 = 0x0409,
    GL_AUX1 = 0x040A,
    GL_AUX2 = 0x040B,
    GL_AUX3 = 0x040C,
    GL_COLOR_INDEX = 0x1900,
    GL_RED = 0x1903,
    GL_GREEN = 0x1904,
    GL_BLUE = 0x1905,
    GL_ALPHA = 0x1906,
    GL_LUMINANCE = 0x1909,
    GL_LUMINANCE_ALPHA = 0x190A,
    GL_ALPHA_BITS = 0x0D55,
    GL_RED_BITS = 0x0D52,
    GL_GREEN_BITS = 0x0D53,
    GL_BLUE_BITS = 0x0D54,
    GL_INDEX_BITS = 0x0D51,
    GL_SUBPIXEL_BITS = 0x0D50,
    GL_AUX_BUFFERS = 0x0C00,
    GL_READ_BUFFER = 0x0C02,
    GL_DRAW_BUFFER = 0x0C01,
    GL_DOUBLEBUFFER = 0x0C32,
    GL_STEREO = 0x0C33,
    GL_BITMAP = 0x1A00,
    GL_COLOR = 0x1800,
    GL_DEPTH = 0x1801,
    GL_STENCIL = 0x1802,
    GL_DITHER = 0x0BD0,
    GL_RGB = 0x1907,
    GL_RGBA = 0x1908,

    /* Implementation limits */
    GL_MAX_LIST_NESTING = 0x0B31,
    GL_MAX_EVAL_ORDER = 0x0D30,
    GL_MAX_LIGHTS = 0x0D31,
    GL_MAX_CLIP_PLANES = 0x0D32,
    GL_MAX_TEXTURE_SIZE = 0x0D33,
    GL_MAX_PIXEL_MAP_TABLE = 0x0D34,
    GL_MAX_ATTRIB_STACK_DEPTH = 0x0D35,
    GL_MAX_MODELVIEW_STACK_DEPTH = 0x0D36,
    GL_MAX_NAME_STACK_DEPTH = 0x0D37,
    GL_MAX_PROJECTION_STACK_DEPTH = 0x0D38,
    GL_MAX_TEXTURE_STACK_DEPTH = 0x0D39,
    GL_MAX_VIEWPORT_DIMS = 0x0D3A,
    GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B,

    /* Gets */
    GL_ATTRIB_STACK_DEPTH = 0x0BB0,
    GL_CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1,
    GL_COLOR_CLEAR_VALUE = 0x0C22,
    GL_COLOR_WRITEMASK = 0x0C23,
    GL_CURRENT_INDEX = 0x0B01,
    GL_CURRENT_COLOR = 0x0B00,
    GL_CURRENT_NORMAL = 0x0B02,
    GL_CURRENT_RASTER_COLOR = 0x0B04,
    GL_CURRENT_RASTER_DISTANCE = 0x0B09,
    GL_CURRENT_RASTER_INDEX = 0x0B05,
    GL_CURRENT_RASTER_POSITION = 0x0B07,
    GL_CURRENT_RASTER_TEXTURE_COORDS = 0x0B06,
    GL_CURRENT_RASTER_POSITION_VALID = 0x0B08,
    GL_CURRENT_TEXTURE_COORDS = 0x0B03,
    GL_INDEX_CLEAR_VALUE = 0x0C20,
    GL_INDEX_MODE = 0x0C30,
    GL_INDEX_WRITEMASK = 0x0C21,
    GL_MODELVIEW_MATRIX = 0x0BA6,
    GL_MODELVIEW_STACK_DEPTH = 0x0BA3,
    GL_NAME_STACK_DEPTH = 0x0D70,
    GL_PROJECTION_MATRIX = 0x0BA7,
    GL_PROJECTION_STACK_DEPTH = 0x0BA4,
    GL_RENDER_MODE = 0x0C40,
    GL_RGBA_MODE = 0x0C31,
    GL_TEXTURE_MATRIX = 0x0BA8,
    GL_TEXTURE_STACK_DEPTH = 0x0BA5,
    GL_VIEWPORT = 0x0BA2,

    /* Evaluators */
    GL_AUTO_NORMAL = 0x0D80,
    GL_MAP1_COLOR_4 = 0x0D90,
    GL_MAP1_INDEX = 0x0D91,
    GL_MAP1_NORMAL = 0x0D92,
    GL_MAP1_TEXTURE_COORD_1 = 0x0D93,
    GL_MAP1_TEXTURE_COORD_2 = 0x0D94,
    GL_MAP1_TEXTURE_COORD_3 = 0x0D95,
    GL_MAP1_TEXTURE_COORD_4 = 0x0D96,
    GL_MAP1_VERTEX_3 = 0x0D97,
    GL_MAP1_VERTEX_4 = 0x0D98,
    GL_MAP2_COLOR_4 = 0x0DB0,
    GL_MAP2_INDEX = 0x0DB1,
    GL_MAP2_NORMAL = 0x0DB2,
    GL_MAP2_TEXTURE_COORD_1 = 0x0DB3,
    GL_MAP2_TEXTURE_COORD_2 = 0x0DB4,
    GL_MAP2_TEXTURE_COORD_3 = 0x0DB5,
    GL_MAP2_TEXTURE_COORD_4 = 0x0DB6,
    GL_MAP2_VERTEX_3 = 0x0DB7,
    GL_MAP2_VERTEX_4 = 0x0DB8,
    GL_MAP1_GRID_DOMAIN = 0x0DD0,
    GL_MAP1_GRID_SEGMENTS = 0x0DD1,
    GL_MAP2_GRID_DOMAIN = 0x0DD2,
    GL_MAP2_GRID_SEGMENTS = 0x0DD3,
    GL_COEFF = 0x0A00,
    GL_ORDER = 0x0A01,
    GL_DOMAIN = 0x0A02,

    /* Hints */
    GL_PERSPECTIVE_CORRECTION_HINT = 0x0C50,
    GL_POINT_SMOOTH_HINT = 0x0C51,
    GL_LINE_SMOOTH_HINT = 0x0C52,
    GL_POLYGON_SMOOTH_HINT = 0x0C53,
    GL_FOG_HINT = 0x0C54,
    GL_DONT_CARE = 0x1100,
    GL_FASTEST = 0x1101,
    GL_NICEST = 0x1102,

    /* Scissor box */
    GL_SCISSOR_BOX = 0x0C10,
    GL_SCISSOR_TEST = 0x0C11,

    /* Pixel Mode / Transfer */
    GL_MAP_COLOR = 0x0D10,
    GL_MAP_STENCIL = 0x0D11,
    GL_INDEX_SHIFT = 0x0D12,
    GL_INDEX_OFFSET = 0x0D13,
    GL_RED_SCALE = 0x0D14,
    GL_RED_BIAS = 0x0D15,
    GL_GREEN_SCALE = 0x0D18,
    GL_GREEN_BIAS = 0x0D19,
    GL_BLUE_SCALE = 0x0D1A,
    GL_BLUE_BIAS = 0x0D1B,
    GL_ALPHA_SCALE = 0x0D1C,
    GL_ALPHA_BIAS = 0x0D1D,
    GL_DEPTH_SCALE = 0x0D1E,
    GL_DEPTH_BIAS = 0x0D1F,
    GL_PIXEL_MAP_S_TO_S_SIZE = 0x0CB1,
    GL_PIXEL_MAP_I_TO_I_SIZE = 0x0CB0,
    GL_PIXEL_MAP_I_TO_R_SIZE = 0x0CB2,
    GL_PIXEL_MAP_I_TO_G_SIZE = 0x0CB3,
    GL_PIXEL_MAP_I_TO_B_SIZE = 0x0CB4,
    GL_PIXEL_MAP_I_TO_A_SIZE = 0x0CB5,
    GL_PIXEL_MAP_R_TO_R_SIZE = 0x0CB6,
    GL_PIXEL_MAP_G_TO_G_SIZE = 0x0CB7,
    GL_PIXEL_MAP_B_TO_B_SIZE = 0x0CB8,
    GL_PIXEL_MAP_A_TO_A_SIZE = 0x0CB9,
    GL_PIXEL_MAP_S_TO_S = 0x0C71,
    GL_PIXEL_MAP_I_TO_I = 0x0C70,
    GL_PIXEL_MAP_I_TO_R = 0x0C72,
    GL_PIXEL_MAP_I_TO_G = 0x0C73,
    GL_PIXEL_MAP_I_TO_B = 0x0C74,
    GL_PIXEL_MAP_I_TO_A = 0x0C75,
    GL_PIXEL_MAP_R_TO_R = 0x0C76,
    GL_PIXEL_MAP_G_TO_G = 0x0C77,
    GL_PIXEL_MAP_B_TO_B = 0x0C78,
    GL_PIXEL_MAP_A_TO_A = 0x0C79,
    GL_PACK_ALIGNMENT = 0x0D05,
    GL_PACK_LSB_FIRST = 0x0D01,
    GL_PACK_ROW_LENGTH = 0x0D02,
    GL_PACK_SKIP_PIXELS = 0x0D04,
    GL_PACK_SKIP_ROWS = 0x0D03,
    GL_PACK_SWAP_BYTES = 0x0D00,
    GL_UNPACK_ALIGNMENT = 0x0CF5,
    GL_UNPACK_LSB_FIRST = 0x0CF1,
    GL_UNPACK_ROW_LENGTH = 0x0CF2,
    GL_UNPACK_SKIP_PIXELS = 0x0CF4,
    GL_UNPACK_SKIP_ROWS = 0x0CF3,
    GL_UNPACK_SWAP_BYTES = 0x0CF0,
    GL_ZOOM_X = 0x0D16,
    GL_ZOOM_Y = 0x0D17,

    /* Texture mapping */
    GL_TEXTURE_ENV = 0x2300,
    GL_TEXTURE_ENV_MODE = 0x2200,
    GL_TEXTURE_1D = 0x0DE0,
    GL_TEXTURE_2D = 0x0DE1,
    GL_TEXTURE_WRAP_S = 0x2802,
    GL_TEXTURE_WRAP_T = 0x2803,
    GL_TEXTURE_MAG_FILTER = 0x2800,
    GL_TEXTURE_MIN_FILTER = 0x2801,
    GL_TEXTURE_ENV_COLOR = 0x2201,
    GL_TEXTURE_GEN_S = 0x0C60,
    GL_TEXTURE_GEN_T = 0x0C61,
    GL_TEXTURE_GEN_R = 0x0C62,
    GL_TEXTURE_GEN_Q = 0x0C63,
    GL_TEXTURE_GEN_MODE = 0x2500,
    GL_TEXTURE_BORDER_COLOR = 0x1004,
    GL_TEXTURE_WIDTH = 0x1000,
    GL_TEXTURE_HEIGHT = 0x1001,
    GL_TEXTURE_BORDER = 0x1005,
    GL_TEXTURE_COMPONENTS = 0x1003,
    GL_TEXTURE_RED_SIZE = 0x805C,
    GL_TEXTURE_GREEN_SIZE = 0x805D,
    GL_TEXTURE_BLUE_SIZE = 0x805E,
    GL_TEXTURE_ALPHA_SIZE = 0x805F,
    GL_TEXTURE_LUMINANCE_SIZE = 0x8060,
    GL_TEXTURE_INTENSITY_SIZE = 0x8061,
    GL_NEAREST_MIPMAP_NEAREST = 0x2700,
    GL_NEAREST_MIPMAP_LINEAR = 0x2702,
    GL_LINEAR_MIPMAP_NEAREST = 0x2701,
    GL_LINEAR_MIPMAP_LINEAR = 0x2703,
    GL_OBJECT_LINEAR = 0x2401,
    GL_OBJECT_PLANE = 0x2501,
    GL_EYE_LINEAR = 0x2400,
    GL_EYE_PLANE = 0x2502,
    GL_SPHERE_MAP = 0x2402,
    GL_DECAL = 0x2101,
    GL_MODULATE = 0x2100,
    GL_NEAREST = 0x2600,
    GL_REPEAT = 0x2901,
    GL_CLAMP = 0x2900,
    GL_S = 0x2000,
    GL_T = 0x2001,
    GL_R = 0x2002,
    GL_Q = 0x2003,

    /* Utility */
    GL_VENDOR = 0x1F00,
    GL_RENDERER = 0x1F01,
    GL_VERSION = 0x1F02,
    GL_EXTENSIONS = 0x1F03,

    /* Errors */
    GL_NO_ERROR  = 0,
    GL_INVALID_ENUM = 0x0500,
    GL_INVALID_VALUE = 0x0501,
    GL_INVALID_OPERATION = 0x0502,
    GL_STACK_OVERFLOW = 0x0503,
    GL_STACK_UNDERFLOW = 0x0504,
    GL_OUT_OF_MEMORY = 0x0505,

    /* glPush/PopAttrib bits */
    GL_CURRENT_BIT = 0x00000001,
    GL_POINT_BIT = 0x00000002,
    GL_LINE_BIT = 0x00000004,
    GL_POLYGON_BIT = 0x00000008,
    GL_POLYGON_STIPPLE_BIT = 0x00000010,
    GL_PIXEL_MODE_BIT = 0x00000020,
    GL_LIGHTING_BIT = 0x00000040,
    GL_FOG_BIT = 0x00000080,
    GL_DEPTH_BUFFER_BIT = 0x00000100,
    GL_ACCUM_BUFFER_BIT = 0x00000200,
    GL_STENCIL_BUFFER_BIT = 0x00000400,
    GL_VIEWPORT_BIT = 0x00000800,
    GL_TRANSFORM_BIT = 0x00001000,
    GL_ENABLE_BIT = 0x00002000,
    GL_COLOR_BUFFER_BIT = 0x00004000,
    GL_HINT_BIT = 0x00008000,
    GL_EVAL_BIT = 0x00010000,
    GL_LIST_BIT = 0x00020000,
    GL_TEXTURE_BIT = 0x00040000,
    GL_SCISSOR_BIT = 0x00080000,
    GL_ALL_ATTRIB_BITS = 0x000FFFFF,

    /* OpenGL 1.1 */
    GL_PROXY_TEXTURE_1D = 0x8063,
    GL_PROXY_TEXTURE_2D = 0x8064,
    GL_TEXTURE_PRIORITY = 0x8066,
    GL_TEXTURE_RESIDENT = 0x8067,
    GL_TEXTURE_BINDING_1D = 0x8068,
    GL_TEXTURE_BINDING_2D = 0x8069,
    GL_TEXTURE_INTERNAL_FORMAT = 0x1003,
    GL_ALPHA4 = 0x803B,
    GL_ALPHA8 = 0x803C,
    GL_ALPHA12 = 0x803D,
    GL_ALPHA16 = 0x803E,
    GL_LUMINANCE4 = 0x803F,
    GL_LUMINANCE8 = 0x8040,
    GL_LUMINANCE12 = 0x8041,
    GL_LUMINANCE16 = 0x8042,
    GL_LUMINANCE4_ALPHA4 = 0x8043,
    GL_LUMINANCE6_ALPHA2 = 0x8044,
    GL_LUMINANCE8_ALPHA8 = 0x8045,
    GL_LUMINANCE12_ALPHA4 = 0x8046,
    GL_LUMINANCE12_ALPHA12 = 0x8047,
    GL_LUMINANCE16_ALPHA16 = 0x8048,
    GL_INTENSITY = 0x8049,
    GL_INTENSITY4 = 0x804A,
    GL_INTENSITY8 = 0x804B,
    GL_INTENSITY12 = 0x804C,
    GL_INTENSITY16 = 0x804D,
    GL_R3_G3_B2 = 0x2A10,
    GL_RGB4 = 0x804F,
    GL_RGB5 = 0x8050,
    GL_RGB8 = 0x8051,
    GL_RGB10 = 0x8052,
    GL_RGB12 = 0x8053,
    GL_RGB16 = 0x8054,
    GL_RGBA2 = 0x8055,
    GL_RGBA4 = 0x8056,
    GL_RGB5_A1 = 0x8057,
    GL_RGBA8 = 0x8058,
    GL_RGB10_A2 = 0x8059,
    GL_RGBA12 = 0x805A,
    GL_RGBA16 = 0x805B,
    GL_CLIENT_PIXEL_STORE_BIT = 0x00000001,
    GL_CLIENT_VERTEX_ARRAY_BIT = 0x00000002,
    GL_ALL_CLIENT_ATTRIB_BITS  = 0xFFFFFFFF,
    GL_CLIENT_ALL_ATTRIB_BITS  = 0xFFFFFFFF,
}
/*
 * Miscellaneous
 */
extern void glClearIndex( GLfloat c );
extern void glClearColor( GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha );
extern void glClear( GLbitfield mask );
extern void glIndexMask( GLuint mask );
extern void glColorMask( GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha );
extern void glAlphaFunc( GLenum func, GLclampf refr );
extern void glBlendFunc( GLenum sfactor, GLenum dfactor );
extern void glLogicOp( GLenum opcode );
extern void glCullFace( GLenum mode );
extern void glFrontFace( GLenum mode );
extern void glPointSize( GLfloat size );
extern void glLineWidth( GLfloat width );
extern void glLineStipple( GLint factor, GLushort pattern );
extern void glPolygonMode( GLenum face, GLenum mode );
extern void glPolygonOffset( GLfloat factor, GLfloat units );
extern void glPolygonStipple( const GLubyte *mask );
extern void glGetPolygonStipple( GLubyte *mask );
extern void glEdgeFlag( GLboolean flag );
extern void glEdgeFlagv( const GLboolean *flag );
extern void glScissor( GLint x, GLint y, GLsizei width, GLsizei height);
extern void glClipPlane( GLenum plane, const GLdouble *equation );
extern void glGetClipPlane( GLenum plane, GLdouble *equation );
extern void glDrawBuffer( GLenum mode );
extern void glReadBuffer( GLenum mode );
extern void glEnable( GLenum cap );
extern void glDisable( GLenum cap );
extern GLboolean glIsEnabled( GLenum cap );
extern void glEnableClientState( GLenum cap );  /* 1.1 */
extern void glDisableClientState( GLenum cap );  /* 1.1 */
extern void glGetBooleanv( GLenum pname, GLboolean *params );
extern void glGetDoublev( GLenum pname, GLdouble *params );
extern void glGetFloatv( GLenum pname, GLfloat *params );
extern void glGetIntegerv( GLenum pname, GLint *params );
extern void glPushAttrib( GLbitfield mask );
extern void glPopAttrib();
extern void glPushClientAttrib( GLbitfield mask );  /* 1.1 */
extern void glPopClientAttrib();  /* 1.1 */
extern GLint glRenderMode( GLenum mode );
extern GLenum glGetError();
extern char *glGetString( GLenum name );
extern void glFinish();
extern void glFlush();
extern void glHint( GLenum target, GLenum mode );


/*
 * Depth Buffer
 */
extern void glClearDepth( GLclampd depth );
extern void glDepthFunc( GLenum func );
extern void glDepthMask( GLboolean flag );
extern void glDepthRange( GLclampd near_val, GLclampd far_val );


/*
 * Accumulation Buffer
 */
extern void glClearAccum( GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha );
extern void glAccum( GLenum op, GLfloat value );

/*
 * Transformation
 */

extern void glMatrixMode( GLenum mode );

extern void glOrtho( GLdouble left, GLdouble right,
                                 GLdouble bottom, GLdouble top,
                                 GLdouble near_val, GLdouble far_val );

extern void glFrustum( GLdouble left, GLdouble right,
                                   GLdouble bottom, GLdouble top,
                                   GLdouble near_val, GLdouble far_val );

extern void glViewport( GLint x, GLint y,
                                    GLsizei width, GLsizei height );

extern void glPushMatrix();
extern void glPopMatrix();
extern void glLoadIdentity();

extern void glLoadMatrixd( const GLdouble *m );
extern void glLoadMatrixf( const GLfloat *m );

extern void glMultMatrixd( const GLdouble *m );
extern void glMultMatrixf( const GLfloat *m );

extern void glRotated( GLdouble angle,
                                   GLdouble x, GLdouble y, GLdouble z );
extern void glRotatef( GLfloat angle,
                                   GLfloat x, GLfloat y, GLfloat z );

extern void glScaled( GLdouble x, GLdouble y, GLdouble z );
extern void glScalef( GLfloat x, GLfloat y, GLfloat z );

extern void glTranslated( GLdouble x, GLdouble y, GLdouble z );
extern void glTranslatef( GLfloat x, GLfloat y, GLfloat z );


/*
 * Display Lists
 */
extern GLboolean glIsList( GLuint list );
extern void glDeleteLists( GLuint list, GLsizei range );
extern GLuint glGenLists( GLsizei range );
extern void glNewList( GLuint list, GLenum mode );
extern void glEndList();
extern void glCallList( GLuint list );
extern void glCallLists( GLsizei n, GLenum type, const GLvoid *lists );
extern void glListBase( GLuint base );


/*
 * Drawing Functions
 */

extern void glBegin( GLenum mode );

extern void glEnd();


extern void glVertex2d( GLdouble x, GLdouble y );
extern void glVertex2f( GLfloat x, GLfloat y );
extern void glVertex2i( GLint x, GLint y );
extern void glVertex2s( GLshort x, GLshort y );

extern void glVertex3d( GLdouble x, GLdouble y, GLdouble z );
extern void glVertex3f( GLfloat x, GLfloat y, GLfloat z );
extern void glVertex3i( GLint x, GLint y, GLint z );
extern void glVertex3s( GLshort x, GLshort y, GLshort z );

extern void glVertex4d( GLdouble x, GLdouble y, GLdouble z, GLdouble w );
extern void glVertex4f( GLfloat x, GLfloat y, GLfloat z, GLfloat w );
extern void glVertex4i( GLint x, GLint y, GLint z, GLint w );
extern void glVertex4s( GLshort x, GLshort y, GLshort z, GLshort w );

extern void glVertex2dv( const GLdouble *v );
extern void glVertex2fv( const GLfloat *v );
extern void glVertex2iv( const GLint *v );
extern void glVertex2sv( const GLshort *v );

extern void glVertex3dv( const GLdouble *v );
extern void glVertex3fv( const GLfloat *v );
extern void glVertex3iv( const GLint *v );
extern void glVertex3sv( const GLshort *v );

extern void glVertex4dv( const GLdouble *v );
extern void glVertex4fv( const GLfloat *v );
extern void glVertex4iv( const GLint *v );
extern void glVertex4sv( const GLshort *v );


extern void glNormal3b( GLbyte nx, GLbyte ny, GLbyte nz );
extern void glNormal3d( GLdouble nx, GLdouble ny, GLdouble nz );
extern void glNormal3f( GLfloat nx, GLfloat ny, GLfloat nz );
extern void glNormal3i( GLint nx, GLint ny, GLint nz );
extern void glNormal3s( GLshort nx, GLshort ny, GLshort nz );

extern void glNormal3bv( const GLbyte *v );
extern void glNormal3dv( const GLdouble *v );
extern void glNormal3fv( const GLfloat *v );
extern void glNormal3iv( const GLint *v );
extern void glNormal3sv( const GLshort *v );


extern void glIndexd( GLdouble c );
extern void glIndexf( GLfloat c );
extern void glIndexi( GLint c );
extern void glIndexs( GLshort c );
extern void glIndexub( GLubyte c );  /* 1.1 */

extern void glIndexdv( const GLdouble *c );
extern void glIndexfv( const GLfloat *c );
extern void glIndexiv( const GLint *c );
extern void glIndexsv( const GLshort *c );
extern void glIndexubv( const GLubyte *c );  /* 1.1 */

extern void glColor3b( GLbyte red, GLbyte green, GLbyte blue );
extern void glColor3d( GLdouble red, GLdouble green, GLdouble blue );
extern void glColor3f( GLfloat red, GLfloat green, GLfloat blue );
extern void glColor3i( GLint red, GLint green, GLint blue );
extern void glColor3s( GLshort red, GLshort green, GLshort blue );
extern void glColor3ub( GLubyte red, GLubyte green, GLubyte blue );
extern void glColor3ui( GLuint red, GLuint green, GLuint blue );
extern void glColor3us( GLushort red, GLushort green, GLushort blue );

extern void glColor4b( GLbyte red, GLbyte green,
                                   GLbyte blue, GLbyte alpha );
extern void glColor4d( GLdouble red, GLdouble green,
                                   GLdouble blue, GLdouble alpha );
extern void glColor4f( GLfloat red, GLfloat green,
                                   GLfloat blue, GLfloat alpha );
extern void glColor4i( GLint red, GLint green,
                                   GLint blue, GLint alpha );
extern void glColor4s( GLshort red, GLshort green,
                                   GLshort blue, GLshort alpha );
extern void glColor4ub( GLubyte red, GLubyte green,
                                    GLubyte blue, GLubyte alpha );
extern void glColor4ui( GLuint red, GLuint green,
                                    GLuint blue, GLuint alpha );
extern void glColor4us( GLushort red, GLushort green,
                                    GLushort blue, GLushort alpha );


extern void glColor3bv( const GLbyte *v );
extern void glColor3dv( const GLdouble *v );
extern void glColor3fv( const GLfloat *v );
extern void glColor3iv( const GLint *v );
extern void glColor3sv( const GLshort *v );
extern void glColor3ubv( const GLubyte *v );
extern void glColor3uiv( const GLuint *v );
extern void glColor3usv( const GLushort *v );

extern void glColor4bv( const GLbyte *v );
extern void glColor4dv( const GLdouble *v );
extern void glColor4fv( const GLfloat *v );
extern void glColor4iv( const GLint *v );
extern void glColor4sv( const GLshort *v );
extern void glColor4ubv( const GLubyte *v );
extern void glColor4uiv( const GLuint *v );
extern void glColor4usv( const GLushort *v );


extern void glTexCoord1d( GLdouble s );
extern void glTexCoord1f( GLfloat s );
extern void glTexCoord1i( GLint s );
extern void glTexCoord1s( GLshort s );

extern void glTexCoord2d( GLdouble s, GLdouble t );
extern void glTexCoord2f( GLfloat s, GLfloat t );
extern void glTexCoord2i( GLint s, GLint t );
extern void glTexCoord2s( GLshort s, GLshort t );

extern void glTexCoord3d( GLdouble s, GLdouble t, GLdouble r );
extern void glTexCoord3f( GLfloat s, GLfloat t, GLfloat r );
extern void glTexCoord3i( GLint s, GLint t, GLint r );
extern void glTexCoord3s( GLshort s, GLshort t, GLshort r );

extern void glTexCoord4d( GLdouble s, GLdouble t, GLdouble r, GLdouble q );
extern void glTexCoord4f( GLfloat s, GLfloat t, GLfloat r, GLfloat q );
extern void glTexCoord4i( GLint s, GLint t, GLint r, GLint q );
extern void glTexCoord4s( GLshort s, GLshort t, GLshort r, GLshort q );

extern void glTexCoord1dv( const GLdouble *v );
extern void glTexCoord1fv( const GLfloat *v );
extern void glTexCoord1iv( const GLint *v );
extern void glTexCoord1sv( const GLshort *v );

extern void glTexCoord2dv( const GLdouble *v );
extern void glTexCoord2fv( const GLfloat *v );
extern void glTexCoord2iv( const GLint *v );
extern void glTexCoord2sv( const GLshort *v );

extern void glTexCoord3dv( const GLdouble *v );
extern void glTexCoord3fv( const GLfloat *v );
extern void glTexCoord3iv( const GLint *v );
extern void glTexCoord3sv( const GLshort *v );

extern void glTexCoord4dv( const GLdouble *v );
extern void glTexCoord4fv( const GLfloat *v );
extern void glTexCoord4iv( const GLint *v );
extern void glTexCoord4sv( const GLshort *v );


extern void glRasterPos2d( GLdouble x, GLdouble y );
extern void glRasterPos2f( GLfloat x, GLfloat y );
extern void glRasterPos2i( GLint x, GLint y );
extern void glRasterPos2s( GLshort x, GLshort y );

extern void glRasterPos3d( GLdouble x, GLdouble y, GLdouble z );
extern void glRasterPos3f( GLfloat x, GLfloat y, GLfloat z );
extern void glRasterPos3i( GLint x, GLint y, GLint z );
extern void glRasterPos3s( GLshort x, GLshort y, GLshort z );

extern void glRasterPos4d( GLdouble x, GLdouble y, GLdouble z, GLdouble w );
extern void glRasterPos4f( GLfloat x, GLfloat y, GLfloat z, GLfloat w );
extern void glRasterPos4i( GLint x, GLint y, GLint z, GLint w );
extern void glRasterPos4s( GLshort x, GLshort y, GLshort z, GLshort w );

extern void glRasterPos2dv( const GLdouble *v );
extern void glRasterPos2fv( const GLfloat *v );
extern void glRasterPos2iv( const GLint *v );
extern void glRasterPos2sv( const GLshort *v );

extern void glRasterPos3dv( const GLdouble *v );
extern void glRasterPos3fv( const GLfloat *v );
extern void glRasterPos3iv( const GLint *v );
extern void glRasterPos3sv( const GLshort *v );

extern void glRasterPos4dv( const GLdouble *v );
extern void glRasterPos4fv( const GLfloat *v );
extern void glRasterPos4iv( const GLint *v );
extern void glRasterPos4sv( const GLshort *v );


extern void glRectd( GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2 );
extern void glRectf( GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2 );
extern void glRecti( GLint x1, GLint y1, GLint x2, GLint y2 );
extern void glRects( GLshort x1, GLshort y1, GLshort x2, GLshort y2 );


extern void glRectdv( const GLdouble *v1, const GLdouble *v2 );
extern void glRectfv( const GLfloat *v1, const GLfloat *v2 );
extern void glRectiv( const GLint *v1, const GLint *v2 );
extern void glRectsv( const GLshort *v1, const GLshort *v2 );


/*
 * Vertex Arrays  (1.1)
 */

extern void glVertexPointer( GLint size, GLenum type,
                                       GLsizei stride, const GLvoid *ptr );

extern void glNormalPointer( GLenum type, GLsizei stride,
                                       const GLvoid *ptr );

extern void glColorPointer( GLint size, GLenum type,
                                      GLsizei stride, const GLvoid *ptr );

extern void glIndexPointer( GLenum type, GLsizei stride,
                                      const GLvoid *ptr );

extern void glTexCoordPointer( GLint size, GLenum type,
                                         GLsizei stride, const GLvoid *ptr );

extern void glEdgeFlagPointer( GLsizei stride, const GLvoid *ptr );
extern void glGetPointerv( GLenum pname, GLvoid **params );
extern void glArrayElement( GLint i );
extern void glDrawArrays( GLenum mode, GLint first, GLsizei count );

extern void glDrawElements( GLenum mode, GLsizei count,
                                      GLenum type, const GLvoid *indices );

extern void glInterleavedArrays( GLenum format, GLsizei stride,
                                           const GLvoid *pointer );

/*
 * Lighting
 */

extern void glShadeModel( GLenum mode );

extern void glLightf( GLenum light, GLenum pname, GLfloat param );
extern void glLighti( GLenum light, GLenum pname, GLint param );
extern void glLightfv( GLenum light, GLenum pname,
                                 const GLfloat *params );
extern void glLightiv( GLenum light, GLenum pname,
                                 const GLint *params );

extern void glGetLightfv( GLenum light, GLenum pname,
                                    GLfloat *params );
extern void glGetLightiv( GLenum light, GLenum pname,
                                    GLint *params );

extern void glLightModelf( GLenum pname, GLfloat param );
extern void glLightModeli( GLenum pname, GLint param );
extern void glLightModelfv( GLenum pname, const GLfloat *params );
extern void glLightModeliv( GLenum pname, const GLint *params );
extern void glMaterialf( GLenum face, GLenum pname, GLfloat param );
extern void glMateriali( GLenum face, GLenum pname, GLint param );
extern void glMaterialfv( GLenum face, GLenum pname, const GLfloat *params );
extern void glMaterialiv( GLenum face, GLenum pname, const GLint *params );
extern void glGetMaterialfv( GLenum face, GLenum pname, GLfloat *params );
extern void glGetMaterialiv( GLenum face, GLenum pname, GLint *params );
extern void glColorMaterial( GLenum face, GLenum mode );


/*
 * Raster functions
 */

extern void glPixelZoom( GLfloat xfactor, GLfloat yfactor );
extern void glPixelStoref( GLenum pname, GLfloat param );
extern void glPixelStorei( GLenum pname, GLint param );
extern void glPixelTransferf( GLenum pname, GLfloat param );
extern void glPixelTransferi( GLenum pname, GLint param );

extern void glPixelMapfv( GLenum map, GLsizei mapsize,
                                    const GLfloat *values );
extern void glPixelMapuiv( GLenum map, GLsizei mapsize,
                                     const GLuint *values );
extern void glPixelMapusv( GLenum map, GLsizei mapsize,
                                     const GLushort *values );

extern void glGetPixelMapfv( GLenum map, GLfloat *values );
extern void glGetPixelMapuiv( GLenum map, GLuint *values );
extern void glGetPixelMapusv( GLenum map, GLushort *values );

extern void glBitmap( GLsizei width, GLsizei height,
                                GLfloat xorig, GLfloat yorig,
                                GLfloat xmove, GLfloat ymove,
                                const GLubyte *bitmap );

extern void glReadPixels( GLint x, GLint y,
                                    GLsizei width, GLsizei height,
                                    GLenum format, GLenum type,
                                    GLvoid *pixels );

extern void glDrawPixels( GLsizei width, GLsizei height,
                                    GLenum format, GLenum type,
                                    const GLvoid *pixels );

extern void glCopyPixels( GLint x, GLint y,
                                    GLsizei width, GLsizei height,
                                    GLenum type );

/*
 * Stenciling
 */
extern void glStencilFunc( GLenum func, GLint refr, GLuint mask );
extern void glStencilMask( GLuint mask );
extern void glStencilOp( GLenum fail, GLenum zfail, GLenum zpass );
extern void glClearStencil( GLint s );


/*
 * Texture mapping
 */

extern void glTexGend( GLenum coord, GLenum pname, GLdouble param );
extern void glTexGenf( GLenum coord, GLenum pname, GLfloat param );
extern void glTexGeni( GLenum coord, GLenum pname, GLint param );

extern void glTexGendv( GLenum coord, GLenum pname, const GLdouble *params );
extern void glTexGenfv( GLenum coord, GLenum pname, const GLfloat *params );
extern void glTexGeniv( GLenum coord, GLenum pname, const GLint *params );

extern void glGetTexGendv( GLenum coord, GLenum pname, GLdouble *params );
extern void glGetTexGenfv( GLenum coord, GLenum pname, GLfloat *params );
extern void glGetTexGeniv( GLenum coord, GLenum pname, GLint *params );


extern void glTexEnvf( GLenum target, GLenum pname, GLfloat param );
extern void glTexEnvi( GLenum target, GLenum pname, GLint param );

extern void glTexEnvfv( GLenum target, GLenum pname, const GLfloat *params );
extern void glTexEnviv( GLenum target, GLenum pname, const GLint *params );

extern void glGetTexEnvfv( GLenum target, GLenum pname, GLfloat *params );
extern void glGetTexEnviv( GLenum target, GLenum pname, GLint *params );


extern void glTexParameterf( GLenum target, GLenum pname, GLfloat param );
extern void glTexParameteri( GLenum target, GLenum pname, GLint param );

extern void glTexParameterfv( GLenum target, GLenum pname,
                                          const GLfloat *params );
extern void glTexParameteriv( GLenum target, GLenum pname,
                                          const GLint *params );

extern void glGetTexParameterfv( GLenum target,
                                           GLenum pname, GLfloat *params);
extern void glGetTexParameteriv( GLenum target,
                                           GLenum pname, GLint *params );

extern void glGetTexLevelParameterfv( GLenum target, GLint level,
                                                GLenum pname, GLfloat *params );
extern void glGetTexLevelParameteriv( GLenum target, GLint level,
                                                GLenum pname, GLint *params );


extern void glTexImage1D( GLenum target, GLint level,
                                    GLint internalFormat,
                                    GLsizei width, GLint border,
                                    GLenum format, GLenum type,
                                    const GLvoid *pixels );

extern void glTexImage2D( GLenum target, GLint level,
                                    GLint internalFormat,
                                    GLsizei width, GLsizei height,
                                    GLint border, GLenum format, GLenum type,
                                    const GLvoid *pixels );

extern void glGetTexImage( GLenum target, GLint level,
                                     GLenum format, GLenum type,
                                     GLvoid *pixels );


/* 1.1 functions */

extern void glGenTextures( GLsizei n, GLuint *textures );

extern void glDeleteTextures( GLsizei n, const GLuint *textures);

extern void glBindTexture( GLenum target, GLuint texture );

extern void glPrioritizeTextures( GLsizei n,
                                            const GLuint *textures,
                                            const GLclampf *priorities );

extern GLboolean glAreTexturesResident( GLsizei n,
                                                  const GLuint *textures,
                                                  GLboolean *residences );

extern GLboolean glIsTexture( GLuint texture );


extern void glTexSubImage1D( GLenum target, GLint level,
                                       GLint xoffset,
                                       GLsizei width, GLenum format,
                                       GLenum type, const GLvoid *pixels );


extern void glTexSubImage2D( GLenum target, GLint level,
                                       GLint xoffset, GLint yoffset,
                                       GLsizei width, GLsizei height,
                                       GLenum format, GLenum type,
                                       const GLvoid *pixels );


extern void glCopyTexImage1D( GLenum target, GLint level,
                                        GLenum internalformat,
                                        GLint x, GLint y,
                                        GLsizei width, GLint border );


extern void glCopyTexImage2D( GLenum target, GLint level,
                                        GLenum internalformat,
                                        GLint x, GLint y,
                                        GLsizei width, GLsizei height,
                                        GLint border );


extern void glCopyTexSubImage1D( GLenum target, GLint level,
                                           GLint xoffset, GLint x, GLint y,
                                           GLsizei width );


extern void glCopyTexSubImage2D( GLenum target, GLint level,
                                           GLint xoffset, GLint yoffset,
                                           GLint x, GLint y,
                                           GLsizei width, GLsizei height );


/*
 * Evaluators
 */

extern void glMap1d( GLenum target, GLdouble u1, GLdouble u2,
                               GLint stride,
                               GLint order, const GLdouble *points );
extern void glMap1f( GLenum target, GLfloat u1, GLfloat u2,
                               GLint stride,
                               GLint order, const GLfloat *points );

extern void glMap2d( GLenum target,
		     GLdouble u1, GLdouble u2, GLint ustride, GLint uorder,
		     GLdouble v1, GLdouble v2, GLint vstride, GLint vorder,
		     const GLdouble *points );
extern void glMap2f( GLenum target,
		     GLfloat u1, GLfloat u2, GLint ustride, GLint uorder,
		     GLfloat v1, GLfloat v2, GLint vstride, GLint vorder,
		     const GLfloat *points );

extern void glGetMapdv( GLenum target, GLenum query, GLdouble *v );
extern void glGetMapfv( GLenum target, GLenum query, GLfloat *v );
extern void glGetMapiv( GLenum target, GLenum query, GLint *v );

extern void glEvalCoord1d( GLdouble u );
extern void glEvalCoord1f( GLfloat u );

extern void glEvalCoord1dv( const GLdouble *u );
extern void glEvalCoord1fv( const GLfloat *u );

extern void glEvalCoord2d( GLdouble u, GLdouble v );
extern void glEvalCoord2f( GLfloat u, GLfloat v );

extern void glEvalCoord2dv( const GLdouble *u );
extern void glEvalCoord2fv( const GLfloat *u );

extern void glMapGrid1d( GLint un, GLdouble u1, GLdouble u2 );
extern void glMapGrid1f( GLint un, GLfloat u1, GLfloat u2 );

extern void glMapGrid2d( GLint un, GLdouble u1, GLdouble u2,
                                   GLint vn, GLdouble v1, GLdouble v2 );
extern void glMapGrid2f( GLint un, GLfloat u1, GLfloat u2,
                                   GLint vn, GLfloat v1, GLfloat v2 );

extern void glEvalPoint1( GLint i );
extern void glEvalPoint2( GLint i, GLint j );
extern void glEvalMesh1( GLenum mode, GLint i1, GLint i2 );
extern void glEvalMesh2( GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2 );

/*
 * Fog
 */
extern void glFogf( GLenum pname, GLfloat param );
extern void glFogi( GLenum pname, GLint param );
extern void glFogfv( GLenum pname, const GLfloat *params );
extern void glFogiv( GLenum pname, const GLint *params );

/*
 * Selection and Feedback
 */
extern void glFeedbackBuffer( GLsizei size, GLenum type, GLfloat *buffer );
extern void glPassThrough( GLfloat token );
extern void glSelectBuffer( GLsizei size, GLuint *buffer );
extern void glInitNames();
extern void glLoadName( GLuint name );
extern void glPushName( GLuint name );
extern void glPopName();



/*
 * OpenGL 1.2
 */

enum
{
    GL_RESCALE_NORMAL = 0x803A,
    GL_CLAMP_TO_EDGE = 0x812F,
    GL_MAX_ELEMENTS_VERTICES = 0x80E8,
    GL_MAX_ELEMENTS_INDICES = 0x80E9,
    GL_BGR = 0x80E0,
    GL_BGRA = 0x80E1,
    GL_UNSIGNED_BYTE_3_3_2 = 0x8032,
    GL_UNSIGNED_BYTE_2_3_3_REV = 0x8362,
    GL_UNSIGNED_SHORT_5_6_5 = 0x8363,
    GL_UNSIGNED_SHORT_5_6_5_REV = 0x8364,
    GL_UNSIGNED_SHORT_4_4_4_4 = 0x8033,
    GL_UNSIGNED_SHORT_4_4_4_4_REV = 0x8365,
    GL_UNSIGNED_SHORT_5_5_5_1 = 0x8034,
    GL_UNSIGNED_SHORT_1_5_5_5_REV = 0x8366,
    GL_UNSIGNED_INT_8_8_8_8 = 0x8035,
    GL_UNSIGNED_INT_8_8_8_8_REV = 0x8367,
    GL_UNSIGNED_INT_10_10_10_2 = 0x8036,
    GL_UNSIGNED_INT_2_10_10_10_REV = 0x8368,
    GL_LIGHT_MODEL_COLOR_CONTROL = 0x81F8,
    GL_SINGLE_COLOR = 0x81F9,
    GL_SEPARATE_SPECULAR_COLOR = 0x81FA,
    GL_TEXTURE_MIN_LOD = 0x813A,
    GL_TEXTURE_MAX_LOD = 0x813B,
    GL_TEXTURE_BASE_LEVEL = 0x813C,
    GL_TEXTURE_MAX_LEVEL = 0x813D,
    GL_SMOOTH_POINT_SIZE_RANGE = 0x0B12,
    GL_SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13,
    GL_SMOOTH_LINE_WIDTH_RANGE = 0x0B22,
    GL_SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23,
    GL_ALIASED_POINT_SIZE_RANGE = 0x846D,
    GL_ALIASED_LINE_WIDTH_RANGE = 0x846E,
    GL_PACK_SKIP_IMAGES = 0x806B,
    GL_PACK_IMAGE_HEIGHT = 0x806C,
    GL_UNPACK_SKIP_IMAGES = 0x806D,
    GL_UNPACK_IMAGE_HEIGHT = 0x806E,
    GL_TEXTURE_3D = 0x806F,
    GL_PROXY_TEXTURE_3D = 0x8070,
    GL_TEXTURE_DEPTH = 0x8071,
    GL_TEXTURE_WRAP_R = 0x8072,
    GL_MAX_3D_TEXTURE_SIZE = 0x8073,
    GL_TEXTURE_BINDING_3D = 0x806A,
}

extern void glDrawRangeElements( GLenum mode, GLuint start,
	GLuint end, GLsizei count, GLenum type, const GLvoid *indices );

extern void glTexImage3D( GLenum target, GLint level,
                                      GLint internalFormat,
                                      GLsizei width, GLsizei height,
                                      GLsizei depth, GLint border,
                                      GLenum format, GLenum type,
                                      const GLvoid *pixels );

extern void glTexSubImage3D( GLenum target, GLint level,
                                         GLint xoffset, GLint yoffset,
                                         GLint zoffset, GLsizei width,
                                         GLsizei height, GLsizei depth,
                                         GLenum format,
                                         GLenum type, const GLvoid *pixels);

extern void glCopyTexSubImage3D( GLenum target, GLint level,
                                             GLint xoffset, GLint yoffset,
                                             GLint zoffset, GLint x,
                                             GLint y, GLsizei width,
                                             GLsizei height );

alias void function(GLenum mode, GLuint start, GLuint end, GLsizei count, 
                      GLenum type, const GLvoid *indices) PFNGLDRAWRANGEELEMENTSPROC;
alias void function(GLenum target, GLint level, GLint internalformat, 
                      GLsizei width, GLsizei height, GLsizei depth, GLint border, 
                      GLenum format, GLenum type, 
                      const GLvoid *pixels) PFNGLTEXIMAGE3DPROC;
alias void function(GLenum target, GLint level, GLint xoffset, 
                    GLint yoffset, GLint zoffset, GLsizei width, 
                    GLsizei height, GLsizei depth, GLenum format, GLenum type, 
                    const GLvoid *pixels) PFNGLTEXSUBIMAGE3DPROC;
alias void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, 
                    GLint zoffset, GLint x, GLint y, GLsizei width, 
                    GLsizei height) PFNGLCOPYTEXSUBIMAGE3DPROC;


/*
 * GL_ARB_imaging
 */

enum {
    GL_CONSTANT_COLOR = 0x8001,
    GL_ONE_MINUS_CONSTANT_COLOR = 0x8002,
    GL_CONSTANT_ALPHA = 0x8003,
    GL_ONE_MINUS_CONSTANT_ALPHA = 0x8004,
    GL_COLOR_TABLE = 0x80D0,
    GL_POST_CONVOLUTION_COLOR_TABLE = 0x80D1,
    GL_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D2,
    GL_PROXY_COLOR_TABLE = 0x80D3,
    GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = 0x80D4,
    GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D5,
    GL_COLOR_TABLE_SCALE = 0x80D6,
    GL_COLOR_TABLE_BIAS = 0x80D7,
    GL_COLOR_TABLE_FORMAT = 0x80D8,
    GL_COLOR_TABLE_WIDTH = 0x80D9,
    GL_COLOR_TABLE_RED_SIZE = 0x80DA,
    GL_COLOR_TABLE_GREEN_SIZE = 0x80DB,
    GL_COLOR_TABLE_BLUE_SIZE = 0x80DC,
    GL_COLOR_TABLE_ALPHA_SIZE = 0x80DD,
    GL_COLOR_TABLE_LUMINANCE_SIZE = 0x80DE,
    GL_COLOR_TABLE_INTENSITY_SIZE = 0x80DF,
    GL_CONVOLUTION_1D = 0x8010,
    GL_CONVOLUTION_2D = 0x8011,
    GL_SEPARABLE_2D = 0x8012,
    GL_CONVOLUTION_BORDER_MODE = 0x8013,
    GL_CONVOLUTION_FILTER_SCALE = 0x8014,
    GL_CONVOLUTION_FILTER_BIAS = 0x8015,
    GL_REDUCE = 0x8016,
    GL_CONVOLUTION_FORMAT = 0x8017,
    GL_CONVOLUTION_WIDTH = 0x8018,
    GL_CONVOLUTION_HEIGHT = 0x8019,
    GL_MAX_CONVOLUTION_WIDTH = 0x801A,
    GL_MAX_CONVOLUTION_HEIGHT = 0x801B,
    GL_POST_CONVOLUTION_RED_SCALE = 0x801C,
    GL_POST_CONVOLUTION_GREEN_SCALE = 0x801D,
    GL_POST_CONVOLUTION_BLUE_SCALE = 0x801E,
    GL_POST_CONVOLUTION_ALPHA_SCALE = 0x801F,
    GL_POST_CONVOLUTION_RED_BIAS = 0x8020,
    GL_POST_CONVOLUTION_GREEN_BIAS = 0x8021,
    GL_POST_CONVOLUTION_BLUE_BIAS = 0x8022,
    GL_POST_CONVOLUTION_ALPHA_BIAS = 0x8023,
    GL_CONSTANT_BORDER = 0x8151,
    GL_REPLICATE_BORDER = 0x8153,
    GL_CONVOLUTION_BORDER_COLOR = 0x8154,
    GL_COLOR_MATRIX = 0x80B1,
    GL_COLOR_MATRIX_STACK_DEPTH = 0x80B2,
    GL_MAX_COLOR_MATRIX_STACK_DEPTH = 0x80B3,
    GL_POST_COLOR_MATRIX_RED_SCALE = 0x80B4,
    GL_POST_COLOR_MATRIX_GREEN_SCALE = 0x80B5,
    GL_POST_COLOR_MATRIX_BLUE_SCALE = 0x80B6,
    GL_POST_COLOR_MATRIX_ALPHA_SCALE = 0x80B7,
    GL_POST_COLOR_MATRIX_RED_BIAS = 0x80B8,
    GL_POST_COLOR_MATRIX_GREEN_BIAS = 0x80B9,
    GL_POST_COLOR_MATRIX_BLUE_BIAS = 0x80BA,
    GL_POST_COLOR_MATRIX_ALPHA_BIAS = 0x80BB,
    GL_HISTOGRAM = 0x8024,
    GL_PROXY_HISTOGRAM = 0x8025,
    GL_HISTOGRAM_WIDTH = 0x8026,
    GL_HISTOGRAM_FORMAT = 0x8027,
    GL_HISTOGRAM_RED_SIZE = 0x8028,
    GL_HISTOGRAM_GREEN_SIZE = 0x8029,
    GL_HISTOGRAM_BLUE_SIZE = 0x802A,
    GL_HISTOGRAM_ALPHA_SIZE = 0x802B,
    GL_HISTOGRAM_LUMINANCE_SIZE = 0x802C,
    GL_HISTOGRAM_SINK = 0x802D,
    GL_MINMAX = 0x802E,
    GL_MINMAX_FORMAT = 0x802F,
    GL_MINMAX_SINK = 0x8030,
    GL_TABLE_TOO_LARGE = 0x8031,
    GL_BLEND_EQUATION = 0x8009,
    GL_MIN = 0x8007,
    GL_MAX = 0x8008,
    GL_FUNC_ADD = 0x8006,
    GL_FUNC_SUBTRACT = 0x800A,
    GL_FUNC_REVERSE_SUBTRACT = 0x800B,
    GL_BLEND_COLOR = 0x8005,
}

extern void glColorTable( GLenum target, GLenum internalformat,
                                    GLsizei width, GLenum format,
                                    GLenum type, const GLvoid *table );

extern void glColorSubTable( GLenum target,
                                       GLsizei start, GLsizei count,
                                       GLenum format, GLenum type,
                                       const GLvoid *data );

extern void glColorTableParameteriv(GLenum target, GLenum pname,
                                              const GLint *params);

extern void glColorTableParameterfv(GLenum target, GLenum pname,
                                              const GLfloat *params);

extern void glCopyColorSubTable( GLenum target, GLsizei start,
                                           GLint x, GLint y, GLsizei width );

extern void glCopyColorTable( GLenum target, GLenum internalformat,
                                        GLint x, GLint y, GLsizei width );

extern void glGetColorTable( GLenum target, GLenum format,
                                       GLenum type, GLvoid *table );

extern void glGetColorTableParameterfv( GLenum target, GLenum pname,
                                                  GLfloat *params );

extern void glGetColorTableParameteriv( GLenum target, GLenum pname,
                                                  GLint *params );

extern void glBlendEquation( GLenum mode );

extern void glBlendColor( GLclampf red, GLclampf green,
                                    GLclampf blue, GLclampf alpha );

extern void glHistogram( GLenum target, GLsizei width,
				   GLenum internalformat, GLboolean sink );

extern void glResetHistogram( GLenum target );

extern void glGetHistogram( GLenum target, GLboolean reset,
				      GLenum format, GLenum type,
				      GLvoid *values );

extern void glGetHistogramParameterfv( GLenum target, GLenum pname,
						 GLfloat *params );

extern void glGetHistogramParameteriv( GLenum target, GLenum pname,
						 GLint *params );

extern void glMinmax( GLenum target, GLenum internalformat,
				GLboolean sink );

extern void glResetMinmax( GLenum target );

extern void glGetMinmax( GLenum target, GLboolean reset,
                                   GLenum format, GLenum types,
                                   GLvoid *values );

extern void glGetMinmaxParameterfv( GLenum target, GLenum pname,
					      GLfloat *params );

extern void glGetMinmaxParameteriv( GLenum target, GLenum pname,
					      GLint *params );

extern void glConvolutionFilter1D( GLenum target,
	GLenum internalformat, GLsizei width, GLenum format, GLenum type,
	const GLvoid *image );

extern void glConvolutionFilter2D( GLenum target,
	GLenum internalformat, GLsizei width, GLsizei height, GLenum format,
	GLenum type, const GLvoid *image );

extern void glConvolutionParameterf( GLenum target, GLenum pname,
	GLfloat params );

extern void glConvolutionParameterfv( GLenum target, GLenum pname,
	const GLfloat *params );

extern void glConvolutionParameteri( GLenum target, GLenum pname,
	GLint params );

extern void glConvolutionParameteriv( GLenum target, GLenum pname,
	const GLint *params );

extern void glCopyConvolutionFilter1D( GLenum target,
	GLenum internalformat, GLint x, GLint y, GLsizei width );

extern void glCopyConvolutionFilter2D( GLenum target,
	GLenum internalformat, GLint x, GLint y, GLsizei width,
	GLsizei height);

extern void glGetConvolutionFilter( GLenum target, GLenum format,
	GLenum type, GLvoid *image );

extern void glGetConvolutionParameterfv( GLenum target, GLenum pname,
	GLfloat *params );

extern void glGetConvolutionParameteriv( GLenum target, GLenum pname,
	GLint *params );

extern void glSeparableFilter2D( GLenum target,
	GLenum internalformat, GLsizei width, GLsizei height, GLenum format,
	GLenum type, const GLvoid *row, const GLvoid *column );

extern void glGetSeparableFilter( GLenum target, GLenum format,
	GLenum type, GLvoid *row, GLvoid *column, GLvoid *span );

alias void function(GLclampf red, GLclampf green, 
                    GLclampf blue, GLclampf alpha) PFNGLBLENDCOLORPROC;
alias void function(GLenum mode) PFNGLBLENDEQUATIONPROC;



/*
 * OpenGL 1.3
 */

/* multitexture */
enum {
    GL_TEXTURE0 = 0x84C0,
    GL_TEXTURE1 = 0x84C1,
    GL_TEXTURE2 = 0x84C2,
    GL_TEXTURE3 = 0x84C3,
    GL_TEXTURE4 = 0x84C4,
    GL_TEXTURE5 = 0x84C5,
    GL_TEXTURE6 = 0x84C6,
    GL_TEXTURE7 = 0x84C7,
    GL_TEXTURE8 = 0x84C8,
    GL_TEXTURE9 = 0x84C9,
    GL_TEXTURE10 = 0x84CA,
    GL_TEXTURE11 = 0x84CB,
    GL_TEXTURE12 = 0x84CC,
    GL_TEXTURE13 = 0x84CD,
    GL_TEXTURE14 = 0x84CE,
    GL_TEXTURE15 = 0x84CF,
    GL_TEXTURE16 = 0x84D0,
    GL_TEXTURE17 = 0x84D1,
    GL_TEXTURE18 = 0x84D2,
    GL_TEXTURE19 = 0x84D3,
    GL_TEXTURE20 = 0x84D4,
    GL_TEXTURE21 = 0x84D5,
    GL_TEXTURE22 = 0x84D6,
    GL_TEXTURE23 = 0x84D7,
    GL_TEXTURE24 = 0x84D8,
    GL_TEXTURE25 = 0x84D9,
    GL_TEXTURE26 = 0x84DA,
    GL_TEXTURE27 = 0x84DB,
    GL_TEXTURE28 = 0x84DC,
    GL_TEXTURE29 = 0x84DD,
    GL_TEXTURE30 = 0x84DE,
    GL_TEXTURE31 = 0x84DF,
    GL_ACTIVE_TEXTURE = 0x84E0,
    GL_CLIENT_ACTIVE_TEXTURE = 0x84E1,
    GL_MAX_TEXTURE_UNITS = 0x84E2,

    /*texture_cube_map */
    GL_NORMAL_MAP = 0x8511,
    GL_REFLECTION_MAP = 0x8512,
    GL_TEXTURE_CUBE_MAP = 0x8513,
    GL_TEXTURE_BINDING_CUBE_MAP = 0x8514,
    GL_TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515,
    GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516,
    GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517,
    GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518,
    GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519,
    GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A,
    GL_PROXY_TEXTURE_CUBE_MAP = 0x851B,
    GL_MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C,

    /* texture_compression */
    GL_COMPRESSED_ALPHA = 0x84E9,
    GL_COMPRESSED_LUMINANCE = 0x84EA,
    GL_COMPRESSED_LUMINANCE_ALPHA = 0x84EB,
    GL_COMPRESSED_INTENSITY = 0x84EC,
    GL_COMPRESSED_RGB = 0x84ED,
    GL_COMPRESSED_RGBA = 0x84EE,
    GL_TEXTURE_COMPRESSION_HINT = 0x84EF,
    GL_TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0,
    GL_TEXTURE_COMPRESSED = 0x86A1,
    GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2,
    GL_COMPRESSED_TEXTURE_FORMATS = 0x86A3,

    /* multisample */
    GL_MULTISAMPLE = 0x809D,
    GL_SAMPLE_ALPHA_TO_COVERAGE = 0x809E,
    GL_SAMPLE_ALPHA_TO_ONE = 0x809F,
    GL_SAMPLE_COVERAGE = 0x80A0,
    GL_SAMPLE_BUFFERS = 0x80A8,
    GL_SAMPLES = 0x80A9,
    GL_SAMPLE_COVERAGE_VALUE = 0x80AA,
    GL_SAMPLE_COVERAGE_INVERT = 0x80AB,
    GL_MULTISAMPLE_BIT = 0x20000000,

    /* transpose_matrix */
    GL_TRANSPOSE_MODELVIEW_MATRIX = 0x84E3,
    GL_TRANSPOSE_PROJECTION_MATRIX = 0x84E4,
    GL_TRANSPOSE_TEXTURE_MATRIX = 0x84E5,
    GL_TRANSPOSE_COLOR_MATRIX = 0x84E6,

    /* texture_env_combine */
    GL_COMBINE = 0x8570,
    GL_COMBINE_RGB = 0x8571,
    GL_COMBINE_ALPHA = 0x8572,
    GL_SOURCE0_RGB = 0x8580,
    GL_SOURCE1_RGB = 0x8581,
    GL_SOURCE2_RGB = 0x8582,
    GL_SOURCE0_ALPHA = 0x8588,
    GL_SOURCE1_ALPHA = 0x8589,
    GL_SOURCE2_ALPHA = 0x858A,
    GL_OPERAND0_RGB = 0x8590,
    GL_OPERAND1_RGB = 0x8591,
    GL_OPERAND2_RGB = 0x8592,
    GL_OPERAND0_ALPHA = 0x8598,
    GL_OPERAND1_ALPHA = 0x8599,
    GL_OPERAND2_ALPHA = 0x859A,
    GL_RGB_SCALE = 0x8573,
    GL_ADD_SIGNED = 0x8574,
    GL_INTERPOLATE = 0x8575,
    GL_SUBTRACT = 0x84E7,
    GL_CONSTANT = 0x8576,
    GL_PRIMARY_COLOR = 0x8577,
    GL_PREVIOUS = 0x8578,

    /* texture_env_dot3 */
    GL_DOT3_RGB = 0x86AE,
    GL_DOT3_RGBA = 0x86AF,

    /* texture_border_clamp */
    GL_CLAMP_TO_BORDER = 0x812D,
}

extern void glActiveTexture( GLenum texture );
extern void glClientActiveTexture( GLenum texture );
extern void glCompressedTexImage1D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data );

extern void glCompressedTexImage2D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data );

extern void glCompressedTexImage3D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data );

extern void glCompressedTexSubImage1D( GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data );

extern void glCompressedTexSubImage2D( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data );

extern void glCompressedTexSubImage3D( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data );

extern void glGetCompressedTexImage( GLenum target, GLint lod, GLvoid *img );
extern void glMultiTexCoord1d( GLenum target, GLdouble s );
extern void glMultiTexCoord1dv( GLenum target, const GLdouble *v );
extern void glMultiTexCoord1f( GLenum target, GLfloat s );
extern void glMultiTexCoord1fv( GLenum target, const GLfloat *v );
extern void glMultiTexCoord1i( GLenum target, GLint s );
extern void glMultiTexCoord1iv( GLenum target, const GLint *v );
extern void glMultiTexCoord1s( GLenum target, GLshort s );
extern void glMultiTexCoord1sv( GLenum target, const GLshort *v );
extern void glMultiTexCoord2d( GLenum target, GLdouble s, GLdouble t );
extern void glMultiTexCoord2dv( GLenum target, const GLdouble *v );
extern void glMultiTexCoord2f( GLenum target, GLfloat s, GLfloat t );
extern void glMultiTexCoord2fv( GLenum target, const GLfloat *v );
extern void glMultiTexCoord2i( GLenum target, GLint s, GLint t );
extern void glMultiTexCoord2iv( GLenum target, const GLint *v );
extern void glMultiTexCoord2s( GLenum target, GLshort s, GLshort t );
extern void glMultiTexCoord2sv( GLenum target, const GLshort *v );
extern void glMultiTexCoord3d( GLenum target, GLdouble s, GLdouble t, GLdouble r );
extern void glMultiTexCoord3dv( GLenum target, const GLdouble *v );
extern void glMultiTexCoord3f( GLenum target, GLfloat s, GLfloat t, GLfloat r );
extern void glMultiTexCoord3fv( GLenum target, const GLfloat *v );
extern void glMultiTexCoord3i( GLenum target, GLint s, GLint t, GLint r );
extern void glMultiTexCoord3iv( GLenum target, const GLint *v );
extern void glMultiTexCoord3s( GLenum target, GLshort s, GLshort t, GLshort r );
extern void glMultiTexCoord3sv( GLenum target, const GLshort *v );
extern void glMultiTexCoord4d( GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q );
extern void glMultiTexCoord4dv( GLenum target, const GLdouble *v );
extern void glMultiTexCoord4f( GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q );
extern void glMultiTexCoord4fv( GLenum target, const GLfloat *v );
extern void glMultiTexCoord4i( GLenum target, GLint s, GLint t, GLint r, GLint q );
extern void glMultiTexCoord4iv( GLenum target, const GLint *v );
extern void glMultiTexCoord4s( GLenum target, GLshort s, GLshort t, GLshort r, GLshort q );
extern void glMultiTexCoord4sv( GLenum target, const GLshort *v );


extern void glLoadTransposeMatrixd( const GLdouble m[16] );
extern void glLoadTransposeMatrixf( const GLfloat m[16] );
extern void glMultTransposeMatrixd( const GLdouble m[16] );
extern void glMultTransposeMatrixf( const GLfloat m[16] );
extern void glSampleCoverage( GLclampf value, GLboolean invert );


alias void function(GLenum texture) PFNGLACTIVETEXTUREPROC;
alias void function(GLclampf value, GLboolean invert) PFNGLSAMPLECOVERAGEPROC;
alias void function(GLenum target, GLint level, GLenum internalformat,
                    GLsizei width, GLsizei height, GLsizei depth,
                    GLint border, GLsizei imageSize,
                    const GLvoid *data) PFNGLCOMPRESSEDTEXIMAGE3DPROC;
alias void function(GLenum target, GLint level, GLenum internalformat,
                    GLsizei width, GLsizei height, GLint border,
                    GLsizei imageSize,
                    const GLvoid *data) PFNGLCOMPRESSEDTEXIMAGE2DPROC;
alias void function(GLenum target, GLint level, GLenum internalformat,
                    GLsizei width, GLint border, GLsizei imageSize,
                    const GLvoid *data) PFNGLCOMPRESSEDTEXIMAGE1DPROC;
alias void function(GLenum target, GLint level, GLint xoffset, GLint yoffset,
                    GLint zoffset, GLsizei width, GLsizei height, GLsizei depth,
                    GLenum format, GLsizei imageSize,
                    const GLvoid *data) PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC;
alias void function(GLenum target, GLint level, GLint xoffset, GLint yoffset,
                    GLsizei width, GLsizei height, GLenum format,
                    GLsizei imageSize,
                    const GLvoid *data) PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC;
alias void function(GLenum target, GLint level, GLint xoffset, GLsizei width,
                    GLenum format, GLsizei imageSize,
                    const GLvoid *data) PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC;
alias void function(GLenum target, GLint level, GLvoid *img) PFNGLGETCOMPRESSEDTEXIMAGEPROC;



/*
 * GL_ARB_multitexture (ARB extension 1 and OpenGL 1.2.1)
 */
const GL_ARB_multitexture  = 1;

enum {
    GL_TEXTURE0_ARB = 0x84C0,
    GL_TEXTURE1_ARB = 0x84C1,
    GL_TEXTURE2_ARB = 0x84C2,
    GL_TEXTURE3_ARB = 0x84C3,
    GL_TEXTURE4_ARB = 0x84C4,
    GL_TEXTURE5_ARB = 0x84C5,
    GL_TEXTURE6_ARB = 0x84C6,
    GL_TEXTURE7_ARB = 0x84C7,
    GL_TEXTURE8_ARB = 0x84C8,
    GL_TEXTURE9_ARB = 0x84C9,
    GL_TEXTURE10_ARB = 0x84CA,
    GL_TEXTURE11_ARB = 0x84CB,
    GL_TEXTURE12_ARB = 0x84CC,
    GL_TEXTURE13_ARB = 0x84CD,
    GL_TEXTURE14_ARB = 0x84CE,
    GL_TEXTURE15_ARB = 0x84CF,
    GL_TEXTURE16_ARB = 0x84D0,
    GL_TEXTURE17_ARB = 0x84D1,
    GL_TEXTURE18_ARB = 0x84D2,
    GL_TEXTURE19_ARB = 0x84D3,
    GL_TEXTURE20_ARB = 0x84D4,
    GL_TEXTURE21_ARB = 0x84D5,
    GL_TEXTURE22_ARB = 0x84D6,
    GL_TEXTURE23_ARB = 0x84D7,
    GL_TEXTURE24_ARB = 0x84D8,
    GL_TEXTURE25_ARB = 0x84D9,
    GL_TEXTURE26_ARB = 0x84DA,
    GL_TEXTURE27_ARB = 0x84DB,
    GL_TEXTURE28_ARB = 0x84DC,
    GL_TEXTURE29_ARB = 0x84DD,
    GL_TEXTURE30_ARB = 0x84DE,
    GL_TEXTURE31_ARB = 0x84DF,
    GL_ACTIVE_TEXTURE_ARB = 0x84E0,
    GL_CLIENT_ACTIVE_TEXTURE_ARB = 0x84E1,
    GL_MAX_TEXTURE_UNITS_ARB = 0x84E2,
}

extern void glActiveTextureARB(GLenum texture);
extern void glClientActiveTextureARB(GLenum texture);
extern void glMultiTexCoord1dARB(GLenum target, GLdouble s);
extern void glMultiTexCoord1dvARB(GLenum target, const GLdouble *v);
extern void glMultiTexCoord1fARB(GLenum target, GLfloat s);
extern void glMultiTexCoord1fvARB(GLenum target, const GLfloat *v);
extern void glMultiTexCoord1iARB(GLenum target, GLint s);
extern void glMultiTexCoord1ivARB(GLenum target, const GLint *v);
extern void glMultiTexCoord1sARB(GLenum target, GLshort s);
extern void glMultiTexCoord1svARB(GLenum target, const GLshort *v);
extern void glMultiTexCoord2dARB(GLenum target, GLdouble s, GLdouble t);
extern void glMultiTexCoord2dvARB(GLenum target, const GLdouble *v);
extern void glMultiTexCoord2fARB(GLenum target, GLfloat s, GLfloat t);
extern void glMultiTexCoord2fvARB(GLenum target, const GLfloat *v);
extern void glMultiTexCoord2iARB(GLenum target, GLint s, GLint t);
extern void glMultiTexCoord2ivARB(GLenum target, const GLint *v);
extern void glMultiTexCoord2sARB(GLenum target, GLshort s, GLshort t);
extern void glMultiTexCoord2svARB(GLenum target, const GLshort *v);
extern void glMultiTexCoord3dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r);
extern void glMultiTexCoord3dvARB(GLenum target, const GLdouble *v);
extern void glMultiTexCoord3fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r);
extern void glMultiTexCoord3fvARB(GLenum target, const GLfloat *v);
extern void glMultiTexCoord3iARB(GLenum target, GLint s, GLint t, GLint r);
extern void glMultiTexCoord3ivARB(GLenum target, const GLint *v);
extern void glMultiTexCoord3sARB(GLenum target, GLshort s, GLshort t, GLshort r);
extern void glMultiTexCoord3svARB(GLenum target, const GLshort *v);
extern void glMultiTexCoord4dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
extern void glMultiTexCoord4dvARB(GLenum target, const GLdouble *v);
extern void glMultiTexCoord4fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
extern void glMultiTexCoord4fvARB(GLenum target, const GLfloat *v);
extern void glMultiTexCoord4iARB(GLenum target, GLint s, GLint t, GLint r, GLint q);
extern void glMultiTexCoord4ivARB(GLenum target, const GLint *v);
extern void glMultiTexCoord4sARB(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
extern void glMultiTexCoord4svARB(GLenum target, const GLshort *v);

alias void function(GLenum texture) PFNGLACTIVETEXTUREARBPROC;
alias void function(GLenum texture) PFNGLCLIENTACTIVETEXTUREARBPROC;
alias void function(GLenum target, GLdouble s) PFNGLMULTITEXCOORD1DARBPROC;
alias void function(GLenum target, const GLdouble *v) PFNGLMULTITEXCOORD1DVARBPROC;
alias void function(GLenum target, GLfloat s) PFNGLMULTITEXCOORD1FARBPROC;
alias void function(GLenum target, const GLfloat *v) PFNGLMULTITEXCOORD1FVARBPROC;
alias void function(GLenum target, GLint s) PFNGLMULTITEXCOORD1IARBPROC;
alias void function(GLenum target, const GLint *v) PFNGLMULTITEXCOORD1IVARBPROC;
alias void function(GLenum target, GLshort s) PFNGLMULTITEXCOORD1SARBPROC;
alias void function(GLenum target, const GLshort *v) PFNGLMULTITEXCOORD1SVARBPROC;
alias void function(GLenum target, GLdouble s, GLdouble t) PFNGLMULTITEXCOORD2DARBPROC;
alias void function(GLenum target, const GLdouble *v) PFNGLMULTITEXCOORD2DVARBPROC;
alias void function(GLenum target, GLfloat s, GLfloat t) PFNGLMULTITEXCOORD2FARBPROC;
alias void function(GLenum target, const GLfloat *v) PFNGLMULTITEXCOORD2FVARBPROC;
alias void function(GLenum target, GLint s, GLint t) PFNGLMULTITEXCOORD2IARBPROC;
alias void function(GLenum target, const GLint *v) PFNGLMULTITEXCOORD2IVARBPROC;
alias void function(GLenum target, GLshort s, GLshort t) PFNGLMULTITEXCOORD2SARBPROC;
alias void function(GLenum target, const GLshort *v) PFNGLMULTITEXCOORD2SVARBPROC;
alias void function(GLenum target, GLdouble s, GLdouble t, GLdouble r) PFNGLMULTITEXCOORD3DARBPROC;
alias void function(GLenum target, const GLdouble *v) PFNGLMULTITEXCOORD3DVARBPROC;
alias void function(GLenum target, GLfloat s, GLfloat t, GLfloat r) PFNGLMULTITEXCOORD3FARBPROC;
alias void function(GLenum target, const GLfloat *v) PFNGLMULTITEXCOORD3FVARBPROC;
alias void function(GLenum target, GLint s, GLint t, GLint r) PFNGLMULTITEXCOORD3IARBPROC;
alias void function(GLenum target, const GLint *v) PFNGLMULTITEXCOORD3IVARBPROC;
alias void function(GLenum target, GLshort s, GLshort t, GLshort r) PFNGLMULTITEXCOORD3SARBPROC;
alias void function(GLenum target, const GLshort *v) PFNGLMULTITEXCOORD3SVARBPROC;
alias void function(GLenum target, GLdouble s, GLdouble t, 
                    GLdouble r, GLdouble q) PFNGLMULTITEXCOORD4DARBPROC;
alias void function(GLenum target, const GLdouble *v) PFNGLMULTITEXCOORD4DVARBPROC;
alias void function(GLenum target, GLfloat s, GLfloat t, 
                    GLfloat r, GLfloat q) PFNGLMULTITEXCOORD4FARBPROC;
alias void function(GLenum target, const GLfloat *v) PFNGLMULTITEXCOORD4FVARBPROC;
alias void function(GLenum target, GLint s, GLint t, GLint r, GLint q) PFNGLMULTITEXCOORD4IARBPROC;
alias void function(GLenum target, const GLint *v) PFNGLMULTITEXCOORD4IVARBPROC;
alias void function(GLenum target, GLshort s, GLshort t, 
                    GLshort r, GLshort q) PFNGLMULTITEXCOORD4SARBPROC;
alias void function(GLenum target, const GLshort *v) PFNGLMULTITEXCOORD4SVARBPROC;

/* GL_ARB_multitexture */

//import c.gl.glext;

//#if GL_ARB_shader_objects

/* GL_MESA_shader_debug */
enum {
    GL_DEBUG_OBJECT_MESA = 0x8759,
    GL_DEBUG_PRINT_MESA = 0x875A,
    GL_DEBUG_ASSERT_MESA = 0x875B,
}

/+
extern GLhandleARB glCreateDebugObjectMESA (void);
extern void glClearDebugLogMESA (GLhandleARB obj, GLenum logType, GLenum shaderType);
extern void glGetDebugLogMESA (GLhandleARB obj, GLenum logType, GLenum shaderType, GLsizei maxLength,
                                         GLsizei *length, GLcharARB *debugLog);
extern GLsizei glGetDebugLogLengthMESA (GLhandleARB obj, GLenum logType, GLenum shaderType);
+/

//#endif /* GL_ARB_shader_objects */


/* GL_MESA_program_debug */

enum {
    GL_FRAGMENT_PROGRAM_POSITION_MESA = 0x8bb0,
    GL_FRAGMENT_PROGRAM_CALLBACK_MESA = 0x8bb1,
    GL_FRAGMENT_PROGRAM_CALLBACK_FUNC_MESA = 0x8bb2,
    GL_FRAGMENT_PROGRAM_CALLBACK_DATA_MESA = 0x8bb3,
    GL_VERTEX_PROGRAM_POSITION_MESA = 0x8bb4,
    GL_VERTEX_PROGRAM_CALLBACK_MESA = 0x8bb5,
    GL_VERTEX_PROGRAM_CALLBACK_FUNC_MESA = 0x8bb6,
    GL_VERTEX_PROGRAM_CALLBACK_DATA_MESA = 0x8bb7,
}

alias void function(GLenum target, GLvoid *data) GLprogramcallbackMESA;

extern void glProgramCallbackMESA(GLenum target, GLprogramcallbackMESA callback, GLvoid *data);

extern void glGetProgramRegisterfvMESA(GLenum target, GLsizei len, const GLubyte *name, GLfloat *v);

/* GL_MESA_texture_array */

/* GL_MESA_texture_array uses the same enum values as GL_EXT_texture_array.
 */
/* GL_EXT_texture_array */

extern void glFramebufferTextureLayerEXT(GLenum target,
    GLenum attachment, GLuint texture, GLint level, GLint layer);

enum {
    GL_TEXTURE_1D_ARRAY_EXT = 0x8C18,
    GL_PROXY_TEXTURE_1D_ARRAY_EXT = 0x8C19,
    GL_TEXTURE_2D_ARRAY_EXT = 0x8C1A,
    GL_PROXY_TEXTURE_2D_ARRAY_EXT = 0x8C1B,
    GL_TEXTURE_BINDING_1D_ARRAY_EXT = 0x8C1C,
    GL_TEXTURE_BINDING_2D_ARRAY_EXT = 0x8C1D,
    GL_MAX_ARRAY_TEXTURE_LAYERS_EXT = 0x88FF,
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT = 0x8CD4,
}


/* GL_ATI_blend_equation_separate */

const GL_ALPHA_BLEND_EQUATION_ATI = 0x883D;

extern void glBlendEquationSeparateATI( GLenum modeRGB, GLenum modeA );


/* GL_OES_EGL_image */
alias void* GLeglImageOES;

extern void glEGLImageTargetTexture2DOES (GLenum target, GLeglImageOES image);
extern void glEGLImageTargetRenderbufferStorageOES (GLenum target, GLeglImageOES image);
