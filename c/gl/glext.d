/*
** Copyright (c) 2007-2012 The Khronos Group Inc.
** 
** Permission is hereby granted, free of charge, to any person obtaining a
** copy of this software and/or associated documentation files (the
** "Materials"), to deal in the Materials without restriction, including
** without limitation the rights to use, copy, modify, merge, publish,
** distribute, sublicense, and/or sell copies of the Materials, and to
** permit persons to whom the Materials are furnished to do so, subject to
** the following conditions:
** 
** The above copyright notice and this permission notice shall be included
** in all copies or substantial portions of the Materials.
** 
** THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
** EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
** MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
** IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
** CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
** TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
** MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.
*/

/* Header file version number, required by OpenGL ABI for Linux */
/* glext.h last updated $Date: 2012-09-19 19:02:24 -0700 (Wed, 19 Sep 2012) $ */
/* Current version at http://www.opengl.org/registry/ */

module c.gl.glext;

import c.gl.gl;

extern(C):

const GL_GLEXT_VERSION  = 85;

/*************************************************************/

/* GL_VERSION_1_4 */
enum {
    GL_BLEND_DST_RGB                  = 0x80C8,
    GL_BLEND_SRC_RGB                  = 0x80C9,
    GL_BLEND_DST_ALPHA                = 0x80CA,
    GL_BLEND_SRC_ALPHA                = 0x80CB,
    GL_POINT_FADE_THRESHOLD_SIZE      = 0x8128,
    GL_DEPTH_COMPONENT16              = 0x81A5,
    GL_DEPTH_COMPONENT24              = 0x81A6,
    GL_DEPTH_COMPONENT32              = 0x81A7,
    GL_MIRRORED_REPEAT                = 0x8370,
    GL_MAX_TEXTURE_LOD_BIAS           = 0x84FD,
    GL_TEXTURE_LOD_BIAS               = 0x8501,
    GL_INCR_WRAP                      = 0x8507,
    GL_DECR_WRAP                      = 0x8508,
    GL_TEXTURE_DEPTH_SIZE             = 0x884A,
    GL_TEXTURE_COMPARE_MODE           = 0x884C,
    GL_TEXTURE_COMPARE_FUNC           = 0x884D,
    GL_POINT_SIZE_MIN                 = 0x8126,
    GL_POINT_SIZE_MAX                 = 0x8127,
    GL_POINT_DISTANCE_ATTENUATION     = 0x8129,
    GL_GENERATE_MIPMAP                = 0x8191,
    GL_GENERATE_MIPMAP_HINT           = 0x8192,
    GL_FOG_COORDINATE_SOURCE          = 0x8450,
    GL_FOG_COORDINATE                 = 0x8451,
    GL_FRAGMENT_DEPTH                 = 0x8452,
    GL_CURRENT_FOG_COORDINATE         = 0x8453,
    GL_FOG_COORDINATE_ARRAY_TYPE      = 0x8454,
    GL_FOG_COORDINATE_ARRAY_STRIDE    = 0x8455,
    GL_FOG_COORDINATE_ARRAY_POINTER   = 0x8456,
    GL_FOG_COORDINATE_ARRAY           = 0x8457,
    GL_COLOR_SUM                      = 0x8458,
    GL_CURRENT_SECONDARY_COLOR        = 0x8459,
    GL_SECONDARY_COLOR_ARRAY_SIZE     = 0x845A,
    GL_SECONDARY_COLOR_ARRAY_TYPE     = 0x845B,
    GL_SECONDARY_COLOR_ARRAY_STRIDE   = 0x845C,
    GL_SECONDARY_COLOR_ARRAY_POINTER  = 0x845D,
    GL_SECONDARY_COLOR_ARRAY          = 0x845E,
    GL_TEXTURE_FILTER_CONTROL         = 0x8500,
    GL_DEPTH_TEXTURE_MODE             = 0x884B,
    GL_COMPARE_R_TO_TEXTURE           = 0x884E,
}

/* GL_VERSION_1_5 */
enum {
    GL_BUFFER_SIZE                    = 0x8764,
    GL_BUFFER_USAGE                   = 0x8765,
    GL_QUERY_COUNTER_BITS             = 0x8864,
    GL_CURRENT_QUERY                  = 0x8865,
    GL_QUERY_RESULT                   = 0x8866,
    GL_QUERY_RESULT_AVAILABLE         = 0x8867,
    GL_ARRAY_BUFFER                   = 0x8892,
    GL_ELEMENT_ARRAY_BUFFER           = 0x8893,
    GL_ARRAY_BUFFER_BINDING           = 0x8894,
    GL_ELEMENT_ARRAY_BUFFER_BINDING   = 0x8895,
    GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F,
    GL_READ_ONLY                      = 0x88B8,
    GL_WRITE_ONLY                     = 0x88B9,
    GL_READ_WRITE                     = 0x88BA,
    GL_BUFFER_ACCESS                  = 0x88BB,
    GL_BUFFER_MAPPED                  = 0x88BC,
    GL_BUFFER_MAP_POINTER             = 0x88BD,
    GL_STREAM_DRAW                    = 0x88E0,
    GL_STREAM_READ                    = 0x88E1,
    GL_STREAM_COPY                    = 0x88E2,
    GL_STATIC_DRAW                    = 0x88E4,
    GL_STATIC_READ                    = 0x88E5,
    GL_STATIC_COPY                    = 0x88E6,
    GL_DYNAMIC_DRAW                   = 0x88E8,
    GL_DYNAMIC_READ                   = 0x88E9,
    GL_DYNAMIC_COPY                   = 0x88EA,
    GL_SAMPLES_PASSED                 = 0x8914,
    GL_SRC1_ALPHA                     = 0x8589,
    GL_VERTEX_ARRAY_BUFFER_BINDING    = 0x8896,
    GL_NORMAL_ARRAY_BUFFER_BINDING    = 0x8897,
    GL_COLOR_ARRAY_BUFFER_BINDING     = 0x8898,
    GL_INDEX_ARRAY_BUFFER_BINDING     = 0x8899,
    GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 0x889A,
    GL_EDGE_FLAG_ARRAY_BUFFER_BINDING = 0x889B,
    GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING = 0x889C,
    GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING = 0x889D,
    GL_WEIGHT_ARRAY_BUFFER_BINDING    = 0x889E,
    GL_FOG_COORD_SRC                  = 0x8450,
    GL_FOG_COORD                      = 0x8451,
    GL_CURRENT_FOG_COORD              = 0x8453,
    GL_FOG_COORD_ARRAY_TYPE           = 0x8454,
    GL_FOG_COORD_ARRAY_STRIDE         = 0x8455,
    GL_FOG_COORD_ARRAY_POINTER        = 0x8456,
    GL_FOG_COORD_ARRAY                = 0x8457,
    GL_FOG_COORD_ARRAY_BUFFER_BINDING = 0x889D,
    GL_SRC0_RGB                       = 0x8580,
    GL_SRC1_RGB                       = 0x8581,
    GL_SRC2_RGB                       = 0x8582,
    GL_SRC0_ALPHA                     = 0x8588,
    GL_SRC2_ALPHA                     = 0x858A,
}

/* GL_VERSION_2_0 */
enum {
    GL_BLEND_EQUATION_RGB             = 0x8009,
    GL_VERTEX_ATTRIB_ARRAY_ENABLED    = 0x8622,
    GL_VERTEX_ATTRIB_ARRAY_SIZE       = 0x8623,
    GL_VERTEX_ATTRIB_ARRAY_STRIDE     = 0x8624,
    GL_VERTEX_ATTRIB_ARRAY_TYPE       = 0x8625,
    GL_CURRENT_VERTEX_ATTRIB          = 0x8626,
    GL_VERTEX_PROGRAM_POINT_SIZE      = 0x8642,
    GL_VERTEX_ATTRIB_ARRAY_POINTER    = 0x8645,
    GL_STENCIL_BACK_FUNC              = 0x8800,
    GL_STENCIL_BACK_FAIL              = 0x8801,
    GL_STENCIL_BACK_PASS_DEPTH_FAIL   = 0x8802,
    GL_STENCIL_BACK_PASS_DEPTH_PASS   = 0x8803,
    GL_MAX_DRAW_BUFFERS               = 0x8824,
    GL_DRAW_BUFFER0                   = 0x8825,
    GL_DRAW_BUFFER1                   = 0x8826,
    GL_DRAW_BUFFER2                   = 0x8827,
    GL_DRAW_BUFFER3                   = 0x8828,
    GL_DRAW_BUFFER4                   = 0x8829,
    GL_DRAW_BUFFER5                   = 0x882A,
    GL_DRAW_BUFFER6                   = 0x882B,
    GL_DRAW_BUFFER7                   = 0x882C,
    GL_DRAW_BUFFER8                   = 0x882D,
    GL_DRAW_BUFFER9                   = 0x882E,
    GL_DRAW_BUFFER10                  = 0x882F,
    GL_DRAW_BUFFER11                  = 0x8830,
    GL_DRAW_BUFFER12                  = 0x8831,
    GL_DRAW_BUFFER13                  = 0x8832,
    GL_DRAW_BUFFER14                  = 0x8833,
    GL_DRAW_BUFFER15                  = 0x8834,
    GL_BLEND_EQUATION_ALPHA           = 0x883D,
    GL_MAX_VERTEX_ATTRIBS             = 0x8869,
    GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A,
    GL_MAX_TEXTURE_IMAGE_UNITS        = 0x8872,
    GL_FRAGMENT_SHADER                = 0x8B30,
    GL_VERTEX_SHADER                  = 0x8B31,
    GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49,
    GL_MAX_VERTEX_UNIFORM_COMPONENTS  = 0x8B4A,
    GL_MAX_VARYING_FLOATS             = 0x8B4B,
    GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C,
    GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D,
    GL_SHADER_TYPE                    = 0x8B4F,
    GL_FLOAT_VEC2                     = 0x8B50,
    GL_FLOAT_VEC3                     = 0x8B51,
    GL_FLOAT_VEC4                     = 0x8B52,
    GL_INT_VEC2                       = 0x8B53,
    GL_INT_VEC3                       = 0x8B54,
    GL_INT_VEC4                       = 0x8B55,
    GL_BOOL                           = 0x8B56,
    GL_BOOL_VEC2                      = 0x8B57,
    GL_BOOL_VEC3                      = 0x8B58,
    GL_BOOL_VEC4                      = 0x8B59,
    GL_FLOAT_MAT2                     = 0x8B5A,
    GL_FLOAT_MAT3                     = 0x8B5B,
    GL_FLOAT_MAT4                     = 0x8B5C,
    GL_SAMPLER_1D                     = 0x8B5D,
    GL_SAMPLER_2D                     = 0x8B5E,
    GL_SAMPLER_3D                     = 0x8B5F,
    GL_SAMPLER_CUBE                   = 0x8B60,
    GL_SAMPLER_1D_SHADOW              = 0x8B61,
    GL_SAMPLER_2D_SHADOW              = 0x8B62,
    GL_DELETE_STATUS                  = 0x8B80,
    GL_COMPILE_STATUS                 = 0x8B81,
    GL_LINK_STATUS                    = 0x8B82,
    GL_VALIDATE_STATUS                = 0x8B83,
    GL_INFO_LOG_LENGTH                = 0x8B84,
    GL_ATTACHED_SHADERS               = 0x8B85,
    GL_ACTIVE_UNIFORMS                = 0x8B86,
    GL_ACTIVE_UNIFORM_MAX_LENGTH      = 0x8B87,
    GL_SHADER_SOURCE_LENGTH           = 0x8B88,
    GL_ACTIVE_ATTRIBUTES              = 0x8B89,
    GL_ACTIVE_ATTRIBUTE_MAX_LENGTH    = 0x8B8A,
    GL_FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B,
    GL_SHADING_LANGUAGE_VERSION       = 0x8B8C,
    GL_CURRENT_PROGRAM                = 0x8B8D,
    GL_POINT_SPRITE_COORD_ORIGIN      = 0x8CA0,
    GL_LOWER_LEFT                     = 0x8CA1,
    GL_UPPER_LEFT                     = 0x8CA2,
    GL_STENCIL_BACK_REF               = 0x8CA3,
    GL_STENCIL_BACK_VALUE_MASK        = 0x8CA4,
    GL_STENCIL_BACK_WRITEMASK         = 0x8CA5,
    GL_VERTEX_PROGRAM_TWO_SIDE        = 0x8643,
    GL_POINT_SPRITE                   = 0x8861,
    GL_COORD_REPLACE                  = 0x8862,
    GL_MAX_TEXTURE_COORDS             = 0x8871,
}

/* GL_VERSION_2_1 */
enum {
    GL_PIXEL_PACK_BUFFER              = 0x88EB,
    GL_PIXEL_UNPACK_BUFFER            = 0x88EC,
    GL_PIXEL_PACK_BUFFER_BINDING      = 0x88ED,
    GL_PIXEL_UNPACK_BUFFER_BINDING    = 0x88EF,
    GL_FLOAT_MAT2x3                   = 0x8B65,
    GL_FLOAT_MAT2x4                   = 0x8B66,
    GL_FLOAT_MAT3x2                   = 0x8B67,
    GL_FLOAT_MAT3x4                   = 0x8B68,
    GL_FLOAT_MAT4x2                   = 0x8B69,
    GL_FLOAT_MAT4x3                   = 0x8B6A,
    GL_SRGB                           = 0x8C40,
    GL_SRGB8                          = 0x8C41,
    GL_SRGB_ALPHA                     = 0x8C42,
    GL_SRGB8_ALPHA8                   = 0x8C43,
    GL_COMPRESSED_SRGB                = 0x8C48,
    GL_COMPRESSED_SRGB_ALPHA          = 0x8C49,
    GL_CURRENT_RASTER_SECONDARY_COLOR = 0x845F,
    GL_SLUMINANCE_ALPHA               = 0x8C44,
    GL_SLUMINANCE8_ALPHA8             = 0x8C45,
    GL_SLUMINANCE                     = 0x8C46,
    GL_SLUMINANCE8                    = 0x8C47,
    GL_COMPRESSED_SLUMINANCE          = 0x8C4A,
    GL_COMPRESSED_SLUMINANCE_ALPHA    = 0x8C4B,
}

/* GL_VERSION_3_0 */
enum {
    GL_COMPARE_REF_TO_TEXTURE         = 0x884E,
    GL_CLIP_DISTANCE0                 = 0x3000,
    GL_CLIP_DISTANCE1                 = 0x3001,
    GL_CLIP_DISTANCE2                 = 0x3002,
    GL_CLIP_DISTANCE3                 = 0x3003,
    GL_CLIP_DISTANCE4                 = 0x3004,
    GL_CLIP_DISTANCE5                 = 0x3005,
    GL_CLIP_DISTANCE6                 = 0x3006,
    GL_CLIP_DISTANCE7                 = 0x3007,
    GL_MAX_CLIP_DISTANCES             = 0x0D32,
    GL_MAJOR_VERSION                  = 0x821B,
    GL_MINOR_VERSION                  = 0x821C,
    GL_NUM_EXTENSIONS                 = 0x821D,
    GL_CONTEXT_FLAGS                  = 0x821E,
    GL_COMPRESSED_RED                 = 0x8225,
    GL_COMPRESSED_RG                  = 0x8226,
    GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = 0x0001,
    GL_RGBA32F                        = 0x8814,
    GL_RGB32F                         = 0x8815,
    GL_RGBA16F                        = 0x881A,
    GL_RGB16F                         = 0x881B,
    GL_VERTEX_ATTRIB_ARRAY_INTEGER    = 0x88FD,
    GL_MAX_ARRAY_TEXTURE_LAYERS       = 0x88FF,
    GL_MIN_PROGRAM_TEXEL_OFFSET       = 0x8904,
    GL_MAX_PROGRAM_TEXEL_OFFSET       = 0x8905,
    GL_CLAMP_READ_COLOR               = 0x891C,
    GL_FIXED_ONLY                     = 0x891D,
    GL_MAX_VARYING_COMPONENTS         = 0x8B4B,
    GL_TEXTURE_1D_ARRAY               = 0x8C18,
    GL_PROXY_TEXTURE_1D_ARRAY         = 0x8C19,
    GL_TEXTURE_2D_ARRAY               = 0x8C1A,
    GL_PROXY_TEXTURE_2D_ARRAY         = 0x8C1B,
    GL_TEXTURE_BINDING_1D_ARRAY       = 0x8C1C,
    GL_TEXTURE_BINDING_2D_ARRAY       = 0x8C1D,
    GL_R11F_G11F_B10F                 = 0x8C3A,
    GL_UNSIGNED_INT_10F_11F_11F_REV   = 0x8C3B,
    GL_RGB9_E5                        = 0x8C3D,
    GL_UNSIGNED_INT_5_9_9_9_REV       = 0x8C3E,
    GL_TEXTURE_SHARED_SIZE            = 0x8C3F,
    GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 0x8C76,
    GL_TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F,
    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80,
    GL_TRANSFORM_FEEDBACK_VARYINGS    = 0x8C83,
    GL_TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84,
    GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85,
    GL_PRIMITIVES_GENERATED           = 0x8C87,
    GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88,
    GL_RASTERIZER_DISCARD             = 0x8C89,
    GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A,
    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B,
    GL_INTERLEAVED_ATTRIBS            = 0x8C8C,
    GL_SEPARATE_ATTRIBS               = 0x8C8D,
    GL_TRANSFORM_FEEDBACK_BUFFER      = 0x8C8E,
    GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F,
    GL_RGBA32UI                       = 0x8D70,
    GL_RGB32UI                        = 0x8D71,
    GL_RGBA16UI                       = 0x8D76,
    GL_RGB16UI                        = 0x8D77,
    GL_RGBA8UI                        = 0x8D7C,
    GL_RGB8UI                         = 0x8D7D,
    GL_RGBA32I                        = 0x8D82,
    GL_RGB32I                         = 0x8D83,
    GL_RGBA16I                        = 0x8D88,
    GL_RGB16I                         = 0x8D89,
    GL_RGBA8I                         = 0x8D8E,
    GL_RGB8I                          = 0x8D8F,
    GL_RED_INTEGER                    = 0x8D94,
    GL_GREEN_INTEGER                  = 0x8D95,
    GL_BLUE_INTEGER                   = 0x8D96,
    GL_RGB_INTEGER                    = 0x8D98,
    GL_RGBA_INTEGER                   = 0x8D99,
    GL_BGR_INTEGER                    = 0x8D9A,
    GL_BGRA_INTEGER                   = 0x8D9B,
    GL_SAMPLER_1D_ARRAY               = 0x8DC0,
    GL_SAMPLER_2D_ARRAY               = 0x8DC1,
    GL_SAMPLER_1D_ARRAY_SHADOW        = 0x8DC3,
    GL_SAMPLER_2D_ARRAY_SHADOW        = 0x8DC4,
    GL_SAMPLER_CUBE_SHADOW            = 0x8DC5,
    GL_UNSIGNED_INT_VEC2              = 0x8DC6,
    GL_UNSIGNED_INT_VEC3              = 0x8DC7,
    GL_UNSIGNED_INT_VEC4              = 0x8DC8,
    GL_INT_SAMPLER_1D                 = 0x8DC9,
    GL_INT_SAMPLER_2D                 = 0x8DCA,
    GL_INT_SAMPLER_3D                 = 0x8DCB,
    GL_INT_SAMPLER_CUBE               = 0x8DCC,
    GL_INT_SAMPLER_1D_ARRAY           = 0x8DCE,
    GL_INT_SAMPLER_2D_ARRAY           = 0x8DCF,
    GL_UNSIGNED_INT_SAMPLER_1D        = 0x8DD1,
    GL_UNSIGNED_INT_SAMPLER_2D        = 0x8DD2,
    GL_UNSIGNED_INT_SAMPLER_3D        = 0x8DD3,
    GL_UNSIGNED_INT_SAMPLER_CUBE      = 0x8DD4,
    GL_UNSIGNED_INT_SAMPLER_1D_ARRAY  = 0x8DD6,
    GL_UNSIGNED_INT_SAMPLER_2D_ARRAY  = 0x8DD7,
    GL_QUERY_WAIT                     = 0x8E13,
    GL_QUERY_NO_WAIT                  = 0x8E14,
    GL_QUERY_BY_REGION_WAIT           = 0x8E15,
    GL_QUERY_BY_REGION_NO_WAIT        = 0x8E16,
    GL_BUFFER_ACCESS_FLAGS            = 0x911F,
    GL_BUFFER_MAP_LENGTH              = 0x9120,
    GL_BUFFER_MAP_OFFSET              = 0x9121,
    /* Reuse tokens from ARB_depth_buffer_float */
    /* reuse GL_DEPTH_COMPONENT32F */
    /* reuse GL_DEPTH32F_STENCIL8 */
    /* reuse GL_FLOAT_32_UNSIGNED_INT_24_8_REV */
    /* Reuse tokens from ARB_framebuffer_object */
    /* reuse GL_INVALID_FRAMEBUFFER_OPERATION */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE */
    /* reuse GL_FRAMEBUFFER_DEFAULT */
    /* reuse GL_FRAMEBUFFER_UNDEFINED */
    /* reuse GL_DEPTH_STENCIL_ATTACHMENT */
    /* reuse GL_INDEX */
    /* reuse GL_MAX_RENDERBUFFER_SIZE */
    /* reuse GL_DEPTH_STENCIL */
    /* reuse GL_UNSIGNED_INT_24_8 */
    /* reuse GL_DEPTH24_STENCIL8 */
    /* reuse GL_TEXTURE_STENCIL_SIZE */
    /* reuse GL_TEXTURE_RED_TYPE */
    /* reuse GL_TEXTURE_GREEN_TYPE */
    /* reuse GL_TEXTURE_BLUE_TYPE */
    /* reuse GL_TEXTURE_ALPHA_TYPE */
    /* reuse GL_TEXTURE_DEPTH_TYPE */
    /* reuse GL_UNSIGNED_NORMALIZED */
    /* reuse GL_FRAMEBUFFER_BINDING */
    /* reuse GL_DRAW_FRAMEBUFFER_BINDING */
    /* reuse GL_RENDERBUFFER_BINDING */
    /* reuse GL_READ_FRAMEBUFFER */
    /* reuse GL_DRAW_FRAMEBUFFER */
    /* reuse GL_READ_FRAMEBUFFER_BINDING */
    /* reuse GL_RENDERBUFFER_SAMPLES */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER */
    /* reuse GL_FRAMEBUFFER_COMPLETE */
    /* reuse GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT */
    /* reuse GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT */
    /* reuse GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER */
    /* reuse GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER */
    /* reuse GL_FRAMEBUFFER_UNSUPPORTED */
    /* reuse GL_MAX_COLOR_ATTACHMENTS */
    /* reuse GL_COLOR_ATTACHMENT0 */
    /* reuse GL_COLOR_ATTACHMENT1 */
    /* reuse GL_COLOR_ATTACHMENT2 */
    /* reuse GL_COLOR_ATTACHMENT3 */
    /* reuse GL_COLOR_ATTACHMENT4 */
    /* reuse GL_COLOR_ATTACHMENT5 */
    /* reuse GL_COLOR_ATTACHMENT6 */
    /* reuse GL_COLOR_ATTACHMENT7 */
    /* reuse GL_COLOR_ATTACHMENT8 */
    /* reuse GL_COLOR_ATTACHMENT9 */
    /* reuse GL_COLOR_ATTACHMENT10 */
    /* reuse GL_COLOR_ATTACHMENT11 */
    /* reuse GL_COLOR_ATTACHMENT12 */
    /* reuse GL_COLOR_ATTACHMENT13 */
    /* reuse GL_COLOR_ATTACHMENT14 */
    /* reuse GL_COLOR_ATTACHMENT15 */
    /* reuse GL_DEPTH_ATTACHMENT */
    /* reuse GL_STENCIL_ATTACHMENT */
    /* reuse GL_FRAMEBUFFER */
    /* reuse GL_RENDERBUFFER */
    /* reuse GL_RENDERBUFFER_WIDTH */
    /* reuse GL_RENDERBUFFER_HEIGHT */
    /* reuse GL_RENDERBUFFER_INTERNAL_FORMAT */
    /* reuse GL_STENCIL_INDEX1 */
    /* reuse GL_STENCIL_INDEX4 */
    /* reuse GL_STENCIL_INDEX8 */
    /* reuse GL_STENCIL_INDEX16 */
    /* reuse GL_RENDERBUFFER_RED_SIZE */
    /* reuse GL_RENDERBUFFER_GREEN_SIZE */
    /* reuse GL_RENDERBUFFER_BLUE_SIZE */
    /* reuse GL_RENDERBUFFER_ALPHA_SIZE */
    /* reuse GL_RENDERBUFFER_DEPTH_SIZE */
    /* reuse GL_RENDERBUFFER_STENCIL_SIZE */
    /* reuse GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE */
    /* reuse GL_MAX_SAMPLES */
    /* Reuse tokens from ARB_framebuffer_sRGB */
    /* reuse GL_FRAMEBUFFER_SRGB */
    /* Reuse tokens from ARB_half_float_vertex */
    /* reuse GL_HALF_FLOAT */
    /* Reuse tokens from ARB_map_buffer_range */
    /* reuse GL_MAP_READ_BIT */
    /* reuse GL_MAP_WRITE_BIT */
    /* reuse GL_MAP_INVALIDATE_RANGE_BIT */
    /* reuse GL_MAP_INVALIDATE_BUFFER_BIT */
    /* reuse GL_MAP_FLUSH_EXPLICIT_BIT */
    /* reuse GL_MAP_UNSYNCHRONIZED_BIT */
    /* Reuse tokens from ARB_texture_compression_rgtc */
    /* reuse GL_COMPRESSED_RED_RGTC1 */
    /* reuse GL_COMPRESSED_SIGNED_RED_RGTC1 */
    /* reuse GL_COMPRESSED_RG_RGTC2 */
    /* reuse GL_COMPRESSED_SIGNED_RG_RGTC2 */
    /* Reuse tokens from ARB_texture_rg */
    /* reuse GL_RG */
    /* reuse GL_RG_INTEGER */
    /* reuse GL_R8 */
    /* reuse GL_R16 */
    /* reuse GL_RG8 */
    /* reuse GL_RG16 */
    /* reuse GL_R16F */
    /* reuse GL_R32F */
    /* reuse GL_RG16F */
    /* reuse GL_RG32F */
    /* reuse GL_R8I */
    /* reuse GL_R8UI */
    /* reuse GL_R16I */
    /* reuse GL_R16UI */
    /* reuse GL_R32I */
    /* reuse GL_R32UI */
    /* reuse GL_RG8I */
    /* reuse GL_RG8UI */
    /* reuse GL_RG16I */
    /* reuse GL_RG16UI */
    /* reuse GL_RG32I */
    /* reuse GL_RG32UI */
    /* Reuse tokens from ARB_vertex_array_object */
    /* reuse GL_VERTEX_ARRAY_BINDING */
    GL_CLAMP_VERTEX_COLOR             = 0x891A,
    GL_CLAMP_FRAGMENT_COLOR           = 0x891B,
    GL_ALPHA_INTEGER                  = 0x8D97,
    /* Reuse tokens from ARB_framebuffer_object */
    /* reuse GL_TEXTURE_LUMINANCE_TYPE */
    /* reuse GL_TEXTURE_INTENSITY_TYPE */
}

/* GL_VERSION_3_1 */
enum {
    GL_SAMPLER_2D_RECT                = 0x8B63,
    GL_SAMPLER_2D_RECT_SHADOW         = 0x8B64,
    GL_SAMPLER_BUFFER                 = 0x8DC2,
    GL_INT_SAMPLER_2D_RECT            = 0x8DCD,
    GL_INT_SAMPLER_BUFFER             = 0x8DD0,
    GL_UNSIGNED_INT_SAMPLER_2D_RECT   = 0x8DD5,
    GL_UNSIGNED_INT_SAMPLER_BUFFER    = 0x8DD8,
    GL_TEXTURE_BUFFER                 = 0x8C2A,
    GL_MAX_TEXTURE_BUFFER_SIZE        = 0x8C2B,
    GL_TEXTURE_BINDING_BUFFER         = 0x8C2C,
    GL_TEXTURE_BUFFER_DATA_STORE_BINDING = 0x8C2D,
    GL_TEXTURE_RECTANGLE              = 0x84F5,
    GL_TEXTURE_BINDING_RECTANGLE      = 0x84F6,
    GL_PROXY_TEXTURE_RECTANGLE        = 0x84F7,
    GL_MAX_RECTANGLE_TEXTURE_SIZE     = 0x84F8,
    GL_RED_SNORM                      = 0x8F90,
    GL_RG_SNORM                       = 0x8F91,
    GL_RGB_SNORM                      = 0x8F92,
    GL_RGBA_SNORM                     = 0x8F93,
    GL_R8_SNORM                       = 0x8F94,
    GL_RG8_SNORM                      = 0x8F95,
    GL_RGB8_SNORM                     = 0x8F96,
    GL_RGBA8_SNORM                    = 0x8F97,
    GL_R16_SNORM                      = 0x8F98,
    GL_RG16_SNORM                     = 0x8F99,
    GL_RGB16_SNORM                    = 0x8F9A,
    GL_RGBA16_SNORM                   = 0x8F9B,
    GL_SIGNED_NORMALIZED              = 0x8F9C,
    GL_PRIMITIVE_RESTART              = 0x8F9D,
    GL_PRIMITIVE_RESTART_INDEX        = 0x8F9E,
    /* Reuse tokens from ARB_copy_buffer */
    /* reuse GL_COPY_READ_BUFFER */
    /* reuse GL_COPY_WRITE_BUFFER */
    /* Reuse tokens from ARB_draw_instanced (none) */
    /* Reuse tokens from ARB_uniform_buffer_object */
    /* reuse GL_UNIFORM_BUFFER */
    /* reuse GL_UNIFORM_BUFFER_BINDING */
    /* reuse GL_UNIFORM_BUFFER_START */
    /* reuse GL_UNIFORM_BUFFER_SIZE */
    /* reuse GL_MAX_VERTEX_UNIFORM_BLOCKS */
    /* reuse GL_MAX_FRAGMENT_UNIFORM_BLOCKS */
    /* reuse GL_MAX_COMBINED_UNIFORM_BLOCKS */
    /* reuse GL_MAX_UNIFORM_BUFFER_BINDINGS */
    /* reuse GL_MAX_UNIFORM_BLOCK_SIZE */
    /* reuse GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS */
    /* reuse GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS */
    /* reuse GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT */
    /* reuse GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH */
    /* reuse GL_ACTIVE_UNIFORM_BLOCKS */
    /* reuse GL_UNIFORM_TYPE */
    /* reuse GL_UNIFORM_SIZE */
    /* reuse GL_UNIFORM_NAME_LENGTH */
    /* reuse GL_UNIFORM_BLOCK_INDEX */
    /* reuse GL_UNIFORM_OFFSET */
    /* reuse GL_UNIFORM_ARRAY_STRIDE */
    /* reuse GL_UNIFORM_MATRIX_STRIDE */
    /* reuse GL_UNIFORM_IS_ROW_MAJOR */
    /* reuse GL_UNIFORM_BLOCK_BINDING */
    /* reuse GL_UNIFORM_BLOCK_DATA_SIZE */
    /* reuse GL_UNIFORM_BLOCK_NAME_LENGTH */
    /* reuse GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS */
    /* reuse GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES */
    /* reuse GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER */
    /* reuse GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER */
    /* reuse GL_INVALID_INDEX */
}

/* GL_VERSION_3_2 */
enum {
    GL_CONTEXT_CORE_PROFILE_BIT       = 0x00000001,
    GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = 0x00000002,
    GL_LINES_ADJACENCY                = 0x000A,
    GL_LINE_STRIP_ADJACENCY           = 0x000B,
    GL_TRIANGLES_ADJACENCY            = 0x000C,
    GL_TRIANGLE_STRIP_ADJACENCY       = 0x000D,
    GL_PROGRAM_POINT_SIZE             = 0x8642,
    GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 0x8C29,
    GL_FRAMEBUFFER_ATTACHMENT_LAYERED = 0x8DA7,
    GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 0x8DA8,
    GL_GEOMETRY_SHADER                = 0x8DD9,
    GL_GEOMETRY_VERTICES_OUT          = 0x8916,
    GL_GEOMETRY_INPUT_TYPE            = 0x8917,
    GL_GEOMETRY_OUTPUT_TYPE           = 0x8918,
    GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = 0x8DDF,
    GL_MAX_GEOMETRY_OUTPUT_VERTICES   = 0x8DE0,
    GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 0x8DE1,
    GL_MAX_VERTEX_OUTPUT_COMPONENTS   = 0x9122,
    GL_MAX_GEOMETRY_INPUT_COMPONENTS  = 0x9123,
    GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = 0x9124,
    GL_MAX_FRAGMENT_INPUT_COMPONENTS  = 0x9125,
    GL_CONTEXT_PROFILE_MASK           = 0x9126,
    /* reuse GL_MAX_VARYING_COMPONENTS */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER */
    /* Reuse tokens from ARB_depth_clamp */
    /* reuse GL_DEPTH_CLAMP */
    /* Reuse tokens from ARB_draw_elements_base_vertex (none) */
    /* Reuse tokens from ARB_fragment_coord_conventions (none) */
    /* Reuse tokens from ARB_provoking_vertex */
    /* reuse GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION */
    /* reuse GL_FIRST_VERTEX_CONVENTION */
    /* reuse GL_LAST_VERTEX_CONVENTION */
    /* reuse GL_PROVOKING_VERTEX */
    /* Reuse tokens from ARB_seamless_cube_map */
    /* reuse GL_TEXTURE_CUBE_MAP_SEAMLESS */
    /* Reuse tokens from ARB_sync */
    /* reuse GL_MAX_SERVER_WAIT_TIMEOUT */
    /* reuse GL_OBJECT_TYPE */
    /* reuse GL_SYNC_CONDITION */
    /* reuse GL_SYNC_STATUS */
    /* reuse GL_SYNC_FLAGS */
    /* reuse GL_SYNC_FENCE */
    /* reuse GL_SYNC_GPU_COMMANDS_COMPLETE */
    /* reuse GL_UNSIGNALED */
    /* reuse GL_SIGNALED */
    /* reuse GL_ALREADY_SIGNALED */
    /* reuse GL_TIMEOUT_EXPIRED */
    /* reuse GL_CONDITION_SATISFIED */
    /* reuse GL_WAIT_FAILED */
    /* reuse GL_TIMEOUT_IGNORED */
    /* reuse GL_SYNC_FLUSH_COMMANDS_BIT */
    /* reuse GL_TIMEOUT_IGNORED */
    /* Reuse tokens from ARB_texture_multisample */
    /* reuse GL_SAMPLE_POSITION */
    /* reuse GL_SAMPLE_MASK */
    /* reuse GL_SAMPLE_MASK_VALUE */
    /* reuse GL_MAX_SAMPLE_MASK_WORDS */
    /* reuse GL_TEXTURE_2D_MULTISAMPLE */
    /* reuse GL_PROXY_TEXTURE_2D_MULTISAMPLE */
    /* reuse GL_TEXTURE_2D_MULTISAMPLE_ARRAY */
    /* reuse GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY */
    /* reuse GL_TEXTURE_BINDING_2D_MULTISAMPLE */
    /* reuse GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY */
    /* reuse GL_TEXTURE_SAMPLES */
    /* reuse GL_TEXTURE_FIXED_SAMPLE_LOCATIONS */
    /* reuse GL_SAMPLER_2D_MULTISAMPLE */
    /* reuse GL_INT_SAMPLER_2D_MULTISAMPLE */
    /* reuse GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE */
    /* reuse GL_SAMPLER_2D_MULTISAMPLE_ARRAY */
    /* reuse GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY */
    /* reuse GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY */
    /* reuse GL_MAX_COLOR_TEXTURE_SAMPLES */
    /* reuse GL_MAX_DEPTH_TEXTURE_SAMPLES */
    /* reuse GL_MAX_INTEGER_SAMPLES */
    /* Don't need to reuse tokens from ARB_vertex_array_bgra since they're already in 1.2 core */
}

/* GL_VERSION_3_3 */
enum {
    GL_VERTEX_ATTRIB_ARRAY_DIVISOR    = 0x88FE,
    /* Reuse tokens from ARB_blend_func_extended */
    /* reuse GL_SRC1_COLOR */
    /* reuse GL_ONE_MINUS_SRC1_COLOR */
    /* reuse GL_ONE_MINUS_SRC1_ALPHA */
    /* reuse GL_MAX_DUAL_SOURCE_DRAW_BUFFERS */
    /* Reuse tokens from ARB_explicit_attrib_location (none) */
    /* Reuse tokens from ARB_occlusion_query2 */
    /* reuse GL_ANY_SAMPLES_PASSED */
    /* Reuse tokens from ARB_sampler_objects */
    /* reuse GL_SAMPLER_BINDING */
    /* Reuse tokens from ARB_shader_bit_encoding (none) */
    /* Reuse tokens from ARB_texture_rgb10_a2ui */
    /* reuse GL_RGB10_A2UI */
    /* Reuse tokens from ARB_texture_swizzle */
    /* reuse GL_TEXTURE_SWIZZLE_R */
    /* reuse GL_TEXTURE_SWIZZLE_G */
    /* reuse GL_TEXTURE_SWIZZLE_B */
    /* reuse GL_TEXTURE_SWIZZLE_A */
    /* reuse GL_TEXTURE_SWIZZLE_RGBA */
    /* Reuse tokens from ARB_timer_query */
    /* reuse GL_TIME_ELAPSED */
    /* reuse GL_TIMESTAMP */
    /* Reuse tokens from ARB_vertex_type_2_10_10_10_rev */
    /* reuse GL_INT_2_10_10_10_REV */
}

/* GL_VERSION_4_0 */
enum {
    GL_SAMPLE_SHADING                 = 0x8C36,
    GL_MIN_SAMPLE_SHADING_VALUE       = 0x8C37,
    GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5E,
    GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5F,
    GL_TEXTURE_CUBE_MAP_ARRAY         = 0x9009,
    GL_TEXTURE_BINDING_CUBE_MAP_ARRAY = 0x900A,
    GL_PROXY_TEXTURE_CUBE_MAP_ARRAY   = 0x900B,
    GL_SAMPLER_CUBE_MAP_ARRAY         = 0x900C,
    GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW  = 0x900D,
    GL_INT_SAMPLER_CUBE_MAP_ARRAY     = 0x900E,
    GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900F,
    /* Reuse tokens from ARB_texture_query_lod (none) */
    /* Reuse tokens from ARB_draw_buffers_blend (none) */
    /* Reuse tokens from ARB_draw_indirect */
    /* reuse GL_DRAW_INDIRECT_BUFFER */
    /* reuse GL_DRAW_INDIRECT_BUFFER_BINDING */
    /* Reuse tokens from ARB_gpu_shader5 */
    /* reuse GL_GEOMETRY_SHADER_INVOCATIONS */
    /* reuse GL_MAX_GEOMETRY_SHADER_INVOCATIONS */
    /* reuse GL_MIN_FRAGMENT_INTERPOLATION_OFFSET */
    /* reuse GL_MAX_FRAGMENT_INTERPOLATION_OFFSET */
    /* reuse GL_FRAGMENT_INTERPOLATION_OFFSET_BITS */
    /* reuse GL_MAX_VERTEX_STREAMS */
    /* Reuse tokens from ARB_gpu_shader_fp64 */
    /* reuse GL_DOUBLE_VEC2 */
    /* reuse GL_DOUBLE_VEC3 */
    /* reuse GL_DOUBLE_VEC4 */
    /* reuse GL_DOUBLE_MAT2 */
    /* reuse GL_DOUBLE_MAT3 */
    /* reuse GL_DOUBLE_MAT4 */
    /* reuse GL_DOUBLE_MAT2x3 */
    /* reuse GL_DOUBLE_MAT2x4 */
    /* reuse GL_DOUBLE_MAT3x2 */
    /* reuse GL_DOUBLE_MAT3x4 */
    /* reuse GL_DOUBLE_MAT4x2 */
    /* reuse GL_DOUBLE_MAT4x3 */
    /* Reuse tokens from ARB_shader_subroutine */
    /* reuse GL_ACTIVE_SUBROUTINES */
    /* reuse GL_ACTIVE_SUBROUTINE_UNIFORMS */
    /* reuse GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS */
    /* reuse GL_ACTIVE_SUBROUTINE_MAX_LENGTH */
    /* reuse GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH */
    /* reuse GL_MAX_SUBROUTINES */
    /* reuse GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS */
    /* reuse GL_NUM_COMPATIBLE_SUBROUTINES */
    /* reuse GL_COMPATIBLE_SUBROUTINES */
    /* Reuse tokens from ARB_tessellation_shader */
    /* reuse GL_PATCHES */
    /* reuse GL_PATCH_VERTICES */
    /* reuse GL_PATCH_DEFAULT_INNER_LEVEL */
    /* reuse GL_PATCH_DEFAULT_OUTER_LEVEL */
    /* reuse GL_TESS_CONTROL_OUTPUT_VERTICES */
    /* reuse GL_TESS_GEN_MODE */
    /* reuse GL_TESS_GEN_SPACING */
    /* reuse GL_TESS_GEN_VERTEX_ORDER */
    /* reuse GL_TESS_GEN_POINT_MODE */
    /* reuse GL_ISOLINES */
    /* reuse GL_FRACTIONAL_ODD */
    /* reuse GL_FRACTIONAL_EVEN */
    /* reuse GL_MAX_PATCH_VERTICES */
    /* reuse GL_MAX_TESS_GEN_LEVEL */
    /* reuse GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS */
    /* reuse GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS */
    /* reuse GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS */
    /* reuse GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS */
    /* reuse GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS */
    /* reuse GL_MAX_TESS_PATCH_COMPONENTS */
    /* reuse GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS */
    /* reuse GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS */
    /* reuse GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS */
    /* reuse GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS */
    /* reuse GL_MAX_TESS_CONTROL_INPUT_COMPONENTS */
    /* reuse GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS */
    /* reuse GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS */
    /* reuse GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS */
    /* reuse GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER */
    /* reuse GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER */
    /* reuse GL_TESS_EVALUATION_SHADER */
    /* reuse GL_TESS_CONTROL_SHADER */
    /* Reuse tokens from ARB_texture_buffer_object_rgb32 (none) */
    /* Reuse tokens from ARB_transform_feedback2 */
    /* reuse GL_TRANSFORM_FEEDBACK */
    /* reuse GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED */
    /* reuse GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE */
    /* reuse GL_TRANSFORM_FEEDBACK_BINDING */
    /* Reuse tokens from ARB_transform_feedback3 */
    /* reuse GL_MAX_TRANSFORM_FEEDBACK_BUFFERS */
    /* reuse GL_MAX_VERTEX_STREAMS */
}

/* GL_VERSION_4_1 */
/* Reuse tokens from ARB_ES2_compatibility */
/* reuse GL_FIXED */
/* reuse GL_IMPLEMENTATION_COLOR_READ_TYPE */
/* reuse GL_IMPLEMENTATION_COLOR_READ_FORMAT */
/* reuse GL_LOW_FLOAT */
/* reuse GL_MEDIUM_FLOAT */
/* reuse GL_HIGH_FLOAT */
/* reuse GL_LOW_INT */
/* reuse GL_MEDIUM_INT */
/* reuse GL_HIGH_INT */
/* reuse GL_SHADER_COMPILER */
/* reuse GL_SHADER_BINARY_FORMATS */
/* reuse GL_NUM_SHADER_BINARY_FORMATS */
/* reuse GL_MAX_VERTEX_UNIFORM_VECTORS */
/* reuse GL_MAX_VARYING_VECTORS */
/* reuse GL_MAX_FRAGMENT_UNIFORM_VECTORS */
/* reuse GL_RGB565 */
/* Reuse tokens from ARB_get_program_binary */
/* reuse GL_PROGRAM_BINARY_RETRIEVABLE_HINT */
/* reuse GL_PROGRAM_BINARY_LENGTH */
/* reuse GL_NUM_PROGRAM_BINARY_FORMATS */
/* reuse GL_PROGRAM_BINARY_FORMATS */
/* Reuse tokens from ARB_separate_shader_objects */
/* reuse GL_VERTEX_SHADER_BIT */
/* reuse GL_FRAGMENT_SHADER_BIT */
/* reuse GL_GEOMETRY_SHADER_BIT */
/* reuse GL_TESS_CONTROL_SHADER_BIT */
/* reuse GL_TESS_EVALUATION_SHADER_BIT */
/* reuse GL_ALL_SHADER_BITS */
/* reuse GL_PROGRAM_SEPARABLE */
/* reuse GL_ACTIVE_PROGRAM */
/* reuse GL_PROGRAM_PIPELINE_BINDING */
/* Reuse tokens from ARB_shader_precision (none) */
/* Reuse tokens from ARB_vertex_attrib_64bit - all are in GL 3.0 and 4.0 already */
/* Reuse tokens from ARB_viewport_array - some are in GL 1.1 and ARB_provoking_vertex already */
/* reuse GL_MAX_VIEWPORTS */
/* reuse GL_VIEWPORT_SUBPIXEL_BITS */
/* reuse GL_VIEWPORT_BOUNDS_RANGE */
/* reuse GL_LAYER_PROVOKING_VERTEX */
/* reuse GL_VIEWPORT_INDEX_PROVOKING_VERTEX */
/* reuse GL_UNDEFINED_VERTEX */

/* GL_VERSION_4_2 */
/* Reuse tokens from ARB_base_instance (none) */
/* Reuse tokens from ARB_shading_language_420pack (none) */
/* Reuse tokens from ARB_transform_feedback_instanced (none) */
/* Reuse tokens from ARB_compressed_texture_pixel_storage */
/* reuse GL_UNPACK_COMPRESSED_BLOCK_WIDTH */
/* reuse GL_UNPACK_COMPRESSED_BLOCK_HEIGHT */
/* reuse GL_UNPACK_COMPRESSED_BLOCK_DEPTH */
/* reuse GL_UNPACK_COMPRESSED_BLOCK_SIZE */
/* reuse GL_PACK_COMPRESSED_BLOCK_WIDTH */
/* reuse GL_PACK_COMPRESSED_BLOCK_HEIGHT */
/* reuse GL_PACK_COMPRESSED_BLOCK_DEPTH */
/* reuse GL_PACK_COMPRESSED_BLOCK_SIZE */
/* Reuse tokens from ARB_conservative_depth (none) */
/* Reuse tokens from ARB_internalformat_query */
/* reuse GL_NUM_SAMPLE_COUNTS */
/* Reuse tokens from ARB_map_buffer_alignment */
/* reuse GL_MIN_MAP_BUFFER_ALIGNMENT */
/* Reuse tokens from ARB_shader_atomic_counters */
/* reuse GL_ATOMIC_COUNTER_BUFFER */
/* reuse GL_ATOMIC_COUNTER_BUFFER_BINDING */
/* reuse GL_ATOMIC_COUNTER_BUFFER_START */
/* reuse GL_ATOMIC_COUNTER_BUFFER_SIZE */
/* reuse GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE */
/* reuse GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS */
/* reuse GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES */
/* reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER */
/* reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER */
/* reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER */
/* reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER */
/* reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER */
/* reuse GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS */
/* reuse GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS */
/* reuse GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS */
/* reuse GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS */
/* reuse GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS */
/* reuse GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS */
/* reuse GL_MAX_VERTEX_ATOMIC_COUNTERS */
/* reuse GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS */
/* reuse GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS */
/* reuse GL_MAX_GEOMETRY_ATOMIC_COUNTERS */
/* reuse GL_MAX_FRAGMENT_ATOMIC_COUNTERS */
/* reuse GL_MAX_COMBINED_ATOMIC_COUNTERS */
/* reuse GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE */
/* reuse GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS */
/* reuse GL_ACTIVE_ATOMIC_COUNTER_BUFFERS */
/* reuse GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX */
/* reuse GL_UNSIGNED_INT_ATOMIC_COUNTER */
/* Reuse tokens from ARB_shader_image_load_store */
/* reuse GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT */
/* reuse GL_ELEMENT_ARRAY_BARRIER_BIT */
/* reuse GL_UNIFORM_BARRIER_BIT */
/* reuse GL_TEXTURE_FETCH_BARRIER_BIT */
/* reuse GL_SHADER_IMAGE_ACCESS_BARRIER_BIT */
/* reuse GL_COMMAND_BARRIER_BIT */
/* reuse GL_PIXEL_BUFFER_BARRIER_BIT */
/* reuse GL_TEXTURE_UPDATE_BARRIER_BIT */
/* reuse GL_BUFFER_UPDATE_BARRIER_BIT */
/* reuse GL_FRAMEBUFFER_BARRIER_BIT */
/* reuse GL_TRANSFORM_FEEDBACK_BARRIER_BIT */
/* reuse GL_ATOMIC_COUNTER_BARRIER_BIT */
/* reuse GL_ALL_BARRIER_BITS */
/* reuse GL_MAX_IMAGE_UNITS */
/* reuse GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS */
/* reuse GL_IMAGE_BINDING_NAME */
/* reuse GL_IMAGE_BINDING_LEVEL */
/* reuse GL_IMAGE_BINDING_LAYERED */
/* reuse GL_IMAGE_BINDING_LAYER */
/* reuse GL_IMAGE_BINDING_ACCESS */
/* reuse GL_IMAGE_1D */
/* reuse GL_IMAGE_2D */
/* reuse GL_IMAGE_3D */
/* reuse GL_IMAGE_2D_RECT */
/* reuse GL_IMAGE_CUBE */
/* reuse GL_IMAGE_BUFFER */
/* reuse GL_IMAGE_1D_ARRAY */
/* reuse GL_IMAGE_2D_ARRAY */
/* reuse GL_IMAGE_CUBE_MAP_ARRAY */
/* reuse GL_IMAGE_2D_MULTISAMPLE */
/* reuse GL_IMAGE_2D_MULTISAMPLE_ARRAY */
/* reuse GL_INT_IMAGE_1D */
/* reuse GL_INT_IMAGE_2D */
/* reuse GL_INT_IMAGE_3D */
/* reuse GL_INT_IMAGE_2D_RECT */
/* reuse GL_INT_IMAGE_CUBE */
/* reuse GL_INT_IMAGE_BUFFER */
/* reuse GL_INT_IMAGE_1D_ARRAY */
/* reuse GL_INT_IMAGE_2D_ARRAY */
/* reuse GL_INT_IMAGE_CUBE_MAP_ARRAY */
/* reuse GL_INT_IMAGE_2D_MULTISAMPLE */
/* reuse GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY */
/* reuse GL_UNSIGNED_INT_IMAGE_1D */
/* reuse GL_UNSIGNED_INT_IMAGE_2D */
/* reuse GL_UNSIGNED_INT_IMAGE_3D */
/* reuse GL_UNSIGNED_INT_IMAGE_2D_RECT */
/* reuse GL_UNSIGNED_INT_IMAGE_CUBE */
/* reuse GL_UNSIGNED_INT_IMAGE_BUFFER */
/* reuse GL_UNSIGNED_INT_IMAGE_1D_ARRAY */
/* reuse GL_UNSIGNED_INT_IMAGE_2D_ARRAY */
/* reuse GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY */
/* reuse GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE */
/* reuse GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY */
/* reuse GL_MAX_IMAGE_SAMPLES */
/* reuse GL_IMAGE_BINDING_FORMAT */
/* reuse GL_IMAGE_FORMAT_COMPATIBILITY_TYPE */
/* reuse GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE */
/* reuse GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS */
/* reuse GL_MAX_VERTEX_IMAGE_UNIFORMS */
/* reuse GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS */
/* reuse GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS */
/* reuse GL_MAX_GEOMETRY_IMAGE_UNIFORMS */
/* reuse GL_MAX_FRAGMENT_IMAGE_UNIFORMS */
/* reuse GL_MAX_COMBINED_IMAGE_UNIFORMS */
/* Reuse tokens from ARB_shading_language_packing (none) */
/* Reuse tokens from ARB_texture_storage */
/* reuse GL_TEXTURE_IMMUTABLE_FORMAT */

/* GL_VERSION_4_3 */
enum {
    GL_NUM_SHADING_LANGUAGE_VERSIONS  = 0x82E9,
    GL_VERTEX_ATTRIB_ARRAY_LONG       = 0x874E,
    /* Reuse tokens from ARB_arrays_of_arrays (none, GLSL only) */
    /* Reuse tokens from ARB_fragment_layer_viewport (none, GLSL only) */
    /* Reuse tokens from ARB_shader_image_size (none, GLSL only) */
    /* Reuse tokens from ARB_ES3_compatibility */
    /* reuse GL_COMPRESSED_RGB8_ETC2 */
    /* reuse GL_COMPRESSED_SRGB8_ETC2 */
    /* reuse GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 */
    /* reuse GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 */
    /* reuse GL_COMPRESSED_RGBA8_ETC2_EAC */
    /* reuse GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC */
    /* reuse GL_COMPRESSED_R11_EAC */
    /* reuse GL_COMPRESSED_SIGNED_R11_EAC */
    /* reuse GL_COMPRESSED_RG11_EAC */
    /* reuse GL_COMPRESSED_SIGNED_RG11_EAC */
    /* reuse GL_PRIMITIVE_RESTART_FIXED_INDEX */
    /* reuse GL_ANY_SAMPLES_PASSED_CONSERVATIVE */
    /* reuse GL_MAX_ELEMENT_INDEX */
    /* Reuse tokens from ARB_clear_buffer_object (none) */
    /* Reuse tokens from ARB_compute_shader */
    /* reuse GL_COMPUTE_SHADER */
    /* reuse GL_MAX_COMPUTE_UNIFORM_BLOCKS */
    /* reuse GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS */
    /* reuse GL_MAX_COMPUTE_IMAGE_UNIFORMS */
    /* reuse GL_MAX_COMPUTE_SHARED_MEMORY_SIZE */
    /* reuse GL_MAX_COMPUTE_UNIFORM_COMPONENTS */
    /* reuse GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS */
    /* reuse GL_MAX_COMPUTE_ATOMIC_COUNTERS */
    /* reuse GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS */
    /* reuse GL_MAX_COMPUTE_LOCAL_INVOCATIONS */
    /* reuse GL_MAX_COMPUTE_WORK_GROUP_COUNT */
    /* reuse GL_MAX_COMPUTE_WORK_GROUP_SIZE */
    /* reuse GL_COMPUTE_LOCAL_WORK_SIZE */
    /* reuse GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER */
    /* reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER */
    /* reuse GL_DISPATCH_INDIRECT_BUFFER */
    /* reuse GL_DISPATCH_INDIRECT_BUFFER_BINDING */
    /* Reuse tokens from ARB_copy_image (none) */
    /* Reuse tokens from KHR_debug */
    /* reuse GL_DEBUG_OUTPUT_SYNCHRONOUS */
    /* reuse GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH */
    /* reuse GL_DEBUG_CALLBACK_FUNCTION */
    /* reuse GL_DEBUG_CALLBACK_USER_PARAM */
    /* reuse GL_DEBUG_SOURCE_API */
    /* reuse GL_DEBUG_SOURCE_WINDOW_SYSTEM */
    /* reuse GL_DEBUG_SOURCE_SHADER_COMPILER */
    /* reuse GL_DEBUG_SOURCE_THIRD_PARTY */
    /* reuse GL_DEBUG_SOURCE_APPLICATION */
    /* reuse GL_DEBUG_SOURCE_OTHER */
    /* reuse GL_DEBUG_TYPE_ERROR */
    /* reuse GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR */
    /* reuse GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR */
    /* reuse GL_DEBUG_TYPE_PORTABILITY */
    /* reuse GL_DEBUG_TYPE_PERFORMANCE */
    /* reuse GL_DEBUG_TYPE_OTHER */
    /* reuse GL_MAX_DEBUG_MESSAGE_LENGTH */
    /* reuse GL_MAX_DEBUG_LOGGED_MESSAGES */
    /* reuse GL_DEBUG_LOGGED_MESSAGES */
    /* reuse GL_DEBUG_SEVERITY_HIGH */
    /* reuse GL_DEBUG_SEVERITY_MEDIUM */
    /* reuse GL_DEBUG_SEVERITY_LOW */
    /* reuse GL_DEBUG_TYPE_MARKER */
    /* reuse GL_DEBUG_TYPE_PUSH_GROUP */
    /* reuse GL_DEBUG_TYPE_POP_GROUP */
    /* reuse GL_DEBUG_SEVERITY_NOTIFICATION */
    /* reuse GL_MAX_DEBUG_GROUP_STACK_DEPTH */
    /* reuse GL_DEBUG_GROUP_STACK_DEPTH */
    /* reuse GL_BUFFER */
    /* reuse GL_SHADER */
    /* reuse GL_PROGRAM */
    /* reuse GL_QUERY */
    /* reuse GL_PROGRAM_PIPELINE */
    /* reuse GL_SAMPLER */
    /* reuse GL_DISPLAY_LIST */
    /* reuse GL_MAX_LABEL_LENGTH */
    /* reuse GL_DEBUG_OUTPUT */
    /* reuse GL_CONTEXT_FLAG_DEBUG_BIT */
    /* reuse GL_STACK_UNDERFLOW */
    /* reuse GL_STACK_OVERFLOW */
    /* Reuse tokens from ARB_explicit_uniform_location */
    /* reuse GL_MAX_UNIFORM_LOCATIONS */
    /* Reuse tokens from ARB_framebuffer_no_attachments */
    /* reuse GL_FRAMEBUFFER_DEFAULT_WIDTH */
    /* reuse GL_FRAMEBUFFER_DEFAULT_HEIGHT */
    /* reuse GL_FRAMEBUFFER_DEFAULT_LAYERS */
    /* reuse GL_FRAMEBUFFER_DEFAULT_SAMPLES */
    /* reuse GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS */
    /* reuse GL_MAX_FRAMEBUFFER_WIDTH */
    /* reuse GL_MAX_FRAMEBUFFER_HEIGHT */
    /* reuse GL_MAX_FRAMEBUFFER_LAYERS */
    /* reuse GL_MAX_FRAMEBUFFER_SAMPLES */
    /* Reuse tokens from ARB_internalformat_query2 */
    /* reuse GL_INTERNALFORMAT_SUPPORTED */
    /* reuse GL_INTERNALFORMAT_PREFERRED */
    /* reuse GL_INTERNALFORMAT_RED_SIZE */
    /* reuse GL_INTERNALFORMAT_GREEN_SIZE */
    /* reuse GL_INTERNALFORMAT_BLUE_SIZE */
    /* reuse GL_INTERNALFORMAT_ALPHA_SIZE */
    /* reuse GL_INTERNALFORMAT_DEPTH_SIZE */
    /* reuse GL_INTERNALFORMAT_STENCIL_SIZE */
    /* reuse GL_INTERNALFORMAT_SHARED_SIZE */
    /* reuse GL_INTERNALFORMAT_RED_TYPE */
    /* reuse GL_INTERNALFORMAT_GREEN_TYPE */
    /* reuse GL_INTERNALFORMAT_BLUE_TYPE */
    /* reuse GL_INTERNALFORMAT_ALPHA_TYPE */
    /* reuse GL_INTERNALFORMAT_DEPTH_TYPE */
    /* reuse GL_INTERNALFORMAT_STENCIL_TYPE */
    /* reuse GL_MAX_WIDTH */
    /* reuse GL_MAX_HEIGHT */
    /* reuse GL_MAX_DEPTH */
    /* reuse GL_MAX_LAYERS */
    /* reuse GL_MAX_COMBINED_DIMENSIONS */
    /* reuse GL_COLOR_COMPONENTS */
    /* reuse GL_DEPTH_COMPONENTS */
    /* reuse GL_STENCIL_COMPONENTS */
    /* reuse GL_COLOR_RENDERABLE */
    /* reuse GL_DEPTH_RENDERABLE */
    /* reuse GL_STENCIL_RENDERABLE */
    /* reuse GL_FRAMEBUFFER_RENDERABLE */
    /* reuse GL_FRAMEBUFFER_RENDERABLE_LAYERED */
    /* reuse GL_FRAMEBUFFER_BLEND */
    /* reuse GL_READ_PIXELS */
    /* reuse GL_READ_PIXELS_FORMAT */
    /* reuse GL_READ_PIXELS_TYPE */
    /* reuse GL_TEXTURE_IMAGE_FORMAT */
    /* reuse GL_TEXTURE_IMAGE_TYPE */
    /* reuse GL_GET_TEXTURE_IMAGE_FORMAT */
    /* reuse GL_GET_TEXTURE_IMAGE_TYPE */
    /* reuse GL_MIPMAP */
    /* reuse GL_MANUAL_GENERATE_MIPMAP */
    /* reuse GL_AUTO_GENERATE_MIPMAP */
    /* reuse GL_COLOR_ENCODING */
    /* reuse GL_SRGB_READ */
    /* reuse GL_SRGB_WRITE */
    /* reuse GL_FILTER */
    /* reuse GL_VERTEX_TEXTURE */
    /* reuse GL_TESS_CONTROL_TEXTURE */
    /* reuse GL_TESS_EVALUATION_TEXTURE */
    /* reuse GL_GEOMETRY_TEXTURE */
    /* reuse GL_FRAGMENT_TEXTURE */
    /* reuse GL_COMPUTE_TEXTURE */
    /* reuse GL_TEXTURE_SHADOW */
    /* reuse GL_TEXTURE_GATHER */
    /* reuse GL_TEXTURE_GATHER_SHADOW */
    /* reuse GL_SHADER_IMAGE_LOAD */
    /* reuse GL_SHADER_IMAGE_STORE */
    /* reuse GL_SHADER_IMAGE_ATOMIC */
    /* reuse GL_IMAGE_TEXEL_SIZE */
    /* reuse GL_IMAGE_COMPATIBILITY_CLASS */
    /* reuse GL_IMAGE_PIXEL_FORMAT */
    /* reuse GL_IMAGE_PIXEL_TYPE */
    /* reuse GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST */
    /* reuse GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST */
    /* reuse GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE */
    /* reuse GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE */
    /* reuse GL_TEXTURE_COMPRESSED_BLOCK_WIDTH */
    /* reuse GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT */
    /* reuse GL_TEXTURE_COMPRESSED_BLOCK_SIZE */
    /* reuse GL_CLEAR_BUFFER */
    /* reuse GL_TEXTURE_VIEW */
    /* reuse GL_VIEW_COMPATIBILITY_CLASS */
    /* reuse GL_FULL_SUPPORT */
    /* reuse GL_CAVEAT_SUPPORT */
    /* reuse GL_IMAGE_CLASS_4_X_32 */
    /* reuse GL_IMAGE_CLASS_2_X_32 */
    /* reuse GL_IMAGE_CLASS_1_X_32 */
    /* reuse GL_IMAGE_CLASS_4_X_16 */
    /* reuse GL_IMAGE_CLASS_2_X_16 */
    /* reuse GL_IMAGE_CLASS_1_X_16 */
    /* reuse GL_IMAGE_CLASS_4_X_8 */
    /* reuse GL_IMAGE_CLASS_2_X_8 */
    /* reuse GL_IMAGE_CLASS_1_X_8 */
    /* reuse GL_IMAGE_CLASS_11_11_10 */
    /* reuse GL_IMAGE_CLASS_10_10_10_2 */
    /* reuse GL_VIEW_CLASS_128_BITS */
    /* reuse GL_VIEW_CLASS_96_BITS */
    /* reuse GL_VIEW_CLASS_64_BITS */
    /* reuse GL_VIEW_CLASS_48_BITS */
    /* reuse GL_VIEW_CLASS_32_BITS */
    /* reuse GL_VIEW_CLASS_24_BITS */
    /* reuse GL_VIEW_CLASS_16_BITS */
    /* reuse GL_VIEW_CLASS_8_BITS */
    /* reuse GL_VIEW_CLASS_S3TC_DXT1_RGB */
    /* reuse GL_VIEW_CLASS_S3TC_DXT1_RGBA */
    /* reuse GL_VIEW_CLASS_S3TC_DXT3_RGBA */
    /* reuse GL_VIEW_CLASS_S3TC_DXT5_RGBA */
    /* reuse GL_VIEW_CLASS_RGTC1_RED */
    /* reuse GL_VIEW_CLASS_RGTC2_RG */
    /* reuse GL_VIEW_CLASS_BPTC_UNORM */
    /* reuse GL_VIEW_CLASS_BPTC_FLOAT */
    /* Reuse tokens from ARB_invalidate_subdata (none) */
    /* Reuse tokens from ARB_multi_draw_indirect (none) */
    /* Reuse tokens from ARB_program_interface_query */
    /* reuse GL_UNIFORM */
    /* reuse GL_UNIFORM_BLOCK */
    /* reuse GL_PROGRAM_INPUT */
    /* reuse GL_PROGRAM_OUTPUT */
    /* reuse GL_BUFFER_VARIABLE */
    /* reuse GL_SHADER_STORAGE_BLOCK */
    /* reuse GL_VERTEX_SUBROUTINE */
    /* reuse GL_TESS_CONTROL_SUBROUTINE */
    /* reuse GL_TESS_EVALUATION_SUBROUTINE */
    /* reuse GL_GEOMETRY_SUBROUTINE */
    /* reuse GL_FRAGMENT_SUBROUTINE */
    /* reuse GL_COMPUTE_SUBROUTINE */
    /* reuse GL_VERTEX_SUBROUTINE_UNIFORM */
    /* reuse GL_TESS_CONTROL_SUBROUTINE_UNIFORM */
    /* reuse GL_TESS_EVALUATION_SUBROUTINE_UNIFORM */
    /* reuse GL_GEOMETRY_SUBROUTINE_UNIFORM */
    /* reuse GL_FRAGMENT_SUBROUTINE_UNIFORM */
    /* reuse GL_COMPUTE_SUBROUTINE_UNIFORM */
    /* reuse GL_TRANSFORM_FEEDBACK_VARYING */
    /* reuse GL_ACTIVE_RESOURCES */
    /* reuse GL_MAX_NAME_LENGTH */
    /* reuse GL_MAX_NUM_ACTIVE_VARIABLES */
    /* reuse GL_MAX_NUM_COMPATIBLE_SUBROUTINES */
    /* reuse GL_NAME_LENGTH */
    /* reuse GL_TYPE */
    /* reuse GL_ARRAY_SIZE */
    /* reuse GL_OFFSET */
    /* reuse GL_BLOCK_INDEX */
    /* reuse GL_ARRAY_STRIDE */
    /* reuse GL_MATRIX_STRIDE */
    /* reuse GL_IS_ROW_MAJOR */
    /* reuse GL_ATOMIC_COUNTER_BUFFER_INDEX */
    /* reuse GL_BUFFER_BINDING */
    /* reuse GL_BUFFER_DATA_SIZE */
    /* reuse GL_NUM_ACTIVE_VARIABLES */
    /* reuse GL_ACTIVE_VARIABLES */
    /* reuse GL_REFERENCED_BY_VERTEX_SHADER */
    /* reuse GL_REFERENCED_BY_TESS_CONTROL_SHADER */
    /* reuse GL_REFERENCED_BY_TESS_EVALUATION_SHADER */
    /* reuse GL_REFERENCED_BY_GEOMETRY_SHADER */
    /* reuse GL_REFERENCED_BY_FRAGMENT_SHADER */
    /* reuse GL_REFERENCED_BY_COMPUTE_SHADER */
    /* reuse GL_TOP_LEVEL_ARRAY_SIZE */
    /* reuse GL_TOP_LEVEL_ARRAY_STRIDE */
    /* reuse GL_LOCATION */
    /* reuse GL_LOCATION_INDEX */
    /* reuse GL_IS_PER_PATCH */
    /* Reuse tokens from ARB_robust_buffer_access_behavior (none) */
    /* Reuse tokens from ARB_shader_storage_buffer_object */
    /* reuse GL_SHADER_STORAGE_BUFFER */
    /* reuse GL_SHADER_STORAGE_BUFFER_BINDING */
    /* reuse GL_SHADER_STORAGE_BUFFER_START */
    /* reuse GL_SHADER_STORAGE_BUFFER_SIZE */
    /* reuse GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS */
    /* reuse GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS */
    /* reuse GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS */
    /* reuse GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS */
    /* reuse GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS */
    /* reuse GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS */
    /* reuse GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS */
    /* reuse GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS */
    /* reuse GL_MAX_SHADER_STORAGE_BLOCK_SIZE */
    /* reuse GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT */
    /* reuse GL_SHADER_STORAGE_BARRIER_BIT */
    /* reuse GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES */
    /* Reuse tokens from ARB_stencil_texturing */
    /* reuse GL_DEPTH_STENCIL_TEXTURE_MODE */
    /* Reuse tokens from ARB_texture_buffer_range */
    /* reuse GL_TEXTURE_BUFFER_OFFSET */
    /* reuse GL_TEXTURE_BUFFER_SIZE */
    /* reuse GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT */
    /* Reuse tokens from ARB_texture_query_levels (none) */
    /* Reuse tokens from ARB_texture_storage_multisample (none) */
    /* Reuse tokens from ARB_texture_view */
    /* reuse GL_TEXTURE_VIEW_MIN_LEVEL */
    /* reuse GL_TEXTURE_VIEW_NUM_LEVELS */
    /* reuse GL_TEXTURE_VIEW_MIN_LAYER */
    /* reuse GL_TEXTURE_VIEW_NUM_LAYERS */
    /* reuse GL_TEXTURE_IMMUTABLE_LEVELS */
    /* Reuse tokens from ARB_vertex_attrib_binding */
    /* reuse GL_VERTEX_ATTRIB_BINDING */
    /* reuse GL_VERTEX_ATTRIB_RELATIVE_OFFSET */
    /* reuse GL_VERTEX_BINDING_DIVISOR */
    /* reuse GL_VERTEX_BINDING_OFFSET */
    /* reuse GL_VERTEX_BINDING_STRIDE */
    /* reuse GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET */
    /* reuse GL_MAX_VERTEX_ATTRIB_BINDINGS */
}

/* GL_ARB_multitexture */
enum {
    GL_TEXTURE0_ARB                   = 0x84C0,
    GL_TEXTURE1_ARB                   = 0x84C1,
    GL_TEXTURE2_ARB                   = 0x84C2,
    GL_TEXTURE3_ARB                   = 0x84C3,
    GL_TEXTURE4_ARB                   = 0x84C4,
    GL_TEXTURE5_ARB                   = 0x84C5,
    GL_TEXTURE6_ARB                   = 0x84C6,
    GL_TEXTURE7_ARB                   = 0x84C7,
    GL_TEXTURE8_ARB                   = 0x84C8,
    GL_TEXTURE9_ARB                   = 0x84C9,
    GL_TEXTURE10_ARB                  = 0x84CA,
    GL_TEXTURE11_ARB                  = 0x84CB,
    GL_TEXTURE12_ARB                  = 0x84CC,
    GL_TEXTURE13_ARB                  = 0x84CD,
    GL_TEXTURE14_ARB                  = 0x84CE,
    GL_TEXTURE15_ARB                  = 0x84CF,
    GL_TEXTURE16_ARB                  = 0x84D0,
    GL_TEXTURE17_ARB                  = 0x84D1,
    GL_TEXTURE18_ARB                  = 0x84D2,
    GL_TEXTURE19_ARB                  = 0x84D3,
    GL_TEXTURE20_ARB                  = 0x84D4,
    GL_TEXTURE21_ARB                  = 0x84D5,
    GL_TEXTURE22_ARB                  = 0x84D6,
    GL_TEXTURE23_ARB                  = 0x84D7,
    GL_TEXTURE24_ARB                  = 0x84D8,
    GL_TEXTURE25_ARB                  = 0x84D9,
    GL_TEXTURE26_ARB                  = 0x84DA,
    GL_TEXTURE27_ARB                  = 0x84DB,
    GL_TEXTURE28_ARB                  = 0x84DC,
    GL_TEXTURE29_ARB                  = 0x84DD,
    GL_TEXTURE30_ARB                  = 0x84DE,
    GL_TEXTURE31_ARB                  = 0x84DF,
    GL_ACTIVE_TEXTURE_ARB             = 0x84E0,
    GL_CLIENT_ACTIVE_TEXTURE_ARB      = 0x84E1,
    GL_MAX_TEXTURE_UNITS_ARB          = 0x84E2,
}

/* GL_ARB_transpose_matrix */
enum {
    GL_TRANSPOSE_MODELVIEW_MATRIX_ARB = 0x84E3,
    GL_TRANSPOSE_PROJECTION_MATRIX_ARB = 0x84E4,
    GL_TRANSPOSE_TEXTURE_MATRIX_ARB   = 0x84E5,
    GL_TRANSPOSE_COLOR_MATRIX_ARB     = 0x84E6,
}

/* GL_ARB_multisample */
enum {
    GL_MULTISAMPLE_ARB                = 0x809D,
    GL_SAMPLE_ALPHA_TO_COVERAGE_ARB   = 0x809E,
    GL_SAMPLE_ALPHA_TO_ONE_ARB        = 0x809F,
    GL_SAMPLE_COVERAGE_ARB            = 0x80A0,
    GL_SAMPLE_BUFFERS_ARB             = 0x80A8,
    GL_SAMPLES_ARB                    = 0x80A9,
    GL_SAMPLE_COVERAGE_VALUE_ARB      = 0x80AA,
    GL_SAMPLE_COVERAGE_INVERT_ARB     = 0x80AB,
    GL_MULTISAMPLE_BIT_ARB            = 0x20000000,
}

/* GL_ARB_texture_env_add */
/* end GL_ARB_texture_env_add */

/* GL_ARB_texture_cube_map */
enum {
    GL_NORMAL_MAP_ARB                 = 0x8511,
    GL_REFLECTION_MAP_ARB             = 0x8512,
    GL_TEXTURE_CUBE_MAP_ARB           = 0x8513,
    GL_TEXTURE_BINDING_CUBE_MAP_ARB   = 0x8514,
    GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB = 0x8515,
    GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = 0x8516,
    GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = 0x8517,
    GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = 0x8518,
    GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = 0x8519,
    GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = 0x851A,
    GL_PROXY_TEXTURE_CUBE_MAP_ARB     = 0x851B,
    GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB  = 0x851C,
}

/* GL_ARB_texture_compression */
enum {
    GL_COMPRESSED_ALPHA_ARB           = 0x84E9,
    GL_COMPRESSED_LUMINANCE_ARB       = 0x84EA,
    GL_COMPRESSED_LUMINANCE_ALPHA_ARB = 0x84EB,
    GL_COMPRESSED_INTENSITY_ARB       = 0x84EC,
    GL_COMPRESSED_RGB_ARB             = 0x84ED,
    GL_COMPRESSED_RGBA_ARB            = 0x84EE,
    GL_TEXTURE_COMPRESSION_HINT_ARB   = 0x84EF,
    GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB = 0x86A0,
    GL_TEXTURE_COMPRESSED_ARB         = 0x86A1,
    GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86A2,
    GL_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86A3,
}

/* GL_ARB_texture_border_clamp */
enum {
    GL_CLAMP_TO_BORDER_ARB            = 0x812D,
}

/* GL_ARB_point_parameters */
enum {
    GL_POINT_SIZE_MIN_ARB             = 0x8126,
    GL_POINT_SIZE_MAX_ARB             = 0x8127,
    GL_POINT_FADE_THRESHOLD_SIZE_ARB  = 0x8128,
    GL_POINT_DISTANCE_ATTENUATION_ARB = 0x8129,
}

/* GL_ARB_vertex_blend */
enum {
    GL_MAX_VERTEX_UNITS_ARB           = 0x86A4,
    GL_ACTIVE_VERTEX_UNITS_ARB        = 0x86A5,
    GL_WEIGHT_SUM_UNITY_ARB           = 0x86A6,
    GL_VERTEX_BLEND_ARB               = 0x86A7,
    GL_CURRENT_WEIGHT_ARB             = 0x86A8,
    GL_WEIGHT_ARRAY_TYPE_ARB          = 0x86A9,
    GL_WEIGHT_ARRAY_STRIDE_ARB        = 0x86AA,
    GL_WEIGHT_ARRAY_SIZE_ARB          = 0x86AB,
    GL_WEIGHT_ARRAY_POINTER_ARB       = 0x86AC,
    GL_WEIGHT_ARRAY_ARB               = 0x86AD,
    GL_MODELVIEW0_ARB                 = 0x1700,
    GL_MODELVIEW1_ARB                 = 0x850A,
    GL_MODELVIEW2_ARB                 = 0x8722,
    GL_MODELVIEW3_ARB                 = 0x8723,
    GL_MODELVIEW4_ARB                 = 0x8724,
    GL_MODELVIEW5_ARB                 = 0x8725,
    GL_MODELVIEW6_ARB                 = 0x8726,
    GL_MODELVIEW7_ARB                 = 0x8727,
    GL_MODELVIEW8_ARB                 = 0x8728,
    GL_MODELVIEW9_ARB                 = 0x8729,
    GL_MODELVIEW10_ARB                = 0x872A,
    GL_MODELVIEW11_ARB                = 0x872B,
    GL_MODELVIEW12_ARB                = 0x872C,
    GL_MODELVIEW13_ARB                = 0x872D,
    GL_MODELVIEW14_ARB                = 0x872E,
    GL_MODELVIEW15_ARB                = 0x872F,
    GL_MODELVIEW16_ARB                = 0x8730,
    GL_MODELVIEW17_ARB                = 0x8731,
    GL_MODELVIEW18_ARB                = 0x8732,
    GL_MODELVIEW19_ARB                = 0x8733,
    GL_MODELVIEW20_ARB                = 0x8734,
    GL_MODELVIEW21_ARB                = 0x8735,
    GL_MODELVIEW22_ARB                = 0x8736,
    GL_MODELVIEW23_ARB                = 0x8737,
    GL_MODELVIEW24_ARB                = 0x8738,
    GL_MODELVIEW25_ARB                = 0x8739,
    GL_MODELVIEW26_ARB                = 0x873A,
    GL_MODELVIEW27_ARB                = 0x873B,
    GL_MODELVIEW28_ARB                = 0x873C,
    GL_MODELVIEW29_ARB                = 0x873D,
    GL_MODELVIEW30_ARB                = 0x873E,
    GL_MODELVIEW31_ARB                = 0x873F,
}

/* GL_ARB_matrix_palette */
enum {
    GL_MATRIX_PALETTE_ARB             = 0x8840,
    GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB = 0x8841,
    GL_MAX_PALETTE_MATRICES_ARB       = 0x8842,
    GL_CURRENT_PALETTE_MATRIX_ARB     = 0x8843,
    GL_MATRIX_INDEX_ARRAY_ARB         = 0x8844,
    GL_CURRENT_MATRIX_INDEX_ARB       = 0x8845,
    GL_MATRIX_INDEX_ARRAY_SIZE_ARB    = 0x8846,
    GL_MATRIX_INDEX_ARRAY_TYPE_ARB    = 0x8847,
    GL_MATRIX_INDEX_ARRAY_STRIDE_ARB  = 0x8848,
    GL_MATRIX_INDEX_ARRAY_POINTER_ARB = 0x8849,
}

/* GL_ARB_texture_env_combine */
enum {
    GL_COMBINE_ARB                    = 0x8570,
    GL_COMBINE_RGB_ARB                = 0x8571,
    GL_COMBINE_ALPHA_ARB              = 0x8572,
    GL_SOURCE0_RGB_ARB                = 0x8580,
    GL_SOURCE1_RGB_ARB                = 0x8581,
    GL_SOURCE2_RGB_ARB                = 0x8582,
    GL_SOURCE0_ALPHA_ARB              = 0x8588,
    GL_SOURCE1_ALPHA_ARB              = 0x8589,
    GL_SOURCE2_ALPHA_ARB              = 0x858A,
    GL_OPERAND0_RGB_ARB               = 0x8590,
    GL_OPERAND1_RGB_ARB               = 0x8591,
    GL_OPERAND2_RGB_ARB               = 0x8592,
    GL_OPERAND0_ALPHA_ARB             = 0x8598,
    GL_OPERAND1_ALPHA_ARB             = 0x8599,
    GL_OPERAND2_ALPHA_ARB             = 0x859A,
    GL_RGB_SCALE_ARB                  = 0x8573,
    GL_ADD_SIGNED_ARB                 = 0x8574,
    GL_INTERPOLATE_ARB                = 0x8575,
    GL_SUBTRACT_ARB                   = 0x84E7,
    GL_CONSTANT_ARB                   = 0x8576,
    GL_PRIMARY_COLOR_ARB              = 0x8577,
    GL_PREVIOUS_ARB                   = 0x8578,
}

/* GL_ARB_texture_env_crossbar */

/* GL_ARB_texture_env_dot3 */
enum {
GL_DOT3_RGB_ARB                   = 0x86AE,
GL_DOT3_RGBA_ARB                  = 0x86AF,
}

/* GL_ARB_texture_mirrored_repeat */
enum {
GL_MIRRORED_REPEAT_ARB            = 0x8370,
}

/* GL_ARB_depth_texture */
enum {
    GL_DEPTH_COMPONENT16_ARB          = 0x81A5,
    GL_DEPTH_COMPONENT24_ARB          = 0x81A6,
    GL_DEPTH_COMPONENT32_ARB          = 0x81A7,
    GL_TEXTURE_DEPTH_SIZE_ARB         = 0x884A,
    GL_DEPTH_TEXTURE_MODE_ARB         = 0x884B,
}

/* GL_ARB_shadow */
enum {
    GL_TEXTURE_COMPARE_MODE_ARB       = 0x884C,
    GL_TEXTURE_COMPARE_FUNC_ARB       = 0x884D,
    GL_COMPARE_R_TO_TEXTURE_ARB       = 0x884E,
}

/* GL_ARB_shadow_ambient */
enum {
    GL_TEXTURE_COMPARE_FAIL_VALUE_ARB  = 0x80BF
}

/* GL_ARB_window_pos */
/* end GL_ARB_window_pos */

/* GL_ARB_vertex_program */
enum {
    GL_COLOR_SUM_ARB                  = 0x8458,
    GL_VERTEX_PROGRAM_ARB             = 0x8620,
    GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB = 0x8622,
    GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB   = 0x8623,
    GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB = 0x8624,
    GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB   = 0x8625,
    GL_CURRENT_VERTEX_ATTRIB_ARB      = 0x8626,
    GL_PROGRAM_LENGTH_ARB             = 0x8627,
    GL_PROGRAM_STRING_ARB             = 0x8628,
    GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB = 0x862E,
    GL_MAX_PROGRAM_MATRICES_ARB       = 0x862F,
    GL_CURRENT_MATRIX_STACK_DEPTH_ARB = 0x8640,
    GL_CURRENT_MATRIX_ARB             = 0x8641,
    GL_VERTEX_PROGRAM_POINT_SIZE_ARB  = 0x8642,
    GL_VERTEX_PROGRAM_TWO_SIDE_ARB    = 0x8643,
    GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB = 0x8645,
    GL_PROGRAM_ERROR_POSITION_ARB     = 0x864B,
    GL_PROGRAM_BINDING_ARB            = 0x8677,
    GL_MAX_VERTEX_ATTRIBS_ARB         = 0x8869,
    GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB = 0x886A,
    GL_PROGRAM_ERROR_STRING_ARB       = 0x8874,
    GL_PROGRAM_FORMAT_ASCII_ARB       = 0x8875,
    GL_PROGRAM_FORMAT_ARB             = 0x8876,
    GL_PROGRAM_INSTRUCTIONS_ARB       = 0x88A0,
    GL_MAX_PROGRAM_INSTRUCTIONS_ARB   = 0x88A1,
    GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 0x88A2,
    GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 0x88A3,
    GL_PROGRAM_TEMPORARIES_ARB        = 0x88A4,
    GL_MAX_PROGRAM_TEMPORARIES_ARB    = 0x88A5,
    GL_PROGRAM_NATIVE_TEMPORARIES_ARB = 0x88A6,
    GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB = 0x88A7,
    GL_PROGRAM_PARAMETERS_ARB         = 0x88A8,
    GL_MAX_PROGRAM_PARAMETERS_ARB     = 0x88A9,
    GL_PROGRAM_NATIVE_PARAMETERS_ARB  = 0x88AA,
    GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB = 0x88AB,
    GL_PROGRAM_ATTRIBS_ARB            = 0x88AC,
    GL_MAX_PROGRAM_ATTRIBS_ARB        = 0x88AD,
    GL_PROGRAM_NATIVE_ATTRIBS_ARB     = 0x88AE,
    GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB = 0x88AF,
    GL_PROGRAM_ADDRESS_REGISTERS_ARB  = 0x88B0,
    GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB = 0x88B1,
    GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 0x88B2,
    GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 0x88B3,
    GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB = 0x88B4,
    GL_MAX_PROGRAM_ENV_PARAMETERS_ARB = 0x88B5,
    GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB = 0x88B6,
    GL_TRANSPOSE_CURRENT_MATRIX_ARB   = 0x88B7,
    GL_MATRIX0_ARB                    = 0x88C0,
    GL_MATRIX1_ARB                    = 0x88C1,
    GL_MATRIX2_ARB                    = 0x88C2,
    GL_MATRIX3_ARB                    = 0x88C3,
    GL_MATRIX4_ARB                    = 0x88C4,
    GL_MATRIX5_ARB                    = 0x88C5,
    GL_MATRIX6_ARB                    = 0x88C6,
    GL_MATRIX7_ARB                    = 0x88C7,
    GL_MATRIX8_ARB                    = 0x88C8,
    GL_MATRIX9_ARB                    = 0x88C9,
    GL_MATRIX10_ARB                   = 0x88CA,
    GL_MATRIX11_ARB                   = 0x88CB,
    GL_MATRIX12_ARB                   = 0x88CC,
    GL_MATRIX13_ARB                   = 0x88CD,
    GL_MATRIX14_ARB                   = 0x88CE,
    GL_MATRIX15_ARB                   = 0x88CF,
    GL_MATRIX16_ARB                   = 0x88D0,
    GL_MATRIX17_ARB                   = 0x88D1,
    GL_MATRIX18_ARB                   = 0x88D2,
    GL_MATRIX19_ARB                   = 0x88D3,
    GL_MATRIX20_ARB                   = 0x88D4,
    GL_MATRIX21_ARB                   = 0x88D5,
    GL_MATRIX22_ARB                   = 0x88D6,
    GL_MATRIX23_ARB                   = 0x88D7,
    GL_MATRIX24_ARB                   = 0x88D8,
    GL_MATRIX25_ARB                   = 0x88D9,
    GL_MATRIX26_ARB                   = 0x88DA,
    GL_MATRIX27_ARB                   = 0x88DB,
    GL_MATRIX28_ARB                   = 0x88DC,
    GL_MATRIX29_ARB                   = 0x88DD,
    GL_MATRIX30_ARB                   = 0x88DE,
    GL_MATRIX31_ARB                   = 0x88DF,
}

/* GL_ARB_fragment_program */
enum {
    GL_FRAGMENT_PROGRAM_ARB           = 0x8804,
    GL_PROGRAM_ALU_INSTRUCTIONS_ARB   = 0x8805,
    GL_PROGRAM_TEX_INSTRUCTIONS_ARB   = 0x8806,
    GL_PROGRAM_TEX_INDIRECTIONS_ARB   = 0x8807,
    GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 0x8808,
    GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = 0x8809,
    GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 0x880A,
    GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB = 0x880B,
    GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB = 0x880C,
    GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB = 0x880D,
    GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 0x880E,
    GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = 0x880F,
    GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 0x8810,
    GL_MAX_TEXTURE_COORDS_ARB         = 0x8871,
    GL_MAX_TEXTURE_IMAGE_UNITS_ARB    = 0x8872,
}

/* GL_ARB_vertex_buffer_object */
enum {
    GL_BUFFER_SIZE_ARB                = 0x8764,
    GL_BUFFER_USAGE_ARB               = 0x8765,
    GL_ARRAY_BUFFER_ARB               = 0x8892,
    GL_ELEMENT_ARRAY_BUFFER_ARB       = 0x8893,
    GL_ARRAY_BUFFER_BINDING_ARB       = 0x8894,
    GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB = 0x8895,
    GL_VERTEX_ARRAY_BUFFER_BINDING_ARB = 0x8896,
    GL_NORMAL_ARRAY_BUFFER_BINDING_ARB = 0x8897,
    GL_COLOR_ARRAY_BUFFER_BINDING_ARB = 0x8898,
    GL_INDEX_ARRAY_BUFFER_BINDING_ARB = 0x8899,
    GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB = 0x889A,
    GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB = 0x889B,
    GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB = 0x889C,
    GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB = 0x889D,
    GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB = 0x889E,
    GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB = 0x889F,
    GL_READ_ONLY_ARB                  = 0x88B8,
    GL_WRITE_ONLY_ARB                 = 0x88B9,
    GL_READ_WRITE_ARB                 = 0x88BA,
    GL_BUFFER_ACCESS_ARB              = 0x88BB,
    GL_BUFFER_MAPPED_ARB              = 0x88BC,
    GL_BUFFER_MAP_POINTER_ARB         = 0x88BD,
    GL_STREAM_DRAW_ARB                = 0x88E0,
    GL_STREAM_READ_ARB                = 0x88E1,
    GL_STREAM_COPY_ARB                = 0x88E2,
    GL_STATIC_DRAW_ARB                = 0x88E4,
    GL_STATIC_READ_ARB                = 0x88E5,
    GL_STATIC_COPY_ARB                = 0x88E6,
    GL_DYNAMIC_DRAW_ARB               = 0x88E8,
    GL_DYNAMIC_READ_ARB               = 0x88E9,
    GL_DYNAMIC_COPY_ARB               = 0x88EA,
}

/* GL_ARB_occlusion_query */
enum {
    GL_QUERY_COUNTER_BITS_ARB         = 0x8864,
    GL_CURRENT_QUERY_ARB              = 0x8865,
    GL_QUERY_RESULT_ARB               = 0x8866,
    GL_QUERY_RESULT_AVAILABLE_ARB     = 0x8867,
    GL_SAMPLES_PASSED_ARB             = 0x8914,
}

/* GL_ARB_shader_objects */
enum {
    GL_PROGRAM_OBJECT_ARB             = 0x8B40,
    GL_SHADER_OBJECT_ARB              = 0x8B48,
    GL_OBJECT_TYPE_ARB                = 0x8B4E,
    GL_OBJECT_SUBTYPE_ARB             = 0x8B4F,
    GL_FLOAT_VEC2_ARB                 = 0x8B50,
    GL_FLOAT_VEC3_ARB                 = 0x8B51,
    GL_FLOAT_VEC4_ARB                 = 0x8B52,
    GL_INT_VEC2_ARB                   = 0x8B53,
    GL_INT_VEC3_ARB                   = 0x8B54,
    GL_INT_VEC4_ARB                   = 0x8B55,
    GL_BOOL_ARB                       = 0x8B56,
    GL_BOOL_VEC2_ARB                  = 0x8B57,
    GL_BOOL_VEC3_ARB                  = 0x8B58,
    GL_BOOL_VEC4_ARB                  = 0x8B59,
    GL_FLOAT_MAT2_ARB                 = 0x8B5A,
    GL_FLOAT_MAT3_ARB                 = 0x8B5B,
    GL_FLOAT_MAT4_ARB                 = 0x8B5C,
    GL_SAMPLER_1D_ARB                 = 0x8B5D,
    GL_SAMPLER_2D_ARB                 = 0x8B5E,
    GL_SAMPLER_3D_ARB                 = 0x8B5F,
    GL_SAMPLER_CUBE_ARB               = 0x8B60,
    GL_SAMPLER_1D_SHADOW_ARB          = 0x8B61,
    GL_SAMPLER_2D_SHADOW_ARB          = 0x8B62,
    GL_SAMPLER_2D_RECT_ARB            = 0x8B63,
    GL_SAMPLER_2D_RECT_SHADOW_ARB     = 0x8B64,
    GL_OBJECT_DELETE_STATUS_ARB       = 0x8B80,
    GL_OBJECT_COMPILE_STATUS_ARB      = 0x8B81,
    GL_OBJECT_LINK_STATUS_ARB         = 0x8B82,
    GL_OBJECT_VALIDATE_STATUS_ARB     = 0x8B83,
    GL_OBJECT_INFO_LOG_LENGTH_ARB     = 0x8B84,
    GL_OBJECT_ATTACHED_OBJECTS_ARB    = 0x8B85,
    GL_OBJECT_ACTIVE_UNIFORMS_ARB     = 0x8B86,
    GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB = 0x8B87,
    GL_OBJECT_SHADER_SOURCE_LENGTH_ARB = 0x8B88,
}

/* GL_ARB_vertex_shader */
enum {
    GL_VERTEX_SHADER_ARB              = 0x8B31,
    GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB = 0x8B4A,
    GL_MAX_VARYING_FLOATS_ARB         = 0x8B4B,
    GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB = 0x8B4C,
    GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB = 0x8B4D,
    GL_OBJECT_ACTIVE_ATTRIBUTES_ARB   = 0x8B89,
    GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB = 0x8B8A,
}

/* GL_ARB_fragment_shader */
enum {
    GL_FRAGMENT_SHADER_ARB            = 0x8B30,
    GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB = 0x8B49,
    GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB = 0x8B8B,
}

/* GL_ARB_shading_language_100 */
enum {
    GL_SHADING_LANGUAGE_VERSION_ARB   = 0x8B8C,
}

/* GL_ARB_texture_non_power_of_two*/
/* end GL_ARB_texture_non_power_of_two*/

/* GL_ARB_point_sprite */
enum {
    GL_POINT_SPRITE_ARB               = 0x8861,
    GL_COORD_REPLACE_ARB              = 0x8862,
}

/* GL_ARB_fragment_program_shadow */
/* end GL_ARB_fragment_program_shadow */

/* GL_ARB_draw_buffers */
enum {
    GL_MAX_DRAW_BUFFERS_ARB           = 0x8824,
    GL_DRAW_BUFFER0_ARB               = 0x8825,
    GL_DRAW_BUFFER1_ARB               = 0x8826,
    GL_DRAW_BUFFER2_ARB               = 0x8827,
    GL_DRAW_BUFFER3_ARB               = 0x8828,
    GL_DRAW_BUFFER4_ARB               = 0x8829,
    GL_DRAW_BUFFER5_ARB               = 0x882A,
    GL_DRAW_BUFFER6_ARB               = 0x882B,
    GL_DRAW_BUFFER7_ARB               = 0x882C,
    GL_DRAW_BUFFER8_ARB               = 0x882D,
    GL_DRAW_BUFFER9_ARB               = 0x882E,
    GL_DRAW_BUFFER10_ARB              = 0x882F,
    GL_DRAW_BUFFER11_ARB              = 0x8830,
    GL_DRAW_BUFFER12_ARB              = 0x8831,
    GL_DRAW_BUFFER13_ARB              = 0x8832,
    GL_DRAW_BUFFER14_ARB              = 0x8833,
    GL_DRAW_BUFFER15_ARB              = 0x8834,
}

/* GL_ARB_texture_rectangle */
enum {
    GL_TEXTURE_RECTANGLE_ARB          = 0x84F5,
    GL_TEXTURE_BINDING_RECTANGLE_ARB  = 0x84F6,
    GL_PROXY_TEXTURE_RECTANGLE_ARB    = 0x84F7,
    GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB = 0x84F8,
}

/* GL_ARB_color_buffer_float */
enum {
    GL_RGBA_FLOAT_MODE_ARB            = 0x8820,
    GL_CLAMP_VERTEX_COLOR_ARB         = 0x891A,
    GL_CLAMP_FRAGMENT_COLOR_ARB       = 0x891B,
    GL_CLAMP_READ_COLOR_ARB           = 0x891C,
    GL_FIXED_ONLY_ARB                 = 0x891D,
}

/* GL_ARB_half_float_pixel */
enum {
    GL_HALF_FLOAT_ARB                 = 0x140B,
}

/* GL_ARB_texture_float */
enum {
    GL_TEXTURE_RED_TYPE_ARB           = 0x8C10,
    GL_TEXTURE_GREEN_TYPE_ARB         = 0x8C11,
    GL_TEXTURE_BLUE_TYPE_ARB          = 0x8C12,
    GL_TEXTURE_ALPHA_TYPE_ARB         = 0x8C13,
    GL_TEXTURE_LUMINANCE_TYPE_ARB     = 0x8C14,
    GL_TEXTURE_INTENSITY_TYPE_ARB     = 0x8C15,
    GL_TEXTURE_DEPTH_TYPE_ARB         = 0x8C16,
    GL_UNSIGNED_NORMALIZED_ARB        = 0x8C17,
    GL_RGBA32F_ARB                    = 0x8814,
    GL_RGB32F_ARB                     = 0x8815,
    GL_ALPHA32F_ARB                   = 0x8816,
    GL_INTENSITY32F_ARB               = 0x8817,
    GL_LUMINANCE32F_ARB               = 0x8818,
    GL_LUMINANCE_ALPHA32F_ARB         = 0x8819,
    GL_RGBA16F_ARB                    = 0x881A,
    GL_RGB16F_ARB                     = 0x881B,
    GL_ALPHA16F_ARB                   = 0x881C,
    GL_INTENSITY16F_ARB               = 0x881D,
    GL_LUMINANCE16F_ARB               = 0x881E,
    GL_LUMINANCE_ALPHA16F_ARB         = 0x881F,
}

/* GL_ARB_pixel_buffer_object */
enum {
    GL_PIXEL_PACK_BUFFER_ARB          = 0x88EB,
    GL_PIXEL_UNPACK_BUFFER_ARB        = 0x88EC,
    GL_PIXEL_PACK_BUFFER_BINDING_ARB  = 0x88ED,
    GL_PIXEL_UNPACK_BUFFER_BINDING_ARB = 0x88EF,
}

/* GL_ARB_depth_buffer_float */
enum {
    GL_DEPTH_COMPONENT32F             = 0x8CAC,
    GL_DEPTH32F_STENCIL8              = 0x8CAD,
    GL_FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD,
}

/* GL_ARB_draw_instanced */
/* end GL_ARB_draw_instanced */

/* GL_ARB_framebuffer_object */
enum {
    GL_INVALID_FRAMEBUFFER_OPERATION  = 0x0506,
    GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210,
    GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211,
    GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212,
    GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213,
    GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214,
    GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215,
    GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216,
    GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217,
    GL_FRAMEBUFFER_DEFAULT            = 0x8218,
    GL_FRAMEBUFFER_UNDEFINED          = 0x8219,
    GL_DEPTH_STENCIL_ATTACHMENT       = 0x821A,
    GL_MAX_RENDERBUFFER_SIZE          = 0x84E8,
    GL_DEPTH_STENCIL                  = 0x84F9,
    GL_UNSIGNED_INT_24_8              = 0x84FA,
    GL_DEPTH24_STENCIL8               = 0x88F0,
    GL_TEXTURE_STENCIL_SIZE           = 0x88F1,
    GL_TEXTURE_RED_TYPE               = 0x8C10,
    GL_TEXTURE_GREEN_TYPE             = 0x8C11,
    GL_TEXTURE_BLUE_TYPE              = 0x8C12,
    GL_TEXTURE_ALPHA_TYPE             = 0x8C13,
    GL_TEXTURE_DEPTH_TYPE             = 0x8C16,
    GL_UNSIGNED_NORMALIZED            = 0x8C17,
    GL_FRAMEBUFFER_BINDING            = 0x8CA6,
    GL_DRAW_FRAMEBUFFER_BINDING       = GL_FRAMEBUFFER_BINDING,
    GL_RENDERBUFFER_BINDING           = 0x8CA7,
    GL_READ_FRAMEBUFFER               = 0x8CA8,
    GL_DRAW_FRAMEBUFFER               = 0x8CA9,
    GL_READ_FRAMEBUFFER_BINDING       = 0x8CAA,
    GL_RENDERBUFFER_SAMPLES           = 0x8CAB,
    GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0,
    GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1,
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2,
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3,
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4,
    GL_FRAMEBUFFER_COMPLETE           = 0x8CD5,
    GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6,
    GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7,
    GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = 0x8CDB,
    GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER = 0x8CDC,
    GL_FRAMEBUFFER_UNSUPPORTED        = 0x8CDD,
    GL_MAX_COLOR_ATTACHMENTS          = 0x8CDF,
    GL_COLOR_ATTACHMENT0              = 0x8CE0,
    GL_COLOR_ATTACHMENT1              = 0x8CE1,
    GL_COLOR_ATTACHMENT2              = 0x8CE2,
    GL_COLOR_ATTACHMENT3              = 0x8CE3,
    GL_COLOR_ATTACHMENT4              = 0x8CE4,
    GL_COLOR_ATTACHMENT5              = 0x8CE5,
    GL_COLOR_ATTACHMENT6              = 0x8CE6,
    GL_COLOR_ATTACHMENT7              = 0x8CE7,
    GL_COLOR_ATTACHMENT8              = 0x8CE8,
    GL_COLOR_ATTACHMENT9              = 0x8CE9,
    GL_COLOR_ATTACHMENT10             = 0x8CEA,
    GL_COLOR_ATTACHMENT11             = 0x8CEB,
    GL_COLOR_ATTACHMENT12             = 0x8CEC,
    GL_COLOR_ATTACHMENT13             = 0x8CED,
    GL_COLOR_ATTACHMENT14             = 0x8CEE,
    GL_COLOR_ATTACHMENT15             = 0x8CEF,
    GL_DEPTH_ATTACHMENT               = 0x8D00,
    GL_STENCIL_ATTACHMENT             = 0x8D20,
    GL_FRAMEBUFFER                    = 0x8D40,
    GL_RENDERBUFFER                   = 0x8D41,
    GL_RENDERBUFFER_WIDTH             = 0x8D42,
    GL_RENDERBUFFER_HEIGHT            = 0x8D43,
    GL_RENDERBUFFER_INTERNAL_FORMAT   = 0x8D44,
    GL_STENCIL_INDEX1                 = 0x8D46,
    GL_STENCIL_INDEX4                 = 0x8D47,
    GL_STENCIL_INDEX8                 = 0x8D48,
    GL_STENCIL_INDEX16                = 0x8D49,
    GL_RENDERBUFFER_RED_SIZE          = 0x8D50,
    GL_RENDERBUFFER_GREEN_SIZE        = 0x8D51,
    GL_RENDERBUFFER_BLUE_SIZE         = 0x8D52,
    GL_RENDERBUFFER_ALPHA_SIZE        = 0x8D53,
    GL_RENDERBUFFER_DEPTH_SIZE        = 0x8D54,
    GL_RENDERBUFFER_STENCIL_SIZE      = 0x8D55,
    GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56,
    GL_MAX_SAMPLES                    = 0x8D57,
    GL_INDEX                          = 0x8222,
    GL_TEXTURE_LUMINANCE_TYPE         = 0x8C14,
    GL_TEXTURE_INTENSITY_TYPE         = 0x8C15,
}

/* GL_ARB_framebuffer_sRGB */
enum {
    GL_FRAMEBUFFER_SRGB               = 0x8DB9,
}

/* GL_ARB_geometry_shader4 */
enum {
    GL_LINES_ADJACENCY_ARB            = 0x000A,
    GL_LINE_STRIP_ADJACENCY_ARB       = 0x000B,
    GL_TRIANGLES_ADJACENCY_ARB        = 0x000C,
    GL_TRIANGLE_STRIP_ADJACENCY_ARB   = 0x000D,
    GL_PROGRAM_POINT_SIZE_ARB         = 0x8642,
    GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB = 0x8C29,
    GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB = 0x8DA7,
    GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB = 0x8DA8,
    GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB = 0x8DA9,
    GL_GEOMETRY_SHADER_ARB            = 0x8DD9,
    GL_GEOMETRY_VERTICES_OUT_ARB      = 0x8DDA,
    GL_GEOMETRY_INPUT_TYPE_ARB        = 0x8DDB,
    GL_GEOMETRY_OUTPUT_TYPE_ARB       = 0x8DDC,
    GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB = 0x8DDD,
    GL_MAX_VERTEX_VARYING_COMPONENTS_ARB = 0x8DDE,
    GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB = 0x8DDF,
    GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB = 0x8DE0,
    GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB = 0x8DE1,
    /* reuse GL_MAX_VARYING_COMPONENTS */
    /* reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER */
}

/* GL_ARB_half_float_vertex */
enum {
    GL_HALF_FLOAT                     = 0x140B,
}

/* GL_ARB_instanced_arrays */
enum {
    GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB = 0x88FE,
}

/* GL_ARB_map_buffer_range */
enum {
    GL_MAP_READ_BIT                   = 0x0001,
    GL_MAP_WRITE_BIT                  = 0x0002,
    GL_MAP_INVALIDATE_RANGE_BIT       = 0x0004,
    GL_MAP_INVALIDATE_BUFFER_BIT      = 0x0008,
    GL_MAP_FLUSH_EXPLICIT_BIT         = 0x0010,
    GL_MAP_UNSYNCHRONIZED_BIT         = 0x0020,
}

/* GL_ARB_texture_buffer_object */
enum {
    GL_TEXTURE_BUFFER_ARB             = 0x8C2A,
    GL_MAX_TEXTURE_BUFFER_SIZE_ARB    = 0x8C2B,
    GL_TEXTURE_BINDING_BUFFER_ARB     = 0x8C2C,
    GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB = 0x8C2D,
    GL_TEXTURE_BUFFER_FORMAT_ARB      = 0x8C2E,
}

/* GL_ARB_texture_compression_rgtc */
enum {
    GL_COMPRESSED_RED_RGTC1           = 0x8DBB,
    GL_COMPRESSED_SIGNED_RED_RGTC1    = 0x8DBC,
    GL_COMPRESSED_RG_RGTC2            = 0x8DBD,
    GL_COMPRESSED_SIGNED_RG_RGTC2     = 0x8DBE,
}

/* GL_ARB_texture_rg */
enum {
    GL_RG                             = 0x8227,
    GL_RG_INTEGER                     = 0x8228,
    GL_R8                             = 0x8229,
    GL_R16                            = 0x822A,
    GL_RG8                            = 0x822B,
    GL_RG16                           = 0x822C,
    GL_R16F                           = 0x822D,
    GL_R32F                           = 0x822E,
    GL_RG16F                          = 0x822F,
    GL_RG32F                          = 0x8230,
    GL_R8I                            = 0x8231,
    GL_R8UI                           = 0x8232,
    GL_R16I                           = 0x8233,
    GL_R16UI                          = 0x8234,
    GL_R32I                           = 0x8235,
    GL_R32UI                          = 0x8236,
    GL_RG8I                           = 0x8237,
    GL_RG8UI                          = 0x8238,
    GL_RG16I                          = 0x8239,
    GL_RG16UI                         = 0x823A,
    GL_RG32I                          = 0x823B,
    GL_RG32UI                         = 0x823C,
}

/* GL_ARB_vertex_array_object */
enum {
    GL_VERTEX_ARRAY_BINDING           = 0x85B5,
}

/* GL_ARB_uniform_buffer_object */
enum {
    GL_UNIFORM_BUFFER                 = 0x8A11,
    GL_UNIFORM_BUFFER_BINDING         = 0x8A28,
    GL_UNIFORM_BUFFER_START           = 0x8A29,
    GL_UNIFORM_BUFFER_SIZE            = 0x8A2A,
    GL_MAX_VERTEX_UNIFORM_BLOCKS      = 0x8A2B,
    GL_MAX_GEOMETRY_UNIFORM_BLOCKS    = 0x8A2C,
    GL_MAX_FRAGMENT_UNIFORM_BLOCKS    = 0x8A2D,
    GL_MAX_COMBINED_UNIFORM_BLOCKS    = 0x8A2E,
    GL_MAX_UNIFORM_BUFFER_BINDINGS    = 0x8A2F,
    GL_MAX_UNIFORM_BLOCK_SIZE         = 0x8A30,
    GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31,
    GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 0x8A32,
    GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33,
    GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34,
    GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 0x8A35,
    GL_ACTIVE_UNIFORM_BLOCKS          = 0x8A36,
    GL_UNIFORM_TYPE                   = 0x8A37,
    GL_UNIFORM_SIZE                   = 0x8A38,
    GL_UNIFORM_NAME_LENGTH            = 0x8A39,
    GL_UNIFORM_BLOCK_INDEX            = 0x8A3A,
    GL_UNIFORM_OFFSET                 = 0x8A3B,
    GL_UNIFORM_ARRAY_STRIDE           = 0x8A3C,
    GL_UNIFORM_MATRIX_STRIDE          = 0x8A3D,
    GL_UNIFORM_IS_ROW_MAJOR           = 0x8A3E,
    GL_UNIFORM_BLOCK_BINDING          = 0x8A3F,
    GL_UNIFORM_BLOCK_DATA_SIZE        = 0x8A40,
    GL_UNIFORM_BLOCK_NAME_LENGTH      = 0x8A41,
    GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS  = 0x8A42,
    GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43,
    GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44,
    GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 0x8A45,
    GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46,
    GL_INVALID_INDEX                  = 0xFFFFFFFFu,
}

/* GL_ARB_compatibility */
/* ARB_compatibility just defines tokens from core 3.0 */

/* GL_ARB_copy_buffer */
enum {
    GL_COPY_READ_BUFFER_BINDING       = 0x8F36,
    GL_COPY_READ_BUFFER               = GL_COPY_READ_BUFFER_BINDING,
    GL_COPY_WRITE_BUFFER_BINDING      = 0x8F37,
    GL_COPY_WRITE_BUFFER              = GL_COPY_WRITE_BUFFER_BINDING,
}

/* GL_ARB_shader_texture_lod */
/* end */

/* GL_ARB_depth_clamp */
enum {
    GL_DEPTH_CLAMP                    = 0x864F,
}

/* GL_ARB_draw_elements_base_vertex */
/* GL_ARB_fragment_coord_conventions */

/* GL_ARB_provoking_vertex */
enum {
    GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 0x8E4C,
    GL_FIRST_VERTEX_CONVENTION        = 0x8E4D,
    GL_LAST_VERTEX_CONVENTION         = 0x8E4E,
    GL_PROVOKING_VERTEX               = 0x8E4F,
}

/* GL_ARB_seamless_cube_map */
enum {
    GL_TEXTURE_CUBE_MAP_SEAMLESS      = 0x884F,
}

/* GL_ARB_sync */
enum {
    GL_MAX_SERVER_WAIT_TIMEOUT        = 0x9111,
    GL_OBJECT_TYPE                    = 0x9112,
    GL_SYNC_CONDITION                 = 0x9113,
    GL_SYNC_STATUS                    = 0x9114,
    GL_SYNC_FLAGS                     = 0x9115,
    GL_SYNC_FENCE                     = 0x9116,
    GL_SYNC_GPU_COMMANDS_COMPLETE     = 0x9117,
    GL_UNSIGNALED                     = 0x9118,
    GL_SIGNALED                       = 0x9119,
    GL_ALREADY_SIGNALED               = 0x911A,
    GL_TIMEOUT_EXPIRED                = 0x911B,
    GL_CONDITION_SATISFIED            = 0x911C,
    GL_WAIT_FAILED                    = 0x911D,
    GL_SYNC_FLUSH_COMMANDS_BIT        = 0x00000001,
    GL_TIMEOUT_IGNORED                = 0xFFFFFFFFFFFFFFFF,
}

/* GL_ARB_texture_multisample */
enum {
    GL_SAMPLE_POSITION                = 0x8E50,
    GL_SAMPLE_MASK                    = 0x8E51,
    GL_SAMPLE_MASK_VALUE              = 0x8E52,
    GL_MAX_SAMPLE_MASK_WORDS          = 0x8E59,
    GL_TEXTURE_2D_MULTISAMPLE         = 0x9100,
    GL_PROXY_TEXTURE_2D_MULTISAMPLE   = 0x9101,
    GL_TEXTURE_2D_MULTISAMPLE_ARRAY   = 0x9102,
    GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9103,
    GL_TEXTURE_BINDING_2D_MULTISAMPLE = 0x9104,
    GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = 0x9105,
    GL_TEXTURE_SAMPLES                = 0x9106,
    GL_TEXTURE_FIXED_SAMPLE_LOCATIONS = 0x9107,
    GL_SAMPLER_2D_MULTISAMPLE         = 0x9108,
    GL_INT_SAMPLER_2D_MULTISAMPLE     = 0x9109,
    GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 0x910A,
    GL_SAMPLER_2D_MULTISAMPLE_ARRAY   = 0x910B,
    GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910C,
    GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910D,
    GL_MAX_COLOR_TEXTURE_SAMPLES      = 0x910E,
    GL_MAX_DEPTH_TEXTURE_SAMPLES      = 0x910F,
    GL_MAX_INTEGER_SAMPLES            = 0x9110,
}

/* GL_ARB_vertex_array_bgra */
/* reuse GL_BGRA */

/* GL_ARB_draw_buffers_blend */

/* GL_ARB_sample_shading */
enum {
    GL_SAMPLE_SHADING_ARB             = 0x8C36,
    GL_MIN_SAMPLE_SHADING_VALUE_ARB   = 0x8C37,
}

/* GL_ARB_texture_cube_map_array */
enum {
    GL_TEXTURE_CUBE_MAP_ARRAY_ARB     = 0x9009,
    GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB = 0x900A,
    GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB = 0x900B,
    GL_SAMPLER_CUBE_MAP_ARRAY_ARB     = 0x900C,
    GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB = 0x900D,
    GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB = 0x900E,
    GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB = 0x900F,
}

/* GL_ARB_texture_gather */
enum {
    GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = 0x8E5E,
    GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = 0x8E5F,
    GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB = 0x8F9F,
}

/* GL_ARB_texture_query_lod */

/* GL_ARB_shading_language_include */
enum {
    GL_SHADER_INCLUDE_ARB             = 0x8DAE,
    GL_NAMED_STRING_LENGTH_ARB        = 0x8DE9,
    GL_NAMED_STRING_TYPE_ARB          = 0x8DEA,
}

/* GL_ARB_texture_compression_bptc */
enum {
    GL_COMPRESSED_RGBA_BPTC_UNORM_ARB = 0x8E8C,
    GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = 0x8E8D,
    GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = 0x8E8E,
    GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = 0x8E8F,
}

/* GL_ARB_blend_func_extended */
enum {
    GL_SRC1_COLOR                     = 0x88F9,
    GL_ONE_MINUS_SRC1_COLOR           = 0x88FA,
    GL_ONE_MINUS_SRC1_ALPHA           = 0x88FB,
    GL_MAX_DUAL_SOURCE_DRAW_BUFFERS   = 0x88FC,
}

/* GL_ARB_explicit_attrib_location */

/* GL_ARB_occlusion_query2 */
enum {
    GL_ANY_SAMPLES_PASSED             = 0x8C2F,
}

/* GL_ARB_sampler_objects */
enum {
    GL_SAMPLER_BINDING                = 0x8919,
}

/* GL_ARB_shader_bit_encoding */

/* GL_ARB_texture_rgb10_a2ui */
enum {
    GL_RGB10_A2UI                     = 0x906F,
}

/* GL_ARB_texture_swizzle */
enum {
    GL_TEXTURE_SWIZZLE_R              = 0x8E42,
    GL_TEXTURE_SWIZZLE_G              = 0x8E43,
    GL_TEXTURE_SWIZZLE_B              = 0x8E44,
    GL_TEXTURE_SWIZZLE_A              = 0x8E45,
    GL_TEXTURE_SWIZZLE_RGBA           = 0x8E46,
}

/* GL_ARB_timer_query */
enum {
    GL_TIME_ELAPSED                   = 0x88BF,
    GL_TIMESTAMP                      = 0x8E28,
}

/* GL_ARB_vertex_type_2_10_10_10_rev */
enum {
    /* reuse GL_UNSIGNED_INT_2_10_10_10_REV */
    GL_INT_2_10_10_10_REV             = 0x8D9F,
}

/* GL_ARB_draw_indirect */
enum {
    GL_DRAW_INDIRECT_BUFFER           = 0x8F3F,
    GL_DRAW_INDIRECT_BUFFER_BINDING   = 0x8F43,
}

/* GL_ARB_gpu_shader5 */
enum {
    GL_GEOMETRY_SHADER_INVOCATIONS    = 0x887F,
    GL_MAX_GEOMETRY_SHADER_INVOCATIONS = 0x8E5A,
    GL_MIN_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5B,
    GL_MAX_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5C,
    GL_FRAGMENT_INTERPOLATION_OFFSET_BITS = 0x8E5D,
    /* reuse GL_MAX_VERTEX_STREAMS */
}

/* GL_ARB_gpu_shader_fp64 */
enum {
    /* reuse GL_DOUBLE */
    GL_DOUBLE_VEC2                    = 0x8FFC,
    GL_DOUBLE_VEC3                    = 0x8FFD,
    GL_DOUBLE_VEC4                    = 0x8FFE,
    GL_DOUBLE_MAT2                    = 0x8F46,
    GL_DOUBLE_MAT3                    = 0x8F47,
    GL_DOUBLE_MAT4                    = 0x8F48,
    GL_DOUBLE_MAT2x3                  = 0x8F49,
    GL_DOUBLE_MAT2x4                  = 0x8F4A,
    GL_DOUBLE_MAT3x2                  = 0x8F4B,
    GL_DOUBLE_MAT3x4                  = 0x8F4C,
    GL_DOUBLE_MAT4x2                  = 0x8F4D,
    GL_DOUBLE_MAT4x3                  = 0x8F4E,
}

/* GL_ARB_shader_subroutine */
enum {
    GL_ACTIVE_SUBROUTINES             = 0x8DE5,
    GL_ACTIVE_SUBROUTINE_UNIFORMS     = 0x8DE6,
    GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = 0x8E47,
    GL_ACTIVE_SUBROUTINE_MAX_LENGTH   = 0x8E48,
    GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = 0x8E49,
    GL_MAX_SUBROUTINES                = 0x8DE7,
    GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS = 0x8DE8,
    GL_NUM_COMPATIBLE_SUBROUTINES     = 0x8E4A,
    GL_COMPATIBLE_SUBROUTINES         = 0x8E4B,
    /* reuse GL_UNIFORM_SIZE */
    /* reuse GL_UNIFORM_NAME_LENGTH */
}

/* GL_ARB_tessellation_shader */
enum {
    GL_PATCHES                        = 0x000E,
    GL_PATCH_VERTICES                 = 0x8E72,
    GL_PATCH_DEFAULT_INNER_LEVEL      = 0x8E73,
    GL_PATCH_DEFAULT_OUTER_LEVEL      = 0x8E74,
    GL_TESS_CONTROL_OUTPUT_VERTICES   = 0x8E75,
    GL_TESS_GEN_MODE                  = 0x8E76,
    GL_TESS_GEN_SPACING               = 0x8E77,
    GL_TESS_GEN_VERTEX_ORDER          = 0x8E78,
    GL_TESS_GEN_POINT_MODE            = 0x8E79,
    GL_ISOLINES                       = 0x8E7A,
    GL_FRACTIONAL_ODD                 = 0x8E7B,
    GL_FRACTIONAL_EVEN                = 0x8E7C,
    GL_MAX_PATCH_VERTICES             = 0x8E7D,
    GL_MAX_TESS_GEN_LEVEL             = 0x8E7E,
    GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8E7F,
    GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8E80,
    GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = 0x8E81,
    GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = 0x8E82,
    GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS = 0x8E83,
    GL_MAX_TESS_PATCH_COMPONENTS      = 0x8E84,
    GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = 0x8E85,
    GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = 0x8E86,
    GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS = 0x8E89,
    GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = 0x8E8A,
    GL_MAX_TESS_CONTROL_INPUT_COMPONENTS = 0x886C,
    GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS = 0x886D,
    GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8E1E,
    GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8E1F,
    GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = 0x84F0,
    GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x84F1,
    GL_TESS_EVALUATION_SHADER         = 0x8E87,
    GL_TESS_CONTROL_SHADER            = 0x8E88,
}

/* GL_ARB_texture_buffer_object_rgb32 */
/* reuse GL_RGB32F */
/* reuse GL_RGB32UI */
/* reuse GL_RGB32I */

/* GL_ARB_transform_feedback2 */
enum {
    GL_TRANSFORM_FEEDBACK             = 0x8E22,
    GL_TRANSFORM_FEEDBACK_PAUSED      = 0x8E23,
    GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED = GL_TRANSFORM_FEEDBACK_PAUSED,
    GL_TRANSFORM_FEEDBACK_ACTIVE      = 0x8E24,
    GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE = GL_TRANSFORM_FEEDBACK_ACTIVE,
    GL_TRANSFORM_FEEDBACK_BINDING     = 0x8E25,
}

/* GL_ARB_transform_feedback3 */
enum {
    GL_MAX_TRANSFORM_FEEDBACK_BUFFERS = 0x8E70,
    GL_MAX_VERTEX_STREAMS             = 0x8E71,
}

/* GL_ARB_ES2_compatibility */
enum {
    GL_FIXED                          = 0x140C,
    GL_IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A,
    GL_IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B,
    GL_LOW_FLOAT                      = 0x8DF0,
    GL_MEDIUM_FLOAT                   = 0x8DF1,
    GL_HIGH_FLOAT                     = 0x8DF2,
    GL_LOW_INT                        = 0x8DF3,
    GL_MEDIUM_INT                     = 0x8DF4,
    GL_HIGH_INT                       = 0x8DF5,
    GL_SHADER_COMPILER                = 0x8DFA,
    GL_SHADER_BINARY_FORMATS          = 0x8DF8,
    GL_NUM_SHADER_BINARY_FORMATS      = 0x8DF9,
    GL_MAX_VERTEX_UNIFORM_VECTORS     = 0x8DFB,
    GL_MAX_VARYING_VECTORS            = 0x8DFC,
    GL_MAX_FRAGMENT_UNIFORM_VECTORS   = 0x8DFD,
    GL_RGB565                         = 0x8D62,
}

/* GL_ARB_get_program_binary */
enum {
    GL_PROGRAM_BINARY_RETRIEVABLE_HINT = 0x8257,
    GL_PROGRAM_BINARY_LENGTH          = 0x8741,
    GL_NUM_PROGRAM_BINARY_FORMATS     = 0x87FE,
    GL_PROGRAM_BINARY_FORMATS         = 0x87FF,
}

/* GL_ARB_separate_shader_objects */
enum {
    GL_VERTEX_SHADER_BIT              = 0x00000001,
    GL_FRAGMENT_SHADER_BIT            = 0x00000002,
    GL_GEOMETRY_SHADER_BIT            = 0x00000004,
    GL_TESS_CONTROL_SHADER_BIT        = 0x00000008,
    GL_TESS_EVALUATION_SHADER_BIT     = 0x00000010,
    GL_ALL_SHADER_BITS                = 0xFFFFFFFF,
    GL_PROGRAM_SEPARABLE              = 0x8258,
    GL_ACTIVE_PROGRAM                 = 0x8259,
    GL_PROGRAM_PIPELINE_BINDING       = 0x825A,
}

/* GL_ARB_shader_precision */

/* GL_ARB_vertex_attrib_64bit */
/* reuse GL_RGB32I */
/* reuse GL_DOUBLE_VEC2 */
/* reuse GL_DOUBLE_VEC3 */
/* reuse GL_DOUBLE_VEC4 */
/* reuse GL_DOUBLE_MAT2 */
/* reuse GL_DOUBLE_MAT3 */
/* reuse GL_DOUBLE_MAT4 */
/* reuse GL_DOUBLE_MAT2x3 */
/* reuse GL_DOUBLE_MAT2x4 */
/* reuse GL_DOUBLE_MAT3x2 */
/* reuse GL_DOUBLE_MAT3x4 */
/* reuse GL_DOUBLE_MAT4x2 */
/* reuse GL_DOUBLE_MAT4x3 */

/* GL_ARB_viewport_array */
enum {
    GL_MAX_VIEWPORTS                  = 0x825B,
    GL_VIEWPORT_SUBPIXEL_BITS         = 0x825C,
    GL_VIEWPORT_BOUNDS_RANGE          = 0x825D,
    GL_LAYER_PROVOKING_VERTEX         = 0x825E,
    GL_VIEWPORT_INDEX_PROVOKING_VERTEX = 0x825F,
    GL_UNDEFINED_VERTEX               = 0x8260,
}

/* GL_ARB_cl_event */
enum {
    GL_SYNC_CL_EVENT_ARB              = 0x8240,
    GL_SYNC_CL_EVENT_COMPLETE_ARB     = 0x8241,
}

/* GL_ARB_debug_output */
enum {
    GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB   = 0x8242,
    GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB = 0x8243,
    GL_DEBUG_CALLBACK_FUNCTION_ARB    = 0x8244,
    GL_DEBUG_CALLBACK_USER_PARAM_ARB  = 0x8245,
    GL_DEBUG_SOURCE_API_ARB           = 0x8246,
    GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB = 0x8247,
    GL_DEBUG_SOURCE_SHADER_COMPILER_ARB = 0x8248,
    GL_DEBUG_SOURCE_THIRD_PARTY_ARB   = 0x8249,
    GL_DEBUG_SOURCE_APPLICATION_ARB   = 0x824A,
    GL_DEBUG_SOURCE_OTHER_ARB         = 0x824B,
    GL_DEBUG_TYPE_ERROR_ARB           = 0x824C,
    GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB = 0x824D,
    GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB = 0x824E,
    GL_DEBUG_TYPE_PORTABILITY_ARB     = 0x824F,
    GL_DEBUG_TYPE_PERFORMANCE_ARB     = 0x8250,
    GL_DEBUG_TYPE_OTHER_ARB           = 0x8251,
    GL_MAX_DEBUG_MESSAGE_LENGTH_ARB   = 0x9143,
    GL_MAX_DEBUG_LOGGED_MESSAGES_ARB  = 0x9144,
    GL_DEBUG_LOGGED_MESSAGES_ARB      = 0x9145,
    GL_DEBUG_SEVERITY_HIGH_ARB        = 0x9146,
    GL_DEBUG_SEVERITY_MEDIUM_ARB      = 0x9147,
    GL_DEBUG_SEVERITY_LOW_ARB         = 0x9148,
}

/* GL_ARB_robustness */
enum {
    GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB = 0x00000004,
    GL_LOSE_CONTEXT_ON_RESET_ARB      = 0x8252,
    GL_GUILTY_CONTEXT_RESET_ARB       = 0x8253,
    GL_INNOCENT_CONTEXT_RESET_ARB     = 0x8254,
    GL_UNKNOWN_CONTEXT_RESET_ARB      = 0x8255,
    GL_RESET_NOTIFICATION_STRATEGY_ARB = 0x8256,
    GL_NO_RESET_NOTIFICATION_ARB      = 0x8261,
}

/* GL_ARB_shader_stencil_export */

/* GL_ARB_base_instance */

/* GL_ARB_shading_language_420pack */

/* GL_ARB_transform_feedback_instanced */

/* GL_ARB_compressed_texture_pixel_storage */
enum {
    GL_UNPACK_COMPRESSED_BLOCK_WIDTH  = 0x9127,
    GL_UNPACK_COMPRESSED_BLOCK_HEIGHT = 0x9128,
    GL_UNPACK_COMPRESSED_BLOCK_DEPTH  = 0x9129,
    GL_UNPACK_COMPRESSED_BLOCK_SIZE   = 0x912A,
    GL_PACK_COMPRESSED_BLOCK_WIDTH    = 0x912B,
    GL_PACK_COMPRESSED_BLOCK_HEIGHT   = 0x912C,
    GL_PACK_COMPRESSED_BLOCK_DEPTH    = 0x912D,
    GL_PACK_COMPRESSED_BLOCK_SIZE     = 0x912E,
}

/* GL_ARB_conservative_depth */

/* GL_ARB_internalformat_query */
enum {
    GL_NUM_SAMPLE_COUNTS              = 0x9380,
}

/* GL_ARB_map_buffer_alignment */
enum {
    GL_MIN_MAP_BUFFER_ALIGNMENT       = 0x90BC,
}

/* GL_ARB_shader_atomic_counters */
enum {
    GL_ATOMIC_COUNTER_BUFFER          = 0x92C0,
    GL_ATOMIC_COUNTER_BUFFER_BINDING  = 0x92C1,
    GL_ATOMIC_COUNTER_BUFFER_START    = 0x92C2,
    GL_ATOMIC_COUNTER_BUFFER_SIZE     = 0x92C3,
    GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE = 0x92C4,
    GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = 0x92C5,
    GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = 0x92C6,
    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = 0x92C7,
    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = 0x92C8,
    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x92C9,
    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = 0x92CA,
    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = 0x92CB,
    GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = 0x92CC,
    GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = 0x92CD,
    GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = 0x92CE,
    GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = 0x92CF,
    GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = 0x92D0,
    GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = 0x92D1,
    GL_MAX_VERTEX_ATOMIC_COUNTERS     = 0x92D2,
    GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = 0x92D3,
    GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = 0x92D4,
    GL_MAX_GEOMETRY_ATOMIC_COUNTERS   = 0x92D5,
    GL_MAX_FRAGMENT_ATOMIC_COUNTERS   = 0x92D6,
    GL_MAX_COMBINED_ATOMIC_COUNTERS   = 0x92D7,
    GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE = 0x92D8,
    GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = 0x92DC,
    GL_ACTIVE_ATOMIC_COUNTER_BUFFERS  = 0x92D9,
    GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = 0x92DA,
    GL_UNSIGNED_INT_ATOMIC_COUNTER    = 0x92DB,
}

/* GL_ARB_shader_image_load_store */
enum {
    GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = 0x00000001,
    GL_ELEMENT_ARRAY_BARRIER_BIT      = 0x00000002,
    GL_UNIFORM_BARRIER_BIT            = 0x00000004,
    GL_TEXTURE_FETCH_BARRIER_BIT      = 0x00000008,
    GL_SHADER_IMAGE_ACCESS_BARRIER_BIT = 0x00000020,
    GL_COMMAND_BARRIER_BIT            = 0x00000040,
    GL_PIXEL_BUFFER_BARRIER_BIT       = 0x00000080,
    GL_TEXTURE_UPDATE_BARRIER_BIT     = 0x00000100,
    GL_BUFFER_UPDATE_BARRIER_BIT      = 0x00000200,
    GL_FRAMEBUFFER_BARRIER_BIT        = 0x00000400,
    GL_TRANSFORM_FEEDBACK_BARRIER_BIT = 0x00000800,
    GL_ATOMIC_COUNTER_BARRIER_BIT     = 0x00001000,
    GL_ALL_BARRIER_BITS               = 0xFFFFFFFF,
    GL_MAX_IMAGE_UNITS                = 0x8F38,
    GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = 0x8F39,
    GL_IMAGE_BINDING_NAME             = 0x8F3A,
    GL_IMAGE_BINDING_LEVEL            = 0x8F3B,
    GL_IMAGE_BINDING_LAYERED          = 0x8F3C,
    GL_IMAGE_BINDING_LAYER            = 0x8F3D,
    GL_IMAGE_BINDING_ACCESS           = 0x8F3E,
    GL_IMAGE_1D                       = 0x904C,
    GL_IMAGE_2D                       = 0x904D,
    GL_IMAGE_3D                       = 0x904E,
    GL_IMAGE_2D_RECT                  = 0x904F,
    GL_IMAGE_CUBE                     = 0x9050,
    GL_IMAGE_BUFFER                   = 0x9051,
    GL_IMAGE_1D_ARRAY                 = 0x9052,
    GL_IMAGE_2D_ARRAY                 = 0x9053,
    GL_IMAGE_CUBE_MAP_ARRAY           = 0x9054,
    GL_IMAGE_2D_MULTISAMPLE           = 0x9055,
    GL_IMAGE_2D_MULTISAMPLE_ARRAY     = 0x9056,
    GL_INT_IMAGE_1D                   = 0x9057,
    GL_INT_IMAGE_2D                   = 0x9058,
    GL_INT_IMAGE_3D                   = 0x9059,
    GL_INT_IMAGE_2D_RECT              = 0x905A,
    GL_INT_IMAGE_CUBE                 = 0x905B,
    GL_INT_IMAGE_BUFFER               = 0x905C,
    GL_INT_IMAGE_1D_ARRAY             = 0x905D,
    GL_INT_IMAGE_2D_ARRAY             = 0x905E,
    GL_INT_IMAGE_CUBE_MAP_ARRAY       = 0x905F,
    GL_INT_IMAGE_2D_MULTISAMPLE       = 0x9060,
    GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x9061,
    GL_UNSIGNED_INT_IMAGE_1D          = 0x9062,
    GL_UNSIGNED_INT_IMAGE_2D          = 0x9063,
    GL_UNSIGNED_INT_IMAGE_3D          = 0x9064,
    GL_UNSIGNED_INT_IMAGE_2D_RECT     = 0x9065,
    GL_UNSIGNED_INT_IMAGE_CUBE        = 0x9066,
    GL_UNSIGNED_INT_IMAGE_BUFFER      = 0x9067,
    GL_UNSIGNED_INT_IMAGE_1D_ARRAY    = 0x9068,
    GL_UNSIGNED_INT_IMAGE_2D_ARRAY    = 0x9069,
    GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = 0x906A,
    GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = 0x906B,
    GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x906C,
    GL_MAX_IMAGE_SAMPLES              = 0x906D,
    GL_IMAGE_BINDING_FORMAT           = 0x906E,
    GL_IMAGE_FORMAT_COMPATIBILITY_TYPE = 0x90C7,
    GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = 0x90C8,
    GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = 0x90C9,
    GL_MAX_VERTEX_IMAGE_UNIFORMS      = 0x90CA,
    GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS = 0x90CB,
    GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS = 0x90CC,
    GL_MAX_GEOMETRY_IMAGE_UNIFORMS    = 0x90CD,
    GL_MAX_FRAGMENT_IMAGE_UNIFORMS    = 0x90CE,
    GL_MAX_COMBINED_IMAGE_UNIFORMS    = 0x90CF,
}

/* GL_ARB_shading_language_packing */

/* GL_ARB_texture_storage */
enum {
    GL_TEXTURE_IMMUTABLE_FORMAT       = 0x912F,
}

/* GL_KHR_texture_compression_astc_ldr */
enum {
    GL_COMPRESSED_RGBA_ASTC_4x4_KHR   = 0x93B0,
    GL_COMPRESSED_RGBA_ASTC_5x4_KHR   = 0x93B1,
    GL_COMPRESSED_RGBA_ASTC_5x5_KHR   = 0x93B2,
    GL_COMPRESSED_RGBA_ASTC_6x5_KHR   = 0x93B3,
    GL_COMPRESSED_RGBA_ASTC_6x6_KHR   = 0x93B4,
    GL_COMPRESSED_RGBA_ASTC_8x5_KHR   = 0x93B5,
    GL_COMPRESSED_RGBA_ASTC_8x6_KHR   = 0x93B6,
    GL_COMPRESSED_RGBA_ASTC_8x8_KHR   = 0x93B7,
    GL_COMPRESSED_RGBA_ASTC_10x5_KHR  = 0x93B8,
    GL_COMPRESSED_RGBA_ASTC_10x6_KHR  = 0x93B9,
    GL_COMPRESSED_RGBA_ASTC_10x8_KHR  = 0x93BA,
    GL_COMPRESSED_RGBA_ASTC_10x10_KHR = 0x93BB,
    GL_COMPRESSED_RGBA_ASTC_12x10_KHR = 0x93BC,
    GL_COMPRESSED_RGBA_ASTC_12x12_KHR = 0x93BD,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = 0x93D0,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = 0x93D1,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = 0x93D2,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = 0x93D3,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = 0x93D4,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = 0x93D5,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = 0x93D6,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = 0x93D7,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = 0x93D8,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = 0x93D9,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = 0x93DA,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = 0x93DB,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = 0x93DC,
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = 0x93DD,
}

/* GL_KHR_debug */
enum {
    GL_DEBUG_OUTPUT_SYNCHRONOUS       = 0x8242,
    GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 0x8243,
    GL_DEBUG_CALLBACK_FUNCTION        = 0x8244,
    GL_DEBUG_CALLBACK_USER_PARAM      = 0x8245,
    GL_DEBUG_SOURCE_API               = 0x8246,
    GL_DEBUG_SOURCE_WINDOW_SYSTEM     = 0x8247,
    GL_DEBUG_SOURCE_SHADER_COMPILER   = 0x8248,
    GL_DEBUG_SOURCE_THIRD_PARTY       = 0x8249,
    GL_DEBUG_SOURCE_APPLICATION       = 0x824A,
    GL_DEBUG_SOURCE_OTHER             = 0x824B,
    GL_DEBUG_TYPE_ERROR               = 0x824C,
    GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR = 0x824D,
    GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR  = 0x824E,
    GL_DEBUG_TYPE_PORTABILITY         = 0x824F,
    GL_DEBUG_TYPE_PERFORMANCE         = 0x8250,
    GL_DEBUG_TYPE_OTHER               = 0x8251,
    GL_DEBUG_TYPE_MARKER              = 0x8268,
    GL_DEBUG_TYPE_PUSH_GROUP          = 0x8269,
    GL_DEBUG_TYPE_POP_GROUP           = 0x826A,
    GL_DEBUG_SEVERITY_NOTIFICATION    = 0x826B,
    GL_MAX_DEBUG_GROUP_STACK_DEPTH    = 0x826C,
    GL_DEBUG_GROUP_STACK_DEPTH        = 0x826D,
    GL_BUFFER                         = 0x82E0,
    GL_SHADER                         = 0x82E1,
    GL_PROGRAM                        = 0x82E2,
    GL_QUERY                          = 0x82E3,
    GL_PROGRAM_PIPELINE               = 0x82E4,
    GL_SAMPLER                        = 0x82E6,
    GL_DISPLAY_LIST                   = 0x82E7,
    GL_MAX_LABEL_LENGTH               = 0x82E8,
    GL_MAX_DEBUG_MESSAGE_LENGTH       = 0x9143,
    GL_MAX_DEBUG_LOGGED_MESSAGES      = 0x9144,
    GL_DEBUG_LOGGED_MESSAGES          = 0x9145,
    GL_DEBUG_SEVERITY_HIGH            = 0x9146,
    GL_DEBUG_SEVERITY_MEDIUM          = 0x9147,
    GL_DEBUG_SEVERITY_LOW             = 0x9148,
    GL_DEBUG_OUTPUT                   = 0x92E0,
    GL_CONTEXT_FLAG_DEBUG_BIT         = 0x00000002,
}

/* GL_ARB_arrays_of_arrays */

/* GL_ARB_clear_buffer_object */

/* GL_ARB_compute_shader */
enum {
    GL_COMPUTE_SHADER                 = 0x91B9,
    GL_MAX_COMPUTE_UNIFORM_BLOCKS     = 0x91BB,
    GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = 0x91BC,
    GL_MAX_COMPUTE_IMAGE_UNIFORMS     = 0x91BD,
    GL_MAX_COMPUTE_SHARED_MEMORY_SIZE = 0x8262,
    GL_MAX_COMPUTE_UNIFORM_COMPONENTS = 0x8263,
    GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = 0x8264,
    GL_MAX_COMPUTE_ATOMIC_COUNTERS    = 0x8265,
    GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = 0x8266,
    GL_MAX_COMPUTE_LOCAL_INVOCATIONS  = 0x90EB,
    GL_MAX_COMPUTE_WORK_GROUP_COUNT   = 0x91BE,
    GL_MAX_COMPUTE_WORK_GROUP_SIZE    = 0x91BF,
    GL_COMPUTE_LOCAL_WORK_SIZE        = 0x8267,
    GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = 0x90EC,
    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = 0x90ED,
    GL_DISPATCH_INDIRECT_BUFFER       = 0x90EE,
    GL_DISPATCH_INDIRECT_BUFFER_BINDING = 0x90EF,
    GL_COMPUTE_SHADER_BIT             = 0x00000020,
}

/* GL_ARB_copy_image */

/* GL_ARB_texture_view */
enum {
    GL_TEXTURE_VIEW_MIN_LEVEL         = 0x82DB,
    GL_TEXTURE_VIEW_NUM_LEVELS        = 0x82DC,
    GL_TEXTURE_VIEW_MIN_LAYER         = 0x82DD,
    GL_TEXTURE_VIEW_NUM_LAYERS        = 0x82DE,
    GL_TEXTURE_IMMUTABLE_LEVELS       = 0x82DF,
}

/* GL_ARB_vertex_attrib_binding */
enum {
    GL_VERTEX_ATTRIB_BINDING          = 0x82D4,
    GL_VERTEX_ATTRIB_RELATIVE_OFFSET  = 0x82D5,
    GL_VERTEX_BINDING_DIVISOR         = 0x82D6,
    GL_VERTEX_BINDING_OFFSET          = 0x82D7,
    GL_VERTEX_BINDING_STRIDE          = 0x82D8,
    GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D9,
    GL_MAX_VERTEX_ATTRIB_BINDINGS     = 0x82DA,
}

/* GL_ARB_robustness_isolation */

/* GL_ARB_ES3_compatibility */
enum {
    GL_COMPRESSED_RGB8_ETC2           = 0x9274,
    GL_COMPRESSED_SRGB8_ETC2          = 0x9275,
    GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9276,
    GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9277,
    GL_COMPRESSED_RGBA8_ETC2_EAC      = 0x9278,
    GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 0x9279,
    GL_COMPRESSED_R11_EAC             = 0x9270,
    GL_COMPRESSED_SIGNED_R11_EAC      = 0x9271,
    GL_COMPRESSED_RG11_EAC            = 0x9272,
    GL_COMPRESSED_SIGNED_RG11_EAC     = 0x9273,
    GL_PRIMITIVE_RESTART_FIXED_INDEX  = 0x8D69,
    GL_ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8D6A,
    GL_MAX_ELEMENT_INDEX              = 0x8D6B,
}

/* GL_ARB_explicit_uniform_location */
enum {
    GL_MAX_UNIFORM_LOCATIONS          = 0x826E,
}

/* GL_ARB_fragment_layer_viewport */

/* GL_ARB_framebuffer_no_attachments */
enum {
    GL_FRAMEBUFFER_DEFAULT_WIDTH      = 0x9310,
    GL_FRAMEBUFFER_DEFAULT_HEIGHT     = 0x9311,
    GL_FRAMEBUFFER_DEFAULT_LAYERS     = 0x9312,
    GL_FRAMEBUFFER_DEFAULT_SAMPLES    = 0x9313,
    GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = 0x9314,
    GL_MAX_FRAMEBUFFER_WIDTH          = 0x9315,
    GL_MAX_FRAMEBUFFER_HEIGHT         = 0x9316,
    GL_MAX_FRAMEBUFFER_LAYERS         = 0x9317,
    GL_MAX_FRAMEBUFFER_SAMPLES        = 0x9318,
}

/* GL_ARB_internalformat_query2 */
enum {
    GL_INTERNALFORMAT_SUPPORTED       = 0x826F,
    GL_INTERNALFORMAT_PREFERRED       = 0x8270,
    GL_INTERNALFORMAT_RED_SIZE        = 0x8271,
    GL_INTERNALFORMAT_GREEN_SIZE      = 0x8272,
    GL_INTERNALFORMAT_BLUE_SIZE       = 0x8273,
    GL_INTERNALFORMAT_ALPHA_SIZE      = 0x8274,
    GL_INTERNALFORMAT_DEPTH_SIZE      = 0x8275,
    GL_INTERNALFORMAT_STENCIL_SIZE    = 0x8276,
    GL_INTERNALFORMAT_SHARED_SIZE     = 0x8277,
    GL_INTERNALFORMAT_RED_TYPE        = 0x8278,
    GL_INTERNALFORMAT_GREEN_TYPE      = 0x8279,
    GL_INTERNALFORMAT_BLUE_TYPE       = 0x827A,
    GL_INTERNALFORMAT_ALPHA_TYPE      = 0x827B,
    GL_INTERNALFORMAT_DEPTH_TYPE      = 0x827C,
    GL_INTERNALFORMAT_STENCIL_TYPE    = 0x827D,
    GL_MAX_WIDTH                      = 0x827E,
    GL_MAX_HEIGHT                     = 0x827F,
    GL_MAX_DEPTH                      = 0x8280,
    GL_MAX_LAYERS                     = 0x8281,
    GL_MAX_COMBINED_DIMENSIONS        = 0x8282,
    GL_COLOR_COMPONENTS               = 0x8283,
    GL_DEPTH_COMPONENTS               = 0x8284,
    GL_STENCIL_COMPONENTS             = 0x8285,
    GL_COLOR_RENDERABLE               = 0x8286,
    GL_DEPTH_RENDERABLE               = 0x8287,
    GL_STENCIL_RENDERABLE             = 0x8288,
    GL_FRAMEBUFFER_RENDERABLE         = 0x8289,
    GL_FRAMEBUFFER_RENDERABLE_LAYERED = 0x828A,
    GL_FRAMEBUFFER_BLEND              = 0x828B,
    GL_READ_PIXELS                    = 0x828C,
    GL_READ_PIXELS_FORMAT             = 0x828D,
    GL_READ_PIXELS_TYPE               = 0x828E,
    GL_TEXTURE_IMAGE_FORMAT           = 0x828F,
    GL_TEXTURE_IMAGE_TYPE             = 0x8290,
    GL_GET_TEXTURE_IMAGE_FORMAT       = 0x8291,
    GL_GET_TEXTURE_IMAGE_TYPE         = 0x8292,
    GL_MIPMAP                         = 0x8293,
    GL_MANUAL_GENERATE_MIPMAP         = 0x8294,
    GL_AUTO_GENERATE_MIPMAP           = 0x8295,
    GL_COLOR_ENCODING                 = 0x8296,
    GL_SRGB_READ                      = 0x8297,
    GL_SRGB_WRITE                     = 0x8298,
    GL_SRGB_DECODE_ARB                = 0x8299,
    GL_FILTER                         = 0x829A,
    GL_VERTEX_TEXTURE                 = 0x829B,
    GL_TESS_CONTROL_TEXTURE           = 0x829C,
    GL_TESS_EVALUATION_TEXTURE        = 0x829D,
    GL_GEOMETRY_TEXTURE               = 0x829E,
    GL_FRAGMENT_TEXTURE               = 0x829F,
    GL_COMPUTE_TEXTURE                = 0x82A0,
    GL_TEXTURE_SHADOW                 = 0x82A1,
    GL_TEXTURE_GATHER                 = 0x82A2,
    GL_TEXTURE_GATHER_SHADOW          = 0x82A3,
    GL_SHADER_IMAGE_LOAD              = 0x82A4,
    GL_SHADER_IMAGE_STORE             = 0x82A5,
    GL_SHADER_IMAGE_ATOMIC            = 0x82A6,
    GL_IMAGE_TEXEL_SIZE               = 0x82A7,
    GL_IMAGE_COMPATIBILITY_CLASS      = 0x82A8,
    GL_IMAGE_PIXEL_FORMAT             = 0x82A9,
    GL_IMAGE_PIXEL_TYPE               = 0x82AA,
    GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = 0x82AC,
    GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = 0x82AD,
    GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = 0x82AE,
    GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = 0x82AF,
    GL_TEXTURE_COMPRESSED_BLOCK_WIDTH = 0x82B1,
    GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT = 0x82B2,
    GL_TEXTURE_COMPRESSED_BLOCK_SIZE  = 0x82B3,
    GL_CLEAR_BUFFER                   = 0x82B4,
    GL_TEXTURE_VIEW                   = 0x82B5,
    GL_VIEW_COMPATIBILITY_CLASS       = 0x82B6,
    GL_FULL_SUPPORT                   = 0x82B7,
    GL_CAVEAT_SUPPORT                 = 0x82B8,
    GL_IMAGE_CLASS_4_X_32             = 0x82B9,
    GL_IMAGE_CLASS_2_X_32             = 0x82BA,
    GL_IMAGE_CLASS_1_X_32             = 0x82BB,
    GL_IMAGE_CLASS_4_X_16             = 0x82BC,
    GL_IMAGE_CLASS_2_X_16             = 0x82BD,
    GL_IMAGE_CLASS_1_X_16             = 0x82BE,
    GL_IMAGE_CLASS_4_X_8              = 0x82BF,
    GL_IMAGE_CLASS_2_X_8              = 0x82C0,
    GL_IMAGE_CLASS_1_X_8              = 0x82C1,
    GL_IMAGE_CLASS_11_11_10           = 0x82C2,
    GL_IMAGE_CLASS_10_10_10_2         = 0x82C3,
    GL_VIEW_CLASS_128_BITS            = 0x82C4,
    GL_VIEW_CLASS_96_BITS             = 0x82C5,
    GL_VIEW_CLASS_64_BITS             = 0x82C6,
    GL_VIEW_CLASS_48_BITS             = 0x82C7,
    GL_VIEW_CLASS_32_BITS             = 0x82C8,
    GL_VIEW_CLASS_24_BITS             = 0x82C9,
    GL_VIEW_CLASS_16_BITS             = 0x82CA,
    GL_VIEW_CLASS_8_BITS              = 0x82CB,
    GL_VIEW_CLASS_S3TC_DXT1_RGB       = 0x82CC,
    GL_VIEW_CLASS_S3TC_DXT1_RGBA      = 0x82CD,
    GL_VIEW_CLASS_S3TC_DXT3_RGBA      = 0x82CE,
    GL_VIEW_CLASS_S3TC_DXT5_RGBA      = 0x82CF,
    GL_VIEW_CLASS_RGTC1_RED           = 0x82D0,
    GL_VIEW_CLASS_RGTC2_RG            = 0x82D1,
    GL_VIEW_CLASS_BPTC_UNORM          = 0x82D2,
    GL_VIEW_CLASS_BPTC_FLOAT          = 0x82D3,
}

/* GL_ARB_invalidate_subdata */

/* GL_ARB_multi_draw_indirect */

/* GL_ARB_program_interface_query */
enum {
    GL_UNIFORM                        = 0x92E1,
    GL_UNIFORM_BLOCK                  = 0x92E2,
    GL_PROGRAM_INPUT                  = 0x92E3,
    GL_PROGRAM_OUTPUT                 = 0x92E4,
    GL_BUFFER_VARIABLE                = 0x92E5,
    GL_SHADER_STORAGE_BLOCK           = 0x92E6,
    GL_VERTEX_SUBROUTINE              = 0x92E8,
    GL_TESS_CONTROL_SUBROUTINE        = 0x92E9,
    GL_TESS_EVALUATION_SUBROUTINE     = 0x92EA,
    GL_GEOMETRY_SUBROUTINE            = 0x92EB,
    GL_FRAGMENT_SUBROUTINE            = 0x92EC,
    GL_COMPUTE_SUBROUTINE             = 0x92ED,
    GL_VERTEX_SUBROUTINE_UNIFORM      = 0x92EE,
    GL_TESS_CONTROL_SUBROUTINE_UNIFORM = 0x92EF,
    GL_TESS_EVALUATION_SUBROUTINE_UNIFORM = 0x92F0,
    GL_GEOMETRY_SUBROUTINE_UNIFORM    = 0x92F1,
    GL_FRAGMENT_SUBROUTINE_UNIFORM    = 0x92F2,
    GL_COMPUTE_SUBROUTINE_UNIFORM     = 0x92F3,
    GL_TRANSFORM_FEEDBACK_VARYING     = 0x92F4,
    GL_ACTIVE_RESOURCES               = 0x92F5,
    GL_MAX_NAME_LENGTH                = 0x92F6,
    GL_MAX_NUM_ACTIVE_VARIABLES       = 0x92F7,
    GL_MAX_NUM_COMPATIBLE_SUBROUTINES = 0x92F8,
    GL_NAME_LENGTH                    = 0x92F9,
    GL_TYPE                           = 0x92FA,
    GL_ARRAY_SIZE                     = 0x92FB,
    GL_OFFSET                         = 0x92FC,
    GL_BLOCK_INDEX                    = 0x92FD,
    GL_ARRAY_STRIDE                   = 0x92FE,
    GL_MATRIX_STRIDE                  = 0x92FF,
    GL_IS_ROW_MAJOR                   = 0x9300,
    GL_ATOMIC_COUNTER_BUFFER_INDEX    = 0x9301,
    GL_BUFFER_BINDING                 = 0x9302,
    GL_BUFFER_DATA_SIZE               = 0x9303,
    GL_NUM_ACTIVE_VARIABLES           = 0x9304,
    GL_ACTIVE_VARIABLES               = 0x9305,
    GL_REFERENCED_BY_VERTEX_SHADER    = 0x9306,
    GL_REFERENCED_BY_TESS_CONTROL_SHADER = 0x9307,
    GL_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x9308,
    GL_REFERENCED_BY_GEOMETRY_SHADER  = 0x9309,
    GL_REFERENCED_BY_FRAGMENT_SHADER  = 0x930A,
    GL_REFERENCED_BY_COMPUTE_SHADER   = 0x930B,
    GL_TOP_LEVEL_ARRAY_SIZE           = 0x930C,
    GL_TOP_LEVEL_ARRAY_STRIDE         = 0x930D,
    GL_LOCATION                       = 0x930E,
    GL_LOCATION_INDEX                 = 0x930F,
    GL_IS_PER_PATCH                   = 0x92E7,
}

/* GL_ARB_robust_buffer_access_behavior */

/* GL_ARB_shader_image_size */

/* GL_ARB_shader_storage_buffer_object */
enum {
    GL_SHADER_STORAGE_BUFFER          = 0x90D2,
    GL_SHADER_STORAGE_BUFFER_BINDING  = 0x90D3,
    GL_SHADER_STORAGE_BUFFER_START    = 0x90D4,
    GL_SHADER_STORAGE_BUFFER_SIZE     = 0x90D5,
    GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = 0x90D6,
    GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = 0x90D7,
    GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = 0x90D8,
    GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = 0x90D9,
    GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = 0x90DA,
    GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = 0x90DB,
    GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = 0x90DC,
    GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = 0x90DD,
    GL_MAX_SHADER_STORAGE_BLOCK_SIZE  = 0x90DE,
    GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = 0x90DF,
    GL_SHADER_STORAGE_BARRIER_BIT     = 0x2000,
    GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES = GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
}

/* GL_ARB_stencil_texturing */
enum {
    GL_DEPTH_STENCIL_TEXTURE_MODE     = 0x90EA,
}

/* GL_ARB_texture_buffer_range */
enum {
    GL_TEXTURE_BUFFER_OFFSET          = 0x919D,
    GL_TEXTURE_BUFFER_SIZE            = 0x919E,
    GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT = 0x919F,
}

/* GL_ARB_texture_query_levels */

/* GL_ARB_texture_storage_multisample */

/* GL_EXT_abgr */
enum {
    GL_ABGR_EXT                       = 0x8000,
}

/* GL_EXT_blend_color */
enum {
    GL_CONSTANT_COLOR_EXT             = 0x8001,
    GL_ONE_MINUS_CONSTANT_COLOR_EXT   = 0x8002,
    GL_CONSTANT_ALPHA_EXT             = 0x8003,
    GL_ONE_MINUS_CONSTANT_ALPHA_EXT   = 0x8004,
    GL_BLEND_COLOR_EXT                = 0x8005,
}

/* GL_EXT_polygon_offset */
enum {
    GL_POLYGON_OFFSET_EXT             = 0x8037,
    GL_POLYGON_OFFSET_FACTOR_EXT      = 0x8038,
    GL_POLYGON_OFFSET_BIAS_EXT        = 0x8039,
}

/* GL_EXT_texture */
enum {
    GL_ALPHA4_EXT                     = 0x803B,
    GL_ALPHA8_EXT                     = 0x803C,
    GL_ALPHA12_EXT                    = 0x803D,
    GL_ALPHA16_EXT                    = 0x803E,
    GL_LUMINANCE4_EXT                 = 0x803F,
    GL_LUMINANCE8_EXT                 = 0x8040,
    GL_LUMINANCE12_EXT                = 0x8041,
    GL_LUMINANCE16_EXT                = 0x8042,
    GL_LUMINANCE4_ALPHA4_EXT          = 0x8043,
    GL_LUMINANCE6_ALPHA2_EXT          = 0x8044,
    GL_LUMINANCE8_ALPHA8_EXT          = 0x8045,
    GL_LUMINANCE12_ALPHA4_EXT         = 0x8046,
    GL_LUMINANCE12_ALPHA12_EXT        = 0x8047,
    GL_LUMINANCE16_ALPHA16_EXT        = 0x8048,
    GL_INTENSITY_EXT                  = 0x8049,
    GL_INTENSITY4_EXT                 = 0x804A,
    GL_INTENSITY8_EXT                 = 0x804B,
    GL_INTENSITY12_EXT                = 0x804C,
    GL_INTENSITY16_EXT                = 0x804D,
    GL_RGB2_EXT                       = 0x804E,
    GL_RGB4_EXT                       = 0x804F,
    GL_RGB5_EXT                       = 0x8050,
    GL_RGB8_EXT                       = 0x8051,
    GL_RGB10_EXT                      = 0x8052,
    GL_RGB12_EXT                      = 0x8053,
    GL_RGB16_EXT                      = 0x8054,
    GL_RGBA2_EXT                      = 0x8055,
    GL_RGBA4_EXT                      = 0x8056,
    GL_RGB5_A1_EXT                    = 0x8057,
    GL_RGBA8_EXT                      = 0x8058,
    GL_RGB10_A2_EXT                   = 0x8059,
    GL_RGBA12_EXT                     = 0x805A,
    GL_RGBA16_EXT                     = 0x805B,
    GL_TEXTURE_RED_SIZE_EXT           = 0x805C,
    GL_TEXTURE_GREEN_SIZE_EXT         = 0x805D,
    GL_TEXTURE_BLUE_SIZE_EXT          = 0x805E,
    GL_TEXTURE_ALPHA_SIZE_EXT         = 0x805F,
    GL_TEXTURE_LUMINANCE_SIZE_EXT     = 0x8060,
    GL_TEXTURE_INTENSITY_SIZE_EXT     = 0x8061,
    GL_REPLACE_EXT                    = 0x8062,
    GL_PROXY_TEXTURE_1D_EXT           = 0x8063,
    GL_PROXY_TEXTURE_2D_EXT           = 0x8064,
    GL_TEXTURE_TOO_LARGE_EXT          = 0x8065,
}

/* GL_EXT_texture3D */
enum {
    GL_PACK_SKIP_IMAGES_EXT           = 0x806B,
    GL_PACK_IMAGE_HEIGHT_EXT          = 0x806C,
    GL_UNPACK_SKIP_IMAGES_EXT         = 0x806D,
    GL_UNPACK_IMAGE_HEIGHT_EXT        = 0x806E,
    GL_TEXTURE_3D_EXT                 = 0x806F,
    GL_PROXY_TEXTURE_3D_EXT           = 0x8070,
    GL_TEXTURE_DEPTH_EXT              = 0x8071,
    GL_TEXTURE_WRAP_R_EXT             = 0x8072,
    GL_MAX_3D_TEXTURE_SIZE_EXT        = 0x8073,
}

/* GL_SGIS_texture_filter4 */
enum {
    GL_FILTER4_SGIS                   = 0x8146,
    GL_TEXTURE_FILTER4_SIZE_SGIS      = 0x8147,
}

/* GL_EXT_subtexture */

/* GL_EXT_copy_texture */

/* GL_EXT_histogram */
enum {
    GL_HISTOGRAM_EXT                  = 0x8024,
    GL_PROXY_HISTOGRAM_EXT            = 0x8025,
    GL_HISTOGRAM_WIDTH_EXT            = 0x8026,
    GL_HISTOGRAM_FORMAT_EXT           = 0x8027,
    GL_HISTOGRAM_RED_SIZE_EXT         = 0x8028,
    GL_HISTOGRAM_GREEN_SIZE_EXT       = 0x8029,
    GL_HISTOGRAM_BLUE_SIZE_EXT        = 0x802A,
    GL_HISTOGRAM_ALPHA_SIZE_EXT       = 0x802B,
    GL_HISTOGRAM_LUMINANCE_SIZE_EXT   = 0x802C,
    GL_HISTOGRAM_SINK_EXT             = 0x802D,
    GL_MINMAX_EXT                     = 0x802E,
    GL_MINMAX_FORMAT_EXT              = 0x802F,
    GL_MINMAX_SINK_EXT                = 0x8030,
    GL_TABLE_TOO_LARGE_EXT            = 0x8031,
}

/* GL_EXT_convolution */
enum {
    GL_CONVOLUTION_1D_EXT             = 0x8010,
    GL_CONVOLUTION_2D_EXT             = 0x8011,
    GL_SEPARABLE_2D_EXT               = 0x8012,
    GL_CONVOLUTION_BORDER_MODE_EXT    = 0x8013,
    GL_CONVOLUTION_FILTER_SCALE_EXT   = 0x8014,
    GL_CONVOLUTION_FILTER_BIAS_EXT    = 0x8015,
    GL_REDUCE_EXT                     = 0x8016,
    GL_CONVOLUTION_FORMAT_EXT         = 0x8017,
    GL_CONVOLUTION_WIDTH_EXT          = 0x8018,
    GL_CONVOLUTION_HEIGHT_EXT         = 0x8019,
    GL_MAX_CONVOLUTION_WIDTH_EXT      = 0x801A,
    GL_MAX_CONVOLUTION_HEIGHT_EXT     = 0x801B,
    GL_POST_CONVOLUTION_RED_SCALE_EXT = 0x801C,
    GL_POST_CONVOLUTION_GREEN_SCALE_EXT = 0x801D,
    GL_POST_CONVOLUTION_BLUE_SCALE_EXT = 0x801E,
    GL_POST_CONVOLUTION_ALPHA_SCALE_EXT = 0x801F,
    GL_POST_CONVOLUTION_RED_BIAS_EXT  = 0x8020,
    GL_POST_CONVOLUTION_GREEN_BIAS_EXT = 0x8021,
    GL_POST_CONVOLUTION_BLUE_BIAS_EXT = 0x8022,
    GL_POST_CONVOLUTION_ALPHA_BIAS_EXT = 0x8023,
}

/* GL_SGI_color_matrix */
enum {
    GL_COLOR_MATRIX_SGI               = 0x80B1,
    GL_COLOR_MATRIX_STACK_DEPTH_SGI   = 0x80B2,
    GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI = 0x80B3,
    GL_POST_COLOR_MATRIX_RED_SCALE_SGI = 0x80B4,
    GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI = 0x80B5,
    GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI = 0x80B6,
    GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI = 0x80B7,
    GL_POST_COLOR_MATRIX_RED_BIAS_SGI = 0x80B8,
    GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI = 0x80B9,
    GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI = 0x80BA,
    GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI = 0x80BB,
}

/* GL_SGI_color_table */
enum {
    GL_COLOR_TABLE_SGI                = 0x80D0,
    GL_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D1,
    GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D2,
    GL_PROXY_COLOR_TABLE_SGI          = 0x80D3,
    GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D4,
    GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D5,
    GL_COLOR_TABLE_SCALE_SGI          = 0x80D6,
    GL_COLOR_TABLE_BIAS_SGI           = 0x80D7,
    GL_COLOR_TABLE_FORMAT_SGI         = 0x80D8,
    GL_COLOR_TABLE_WIDTH_SGI          = 0x80D9,
    GL_COLOR_TABLE_RED_SIZE_SGI       = 0x80DA,
    GL_COLOR_TABLE_GREEN_SIZE_SGI     = 0x80DB,
    GL_COLOR_TABLE_BLUE_SIZE_SGI      = 0x80DC,
    GL_COLOR_TABLE_ALPHA_SIZE_SGI     = 0x80DD,
    GL_COLOR_TABLE_LUMINANCE_SIZE_SGI = 0x80DE,
    GL_COLOR_TABLE_INTENSITY_SIZE_SGI = 0x80DF,
}

/* GL_SGIS_pixel_texture */
enum {
    GL_PIXEL_TEXTURE_SGIS             = 0x8353,
    GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS = 0x8354,
    GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS = 0x8355,
    GL_PIXEL_GROUP_COLOR_SGIS         = 0x8356,
}

/* GL_SGIX_pixel_texture */
enum {
    GL_PIXEL_TEX_GEN_SGIX             = 0x8139,
    GL_PIXEL_TEX_GEN_MODE_SGIX        = 0x832B,
}

/* GL_SGIS_texture4D */
enum {
    GL_PACK_SKIP_VOLUMES_SGIS         = 0x8130,
    GL_PACK_IMAGE_DEPTH_SGIS          = 0x8131,
    GL_UNPACK_SKIP_VOLUMES_SGIS       = 0x8132,
    GL_UNPACK_IMAGE_DEPTH_SGIS        = 0x8133,
    GL_TEXTURE_4D_SGIS                = 0x8134,
    GL_PROXY_TEXTURE_4D_SGIS          = 0x8135,
    GL_TEXTURE_4DSIZE_SGIS            = 0x8136,
    GL_TEXTURE_WRAP_Q_SGIS            = 0x8137,
    GL_MAX_4D_TEXTURE_SIZE_SGIS       = 0x8138,
    GL_TEXTURE_4D_BINDING_SGIS        = 0x814F,
}

/* GL_SGI_texture_color_table */
enum {
    GL_TEXTURE_COLOR_TABLE_SGI        = 0x80BC,
    GL_PROXY_TEXTURE_COLOR_TABLE_SGI  = 0x80BD,
}

/* GL_EXT_cmyka */
enum {
    GL_CMYK_EXT                       = 0x800C,
    GL_CMYKA_EXT                      = 0x800D,
    GL_PACK_CMYK_HINT_EXT             = 0x800E,
    GL_UNPACK_CMYK_HINT_EXT           = 0x800F,
}

/* GL_EXT_texture_object */
enum {
    GL_TEXTURE_PRIORITY_EXT           = 0x8066,
    GL_TEXTURE_RESIDENT_EXT           = 0x8067,
    GL_TEXTURE_1D_BINDING_EXT         = 0x8068,
    GL_TEXTURE_2D_BINDING_EXT         = 0x8069,
    GL_TEXTURE_3D_BINDING_EXT         = 0x806A,
}

/* GL_SGIS_detail_texture */
enum {
    GL_DETAIL_TEXTURE_2D_SGIS         = 0x8095,
    GL_DETAIL_TEXTURE_2D_BINDING_SGIS = 0x8096,
    GL_LINEAR_DETAIL_SGIS             = 0x8097,
    GL_LINEAR_DETAIL_ALPHA_SGIS       = 0x8098,
    GL_LINEAR_DETAIL_COLOR_SGIS       = 0x8099,
    GL_DETAIL_TEXTURE_LEVEL_SGIS      = 0x809A,
    GL_DETAIL_TEXTURE_MODE_SGIS       = 0x809B,
    GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS = 0x809C,
}

/* GL_SGIS_sharpen_texture */
enum {
    GL_LINEAR_SHARPEN_SGIS            = 0x80AD,
    GL_LINEAR_SHARPEN_ALPHA_SGIS      = 0x80AE,
    GL_LINEAR_SHARPEN_COLOR_SGIS      = 0x80AF,
    GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS = 0x80B0,
}

/* GL_EXT_packed_pixels */
enum {
    GL_UNSIGNED_BYTE_3_3_2_EXT        = 0x8032,
    GL_UNSIGNED_SHORT_4_4_4_4_EXT     = 0x8033,
    GL_UNSIGNED_SHORT_5_5_5_1_EXT     = 0x8034,
    GL_UNSIGNED_INT_8_8_8_8_EXT       = 0x8035,
    GL_UNSIGNED_INT_10_10_10_2_EXT    = 0x8036,
}

/* GL_SGIS_texture_lod */
enum {
    GL_TEXTURE_MIN_LOD_SGIS           = 0x813A,
    GL_TEXTURE_MAX_LOD_SGIS           = 0x813B,
    GL_TEXTURE_BASE_LEVEL_SGIS        = 0x813C,
    GL_TEXTURE_MAX_LEVEL_SGIS         = 0x813D,
}

/* GL_SGIS_multisample */
enum {
    GL_MULTISAMPLE_SGIS               = 0x809D,
    GL_SAMPLE_ALPHA_TO_MASK_SGIS      = 0x809E,
    GL_SAMPLE_ALPHA_TO_ONE_SGIS       = 0x809F,
    GL_SAMPLE_MASK_SGIS               = 0x80A0,
    GL_1PASS_SGIS                     = 0x80A1,
    GL_2PASS_0_SGIS                   = 0x80A2,
    GL_2PASS_1_SGIS                   = 0x80A3,
    GL_4PASS_0_SGIS                   = 0x80A4,
    GL_4PASS_1_SGIS                   = 0x80A5,
    GL_4PASS_2_SGIS                   = 0x80A6,
    GL_4PASS_3_SGIS                   = 0x80A7,
    GL_SAMPLE_BUFFERS_SGIS            = 0x80A8,
    GL_SAMPLES_SGIS                   = 0x80A9,
    GL_SAMPLE_MASK_VALUE_SGIS         = 0x80AA,
    GL_SAMPLE_MASK_INVERT_SGIS        = 0x80AB,
    GL_SAMPLE_PATTERN_SGIS            = 0x80AC,
}

/* GL_EXT_rescale_normal */
enum {
    GL_RESCALE_NORMAL_EXT             = 0x803A,
}

/* GL_EXT_vertex_array */
enum {
    GL_VERTEX_ARRAY_EXT               = 0x8074,
    GL_NORMAL_ARRAY_EXT               = 0x8075,
    GL_COLOR_ARRAY_EXT                = 0x8076,
    GL_INDEX_ARRAY_EXT                = 0x8077,
    GL_TEXTURE_COORD_ARRAY_EXT        = 0x8078,
    GL_EDGE_FLAG_ARRAY_EXT            = 0x8079,
    GL_VERTEX_ARRAY_SIZE_EXT          = 0x807A,
    GL_VERTEX_ARRAY_TYPE_EXT          = 0x807B,
    GL_VERTEX_ARRAY_STRIDE_EXT        = 0x807C,
    GL_VERTEX_ARRAY_COUNT_EXT         = 0x807D,
    GL_NORMAL_ARRAY_TYPE_EXT          = 0x807E,
    GL_NORMAL_ARRAY_STRIDE_EXT        = 0x807F,
    GL_NORMAL_ARRAY_COUNT_EXT         = 0x8080,
    GL_COLOR_ARRAY_SIZE_EXT           = 0x8081,
    GL_COLOR_ARRAY_TYPE_EXT           = 0x8082,
    GL_COLOR_ARRAY_STRIDE_EXT         = 0x8083,
    GL_COLOR_ARRAY_COUNT_EXT          = 0x8084,
    GL_INDEX_ARRAY_TYPE_EXT           = 0x8085,
    GL_INDEX_ARRAY_STRIDE_EXT         = 0x8086,
    GL_INDEX_ARRAY_COUNT_EXT          = 0x8087,
    GL_TEXTURE_COORD_ARRAY_SIZE_EXT   = 0x8088,
    GL_TEXTURE_COORD_ARRAY_TYPE_EXT   = 0x8089,
    GL_TEXTURE_COORD_ARRAY_STRIDE_EXT = 0x808A,
    GL_TEXTURE_COORD_ARRAY_COUNT_EXT  = 0x808B,
    GL_EDGE_FLAG_ARRAY_STRIDE_EXT     = 0x808C,
    GL_EDGE_FLAG_ARRAY_COUNT_EXT      = 0x808D,
    GL_VERTEX_ARRAY_POINTER_EXT       = 0x808E,
    GL_NORMAL_ARRAY_POINTER_EXT       = 0x808F,
    GL_COLOR_ARRAY_POINTER_EXT        = 0x8090,
    GL_INDEX_ARRAY_POINTER_EXT        = 0x8091,
    GL_TEXTURE_COORD_ARRAY_POINTER_EXT = 0x8092,
    GL_EDGE_FLAG_ARRAY_POINTER_EXT    = 0x8093,
}

/* GL_EXT_misc_attribute */

/* GL_SGIS_generate_mipmap */
enum {
    GL_GENERATE_MIPMAP_SGIS           = 0x8191,
    GL_GENERATE_MIPMAP_HINT_SGIS      = 0x8192,
}

/* GL_SGIX_clipmap */
enum {
    GL_LINEAR_CLIPMAP_LINEAR_SGIX     = 0x8170,
    GL_TEXTURE_CLIPMAP_CENTER_SGIX    = 0x8171,
    GL_TEXTURE_CLIPMAP_FRAME_SGIX     = 0x8172,
    GL_TEXTURE_CLIPMAP_OFFSET_SGIX    = 0x8173,
    GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = 0x8174,
    GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = 0x8175,
    GL_TEXTURE_CLIPMAP_DEPTH_SGIX     = 0x8176,
    GL_MAX_CLIPMAP_DEPTH_SGIX         = 0x8177,
    GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX = 0x8178,
    GL_NEAREST_CLIPMAP_NEAREST_SGIX   = 0x844D,
    GL_NEAREST_CLIPMAP_LINEAR_SGIX    = 0x844E,
    GL_LINEAR_CLIPMAP_NEAREST_SGIX    = 0x844F
}

/* GL_SGIX_shadow */
enum {
    GL_TEXTURE_COMPARE_SGIX           = 0x819A,
    GL_TEXTURE_COMPARE_OPERATOR_SGIX  = 0x819B,
    GL_TEXTURE_LEQUAL_R_SGIX          = 0x819C,
    GL_TEXTURE_GEQUAL_R_SGIX          = 0x819D,
}

/* GL_SGIS_texture_edge_clamp */
enum {
    GL_CLAMP_TO_EDGE_SGIS             = 0x812F,
}

/* GL_SGIS_texture_border_clamp */
enum {
    GL_CLAMP_TO_BORDER_SGIS           = 0x812D,
}

/* GL_EXT_blend_minmax */
enum {
    GL_FUNC_ADD_EXT                   = 0x8006,
    GL_MIN_EXT                        = 0x8007,
    GL_MAX_EXT                        = 0x8008,
    GL_BLEND_EQUATION_EXT             = 0x8009,
}

/* GL_EXT_blend_subtract */
enum {
    GL_FUNC_SUBTRACT_EXT              = 0x800A,
    GL_FUNC_REVERSE_SUBTRACT_EXT      = 0x800B,
}

/* GL_EXT_blend_logic_op */

/* GL_SGIX_interlace */
enum {
    GL_INTERLACE_SGIX                 = 0x8094,
}

/* GL_SGIX_pixel_tiles */
enum {
    GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX = 0x813E,
    GL_PIXEL_TILE_CACHE_INCREMENT_SGIX = 0x813F,
    GL_PIXEL_TILE_WIDTH_SGIX          = 0x8140,
    GL_PIXEL_TILE_HEIGHT_SGIX         = 0x8141,
    GL_PIXEL_TILE_GRID_WIDTH_SGIX     = 0x8142,
    GL_PIXEL_TILE_GRID_HEIGHT_SGIX    = 0x8143,
    GL_PIXEL_TILE_GRID_DEPTH_SGIX     = 0x8144,
    GL_PIXEL_TILE_CACHE_SIZE_SGIX     = 0x8145,
}

/* GL_SGIS_texture_select */
enum {
    GL_DUAL_ALPHA4_SGIS               = 0x8110,
    GL_DUAL_ALPHA8_SGIS               = 0x8111,
    GL_DUAL_ALPHA12_SGIS              = 0x8112,
    GL_DUAL_ALPHA16_SGIS              = 0x8113,
    GL_DUAL_LUMINANCE4_SGIS           = 0x8114,
    GL_DUAL_LUMINANCE8_SGIS           = 0x8115,
    GL_DUAL_LUMINANCE12_SGIS          = 0x8116,
    GL_DUAL_LUMINANCE16_SGIS          = 0x8117,
    GL_DUAL_INTENSITY4_SGIS           = 0x8118,
    GL_DUAL_INTENSITY8_SGIS           = 0x8119,
    GL_DUAL_INTENSITY12_SGIS          = 0x811A,
    GL_DUAL_INTENSITY16_SGIS          = 0x811B,
    GL_DUAL_LUMINANCE_ALPHA4_SGIS     = 0x811C,
    GL_DUAL_LUMINANCE_ALPHA8_SGIS     = 0x811D,
    GL_QUAD_ALPHA4_SGIS               = 0x811E,
    GL_QUAD_ALPHA8_SGIS               = 0x811F,
    GL_QUAD_LUMINANCE4_SGIS           = 0x8120,
    GL_QUAD_LUMINANCE8_SGIS           = 0x8121,
    GL_QUAD_INTENSITY4_SGIS           = 0x8122,
    GL_QUAD_INTENSITY8_SGIS           = 0x8123,
    GL_DUAL_TEXTURE_SELECT_SGIS       = 0x8124,
    GL_QUAD_TEXTURE_SELECT_SGIS       = 0x8125,
}

/* GL_SGIX_sprite */
enum {
    GL_SPRITE_SGIX                    = 0x8148,
    GL_SPRITE_MODE_SGIX               = 0x8149,
    GL_SPRITE_AXIS_SGIX               = 0x814A,
    GL_SPRITE_TRANSLATION_SGIX        = 0x814B,
    GL_SPRITE_AXIAL_SGIX              = 0x814C,
    GL_SPRITE_OBJECT_ALIGNED_SGIX     = 0x814D,
    GL_SPRITE_EYE_ALIGNED_SGIX        = 0x814E,
}

/* GL_SGIX_texture_multi_buffer */
enum {
    GL_TEXTURE_MULTI_BUFFER_HINT_SGIX = 0x812E,
}

/* GL_EXT_point_parameters */
enum {
    GL_POINT_SIZE_MIN_EXT             = 0x8126,
    GL_POINT_SIZE_MAX_EXT             = 0x8127,
    GL_POINT_FADE_THRESHOLD_SIZE_EXT  = 0x8128,
    GL_DISTANCE_ATTENUATION_EXT       = 0x8129,
}

/* GL_SGIS_point_parameters */
enum {
    GL_POINT_SIZE_MIN_SGIS            = 0x8126,
    GL_POINT_SIZE_MAX_SGIS            = 0x8127,
    GL_POINT_FADE_THRESHOLD_SIZE_SGIS = 0x8128,
    GL_DISTANCE_ATTENUATION_SGIS      = 0x8129,
}

/* GL_SGIX_instruments */
enum {
    GL_INSTRUMENT_BUFFER_POINTER_SGIX = 0x8180,
    GL_INSTRUMENT_MEASUREMENTS_SGIX   = 0x8181,
}

/* GL_SGIX_texture_scale_bias */
enum {
    GL_POST_TEXTURE_FILTER_BIAS_SGIX  = 0x8179,
    GL_POST_TEXTURE_FILTER_SCALE_SGIX = 0x817A,
    GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = 0x817B,
    GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = 0x817C,
}

/* GL_SGIX_framezoom */
enum {
    GL_FRAMEZOOM_SGIX                 = 0x818B,
    GL_FRAMEZOOM_FACTOR_SGIX          = 0x818C,
    GL_MAX_FRAMEZOOM_FACTOR_SGIX      = 0x818D,
}

/* GL_SGIX_tag_sample_buffer */

/* GL_FfdMaskSGIX */
enum {
    GL_TEXTURE_DEFORMATION_BIT_SGIX   = 0x00000001,
    GL_GEOMETRY_DEFORMATION_BIT_SGIX  = 0x00000002,
}

/* GL_SGIX_polynomial_ffd */
enum {
    GL_GEOMETRY_DEFORMATION_SGIX      = 0x8194,
    GL_TEXTURE_DEFORMATION_SGIX       = 0x8195,
    GL_DEFORMATIONS_MASK_SGIX         = 0x8196,
    GL_MAX_DEFORMATION_ORDER_SGIX     = 0x8197,
}

/* GL_SGIX_reference_plane */
enum {
    GL_REFERENCE_PLANE_SGIX           = 0x817D,
    GL_REFERENCE_PLANE_EQUATION_SGIX  = 0x817E,
}

/* GL_SGIX_flush_raster */

/* GL_SGIX_depth_texture */
enum {
    GL_DEPTH_COMPONENT16_SGIX         = 0x81A5,
    GL_DEPTH_COMPONENT24_SGIX         = 0x81A6,
    GL_DEPTH_COMPONENT32_SGIX         = 0x81A7,
}

/* GL_SGIS_fog_function */
enum {
    GL_FOG_FUNC_SGIS                  = 0x812A,
    GL_FOG_FUNC_POINTS_SGIS           = 0x812B,
    GL_MAX_FOG_FUNC_POINTS_SGIS       = 0x812C,
}

/* GL_SGIX_fog_offset */
enum {
    GL_FOG_OFFSET_SGIX                = 0x8198,
    GL_FOG_OFFSET_VALUE_SGIX          = 0x8199,
}

/* GL_HP_image_transform */
enum {
    GL_IMAGE_SCALE_X_HP               = 0x8155,
    GL_IMAGE_SCALE_Y_HP               = 0x8156,
    GL_IMAGE_TRANSLATE_X_HP           = 0x8157,
    GL_IMAGE_TRANSLATE_Y_HP           = 0x8158,
    GL_IMAGE_ROTATE_ANGLE_HP          = 0x8159,
    GL_IMAGE_ROTATE_ORIGIN_X_HP       = 0x815A,
    GL_IMAGE_ROTATE_ORIGIN_Y_HP       = 0x815B,
    GL_IMAGE_MAG_FILTER_HP            = 0x815C,
    GL_IMAGE_MIN_FILTER_HP            = 0x815D,
    GL_IMAGE_CUBIC_WEIGHT_HP          = 0x815E,
    GL_CUBIC_HP                       = 0x815F,
    GL_AVERAGE_HP                     = 0x8160,
    GL_IMAGE_TRANSFORM_2D_HP          = 0x8161,
    GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP = 0x8162,
    GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP = 0x8163,
}

/* GL_HP_convolution_border_modes */
enum {
    GL_IGNORE_BORDER_HP               = 0x8150,
    GL_CONSTANT_BORDER_HP             = 0x8151,
    GL_REPLICATE_BORDER_HP            = 0x8153,
    GL_CONVOLUTION_BORDER_COLOR_HP    = 0x8154,
}

/* GL_INGR_palette_buffer */

/* GL_SGIX_texture_add_env */
enum {
    GL_TEXTURE_ENV_BIAS_SGIX          = 0x80BE,
}

/* GL_EXT_color_subtable */

/* GL_PGI_vertex_hints */
enum {
    GL_VERTEX_DATA_HINT_PGI           = 0x1A22A,
    GL_VERTEX_CONSISTENT_HINT_PGI     = 0x1A22B,
    GL_MATERIAL_SIDE_HINT_PGI         = 0x1A22C,
    GL_MAX_VERTEX_HINT_PGI            = 0x1A22D,
    GL_COLOR3_BIT_PGI                 = 0x00010000,
    GL_COLOR4_BIT_PGI                 = 0x00020000,
    GL_EDGEFLAG_BIT_PGI               = 0x00040000,
    GL_INDEX_BIT_PGI                  = 0x00080000,
    GL_MAT_AMBIENT_BIT_PGI            = 0x00100000,
    GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI = 0x00200000,
    GL_MAT_DIFFUSE_BIT_PGI            = 0x00400000,
    GL_MAT_EMISSION_BIT_PGI           = 0x00800000,
    GL_MAT_COLOR_INDEXES_BIT_PGI      = 0x01000000,
    GL_MAT_SHININESS_BIT_PGI          = 0x02000000,
    GL_MAT_SPECULAR_BIT_PGI           = 0x04000000,
    GL_NORMAL_BIT_PGI                 = 0x08000000,
    GL_TEXCOORD1_BIT_PGI              = 0x10000000,
    GL_TEXCOORD2_BIT_PGI              = 0x20000000,
    GL_TEXCOORD3_BIT_PGI              = 0x40000000,
    GL_TEXCOORD4_BIT_PGI              = 0x80000000,
    GL_VERTEX23_BIT_PGI               = 0x00000004,
    GL_VERTEX4_BIT_PGI                = 0x00000008,
}

/* GL_PGI_misc_hints */
enum {
    GL_PREFER_DOUBLEBUFFER_HINT_PGI   = 0x1A1F8,
    GL_CONSERVE_MEMORY_HINT_PGI       = 0x1A1FD,
    GL_RECLAIM_MEMORY_HINT_PGI        = 0x1A1FE,
    GL_NATIVE_GRAPHICS_HANDLE_PGI     = 0x1A202,
    GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI = 0x1A203,
    GL_NATIVE_GRAPHICS_END_HINT_PGI   = 0x1A204,
    GL_ALWAYS_FAST_HINT_PGI           = 0x1A20C,
    GL_ALWAYS_SOFT_HINT_PGI           = 0x1A20D,
    GL_ALLOW_DRAW_OBJ_HINT_PGI        = 0x1A20E,
    GL_ALLOW_DRAW_WIN_HINT_PGI        = 0x1A20F,
    GL_ALLOW_DRAW_FRG_HINT_PGI        = 0x1A210,
    GL_ALLOW_DRAW_MEM_HINT_PGI        = 0x1A211,
    GL_STRICT_DEPTHFUNC_HINT_PGI      = 0x1A216,
    GL_STRICT_LIGHTING_HINT_PGI       = 0x1A217,
    GL_STRICT_SCISSOR_HINT_PGI        = 0x1A218,
    GL_FULL_STIPPLE_HINT_PGI          = 0x1A219,
    GL_CLIP_NEAR_HINT_PGI             = 0x1A220,
    GL_CLIP_FAR_HINT_PGI              = 0x1A221,
    GL_WIDE_LINE_HINT_PGI             = 0x1A222,
    GL_BACK_NORMALS_HINT_PGI          = 0x1A223,
}

/* GL_EXT_paletted_texture */
enum {
    GL_COLOR_INDEX1_EXT               = 0x80E2,
    GL_COLOR_INDEX2_EXT               = 0x80E3,
    GL_COLOR_INDEX4_EXT               = 0x80E4,
    GL_COLOR_INDEX8_EXT               = 0x80E5,
    GL_COLOR_INDEX12_EXT              = 0x80E6,
    GL_COLOR_INDEX16_EXT              = 0x80E7,
    GL_TEXTURE_INDEX_SIZE_EXT         = 0x80ED,
}

/* GL_EXT_clip_volume_hint */
enum {
    GL_CLIP_VOLUME_CLIPPING_HINT_EXT  = 0x80F0,
}

/* GL_SGIX_list_priority */
enum {
    GL_LIST_PRIORITY_SGIX             = 0x8182,
}

/* GL_SGIX_ir_instrument1 */
enum {
    GL_IR_INSTRUMENT1_SGIX            = 0x817F,
}

/* GL_SGIX_calligraphic_fragment */
enum {
    GL_CALLIGRAPHIC_FRAGMENT_SGIX     = 0x8183,
}

/* GL_SGIX_texture_lod_bias */
enum {
    GL_TEXTURE_LOD_BIAS_S_SGIX        = 0x818E,
    GL_TEXTURE_LOD_BIAS_T_SGIX        = 0x818F,
    GL_TEXTURE_LOD_BIAS_R_SGIX        = 0x8190,
}

/* GL_SGIX_shadow_ambient */
enum {
    GL_SHADOW_AMBIENT_SGIX            = 0x80BF,
}

/* GL_EXT_index_texture */

/* GL_EXT_index_material */
enum {
    GL_INDEX_MATERIAL_EXT             = 0x81B8,
    GL_INDEX_MATERIAL_PARAMETER_EXT   = 0x81B9,
    GL_INDEX_MATERIAL_FACE_EXT        = 0x81BA,
}

/* GL_EXT_index_func */
enum {
    GL_INDEX_TEST_EXT                 = 0x81B5,
    GL_INDEX_TEST_FUNC_EXT            = 0x81B6,
    GL_INDEX_TEST_REF_EXT             = 0x81B7,
}

/* GL_EXT_index_array_formats */
enum {
    GL_IUI_V2F_EXT                    = 0x81AD,
    GL_IUI_V3F_EXT                    = 0x81AE,
    GL_IUI_N3F_V2F_EXT                = 0x81AF,
    GL_IUI_N3F_V3F_EXT                = 0x81B0,
    GL_T2F_IUI_V2F_EXT                = 0x81B1,
    GL_T2F_IUI_V3F_EXT                = 0x81B2,
    GL_T2F_IUI_N3F_V2F_EXT            = 0x81B3,
    GL_T2F_IUI_N3F_V3F_EXT            = 0x81B4,
}

/* GL_EXT_compiled_vertex_array */
enum {
    GL_ARRAY_ELEMENT_LOCK_FIRST_EXT   = 0x81A8,
    GL_ARRAY_ELEMENT_LOCK_COUNT_EXT   = 0x81A9,
}

/* GL_EXT_cull_vertex */
enum {
    GL_CULL_VERTEX_EXT                = 0x81AA,
    GL_CULL_VERTEX_EYE_POSITION_EXT   = 0x81AB,
    GL_CULL_VERTEX_OBJECT_POSITION_EXT = 0x81AC,
}

/* GL_SGIX_ycrcb */
enum {
    GL_YCRCB_422_SGIX                 = 0x81BB,
    GL_YCRCB_444_SGIX                 = 0x81BC,
}

/* GL_SGIX_fragment_lighting */
enum {
    GL_FRAGMENT_LIGHTING_SGIX         = 0x8400,
    GL_FRAGMENT_COLOR_MATERIAL_SGIX   = 0x8401,
    GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX = 0x8402,
    GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX = 0x8403,
    GL_MAX_FRAGMENT_LIGHTS_SGIX       = 0x8404,
    GL_MAX_ACTIVE_LIGHTS_SGIX         = 0x8405,
    GL_CURRENT_RASTER_NORMAL_SGIX     = 0x8406,
    GL_LIGHT_ENV_MODE_SGIX            = 0x8407,
    GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX = 0x8408,
    GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX = 0x8409,
    GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX = 0x840A,
    GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX = 0x840B,
    GL_FRAGMENT_LIGHT0_SGIX           = 0x840C,
    GL_FRAGMENT_LIGHT1_SGIX           = 0x840D,
    GL_FRAGMENT_LIGHT2_SGIX           = 0x840E,
    GL_FRAGMENT_LIGHT3_SGIX           = 0x840F,
    GL_FRAGMENT_LIGHT4_SGIX           = 0x8410,
    GL_FRAGMENT_LIGHT5_SGIX           = 0x8411,
    GL_FRAGMENT_LIGHT6_SGIX           = 0x8412,
    GL_FRAGMENT_LIGHT7_SGIX           = 0x8413,
}

/* GL_IBM_rasterpos_clip */
enum {
    GL_RASTER_POSITION_UNCLIPPED_IBM  = 0x19262,
}

/* GL_HP_texture_lighting */
enum {
    GL_TEXTURE_LIGHTING_MODE_HP       = 0x8167,
    GL_TEXTURE_POST_SPECULAR_HP       = 0x8168,
    GL_TEXTURE_PRE_SPECULAR_HP        = 0x8169,
}

/* GL_EXT_draw_range_elements */
enum {
    GL_MAX_ELEMENTS_VERTICES_EXT      = 0x80E8,
    GL_MAX_ELEMENTS_INDICES_EXT       = 0x80E9,
}

/* GL_WIN_phong_shading */
enum {
    GL_PHONG_WIN                      = 0x80EA,
    GL_PHONG_HINT_WIN                 = 0x80EB,
}

/*  GL_WIN_specular_fog */
enum {
GL_FOG_SPECULAR_TEXTURE_WIN = 0x80EC,
}

/*  GL_EXT_light_texture */
enum {
GL_FRAGMENT_MATERIAL_EXT = 0x8349,
GL_FRAGMENT_NORMAL_EXT = 0x834A,
GL_FRAGMENT_COLOR_EXT = 0x834C,
GL_ATTENUATION_EXT = 0x834D,
GL_SHADOW_ATTENUATION_EXT = 0x834E,
GL_TEXTURE_APPLICATION_MODE_EXT = 0x834F,
GL_TEXTURE_LIGHT_EXT = 0x8350,
GL_TEXTURE_MATERIAL_FACE_EXT = 0x8351,
GL_TEXTURE_MATERIAL_PARAMETER_EXT = 0x8352,
/* reuse GL_FRAGMENT_DEPTH_EXT */
}

/*  GL_SGIX_blend_alpha_minmax */
enum {
GL_ALPHA_MIN_SGIX = 0x8320,
GL_ALPHA_MAX_SGIX = 0x8321,
}

/*  GL_SGIX_impact_pixel_texture */
enum {
GL_PIXEL_TEX_GEN_Q_CEILING_SGIX = 0x8184,
GL_PIXEL_TEX_GEN_Q_ROUND_SGIX = 0x8185,
GL_PIXEL_TEX_GEN_Q_FLOOR_SGIX = 0x8186,
GL_PIXEL_TEX_GEN_ALPHA_REPLACE_SGIX = 0x8187,
GL_PIXEL_TEX_GEN_ALPHA_NO_REPLACE_SGIX = 0x8188,
GL_PIXEL_TEX_GEN_ALPHA_LS_SGIX = 0x8189,
GL_PIXEL_TEX_GEN_ALPHA_MS_SGIX = 0x818A,
}

/*  GL_EXT_bgra */
enum {
GL_BGR_EXT = 0x80E0,
GL_BGRA_EXT = 0x80E1,
}

/*  GL_SGIX_async */
enum {
GL_ASYNC_MARKER_SGIX = 0x8329,
}

/*  GL_SGIX_async_pixel */
enum {
GL_ASYNC_TEX_IMAGE_SGIX = 0x835C,
GL_ASYNC_DRAW_PIXELS_SGIX = 0x835D,
GL_ASYNC_READ_PIXELS_SGIX = 0x835E,
GL_MAX_ASYNC_TEX_IMAGE_SGIX = 0x835F,
GL_MAX_ASYNC_DRAW_PIXELS_SGIX = 0x8360,
GL_MAX_ASYNC_READ_PIXELS_SGIX = 0x8361,
}

/*  GL_SGIX_async_histogram */
enum {
GL_ASYNC_HISTOGRAM_SGIX = 0x832C,
GL_MAX_ASYNC_HISTOGRAM_SGIX = 0x832D,
}

/*  GL_INTEL_texture_scissor */

/*  GL_INTEL_parallel_arrays */
enum {
GL_PARALLEL_ARRAYS_INTEL = 0x83F4,
GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F5,
GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F6,
GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F7,
GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F8,
}

/*  GL_HP_occlusion_test */
enum {
GL_OCCLUSION_TEST_HP = 0x8165,
GL_OCCLUSION_TEST_RESULT_HP = 0x8166,
}

/*  GL_EXT_pixel_transform */
enum {
GL_PIXEL_TRANSFORM_2D_EXT = 0x8330,
GL_PIXEL_MAG_FILTER_EXT = 0x8331,
GL_PIXEL_MIN_FILTER_EXT = 0x8332,
GL_PIXEL_CUBIC_WEIGHT_EXT = 0x8333,
GL_CUBIC_EXT = 0x8334,
GL_AVERAGE_EXT = 0x8335,
GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 0x8336,
GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 0x8337,
GL_PIXEL_TRANSFORM_2D_MATRIX_EXT = 0x8338,
}

/*  GL_EXT_pixel_transform_color_table */

/*  GL_EXT_shared_texture_palette */
enum {
GL_SHARED_TEXTURE_PALETTE_EXT = 0x81FB,
}

/*  GL_EXT_separate_specular_color */
enum {
GL_LIGHT_MODEL_COLOR_CONTROL_EXT = 0x81F8,
GL_SINGLE_COLOR_EXT = 0x81F9,
GL_SEPARATE_SPECULAR_COLOR_EXT = 0x81FA,
}

/*  GL_EXT_secondary_color */
enum {
GL_COLOR_SUM_EXT = 0x8458,
GL_CURRENT_SECONDARY_COLOR_EXT = 0x8459,
GL_SECONDARY_COLOR_ARRAY_SIZE_EXT = 0x845A,
GL_SECONDARY_COLOR_ARRAY_TYPE_EXT = 0x845B,
GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT = 0x845C,
GL_SECONDARY_COLOR_ARRAY_POINTER_EXT = 0x845D,
GL_SECONDARY_COLOR_ARRAY_EXT = 0x845E,
}

/*  GL_EXT_texture_perturb_normal */
enum {
GL_PERTURB_EXT = 0x85AE,
GL_TEXTURE_NORMAL_EXT = 0x85AF,
}

/*  GL_EXT_multi_draw_arrays */

/*  GL_EXT_fog_coord */
enum {
GL_FOG_COORDINATE_SOURCE_EXT = 0x8450,
GL_FOG_COORDINATE_EXT = 0x8451,
GL_FRAGMENT_DEPTH_EXT = 0x8452,
GL_CURRENT_FOG_COORDINATE_EXT = 0x8453,
GL_FOG_COORDINATE_ARRAY_TYPE_EXT = 0x8454,
GL_FOG_COORDINATE_ARRAY_STRIDE_EXT = 0x8455,
GL_FOG_COORDINATE_ARRAY_POINTER_EXT = 0x8456,
GL_FOG_COORDINATE_ARRAY_EXT = 0x8457,
}

/*  GL_REND_screen_coordinates */
enum {
GL_SCREEN_COORDINATES_REND = 0x8490,
GL_INVERTED_SCREEN_W_REND = 0x8491,
}

/*  GL_EXT_coordinate_frame */
enum {
GL_TANGENT_ARRAY_EXT = 0x8439,
GL_BINORMAL_ARRAY_EXT = 0x843A,
GL_CURRENT_TANGENT_EXT = 0x843B,
GL_CURRENT_BINORMAL_EXT = 0x843C,
GL_TANGENT_ARRAY_TYPE_EXT = 0x843E,
GL_TANGENT_ARRAY_STRIDE_EXT = 0x843F,
GL_BINORMAL_ARRAY_TYPE_EXT = 0x8440,
GL_BINORMAL_ARRAY_STRIDE_EXT = 0x8441,
GL_TANGENT_ARRAY_POINTER_EXT = 0x8442,
GL_BINORMAL_ARRAY_POINTER_EXT = 0x8443,
GL_MAP1_TANGENT_EXT = 0x8444,
GL_MAP2_TANGENT_EXT = 0x8445,
GL_MAP1_BINORMAL_EXT = 0x8446,
GL_MAP2_BINORMAL_EXT = 0x8447,
}

/*  GL_EXT_texture_env_combine */
enum {
GL_COMBINE_EXT = 0x8570,
GL_COMBINE_RGB_EXT = 0x8571,
GL_COMBINE_ALPHA_EXT = 0x8572,
GL_RGB_SCALE_EXT = 0x8573,
GL_ADD_SIGNED_EXT = 0x8574,
GL_INTERPOLATE_EXT = 0x8575,
GL_CONSTANT_EXT = 0x8576,
GL_PRIMARY_COLOR_EXT = 0x8577,
GL_PREVIOUS_EXT = 0x8578,
GL_SOURCE0_RGB_EXT = 0x8580,
GL_SOURCE1_RGB_EXT = 0x8581,
GL_SOURCE2_RGB_EXT = 0x8582,
GL_SOURCE0_ALPHA_EXT = 0x8588,
GL_SOURCE1_ALPHA_EXT = 0x8589,
GL_SOURCE2_ALPHA_EXT = 0x858A,
GL_OPERAND0_RGB_EXT = 0x8590,
GL_OPERAND1_RGB_EXT = 0x8591,
GL_OPERAND2_RGB_EXT = 0x8592,
GL_OPERAND0_ALPHA_EXT = 0x8598,
GL_OPERAND1_ALPHA_EXT = 0x8599,
GL_OPERAND2_ALPHA_EXT = 0x859A,
}

/*  GL_APPLE_specular_vector */
enum {
GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE = 0x85B0,
}

/*  GL_APPLE_transform_hint */
enum {
GL_TRANSFORM_HINT_APPLE = 0x85B1,
}

/*  GL_SGIX_fog_scale */
enum {
GL_FOG_SCALE_SGIX = 0x81FC,
GL_FOG_SCALE_VALUE_SGIX = 0x81FD,
}

/*  GL_SUNX_constant_data */
enum {
GL_UNPACK_CONSTANT_DATA_SUNX = 0x81D5,
GL_TEXTURE_CONSTANT_DATA_SUNX = 0x81D6,
}

/*  GL_SUN_global_alpha */
enum {
GL_GLOBAL_ALPHA_SUN = 0x81D9,
GL_GLOBAL_ALPHA_FACTOR_SUN = 0x81DA,
}

/*  GL_SUN_triangle_list */
enum {
GL_RESTART_SUN = 0x0001,
GL_REPLACE_MIDDLE_SUN = 0x0002,
GL_REPLACE_OLDEST_SUN = 0x0003,
GL_TRIANGLE_LIST_SUN = 0x81D7,
GL_REPLACEMENT_CODE_SUN = 0x81D8,
GL_REPLACEMENT_CODE_ARRAY_SUN = 0x85C0,
GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN = 0x85C1,
GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN = 0x85C2,
GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN = 0x85C3,
GL_R1UI_V3F_SUN = 0x85C4,
GL_R1UI_C4UB_V3F_SUN = 0x85C5,
GL_R1UI_C3F_V3F_SUN = 0x85C6,
GL_R1UI_N3F_V3F_SUN = 0x85C7,
GL_R1UI_C4F_N3F_V3F_SUN = 0x85C8,
GL_R1UI_T2F_V3F_SUN = 0x85C9,
GL_R1UI_T2F_N3F_V3F_SUN = 0x85CA,
GL_R1UI_T2F_C4F_N3F_V3F_SUN = 0x85CB,
}

/*  GL_SUN_vertex */

/*  GL_EXT_blend_func_separate */
enum {
GL_BLEND_DST_RGB_EXT = 0x80C8,
GL_BLEND_SRC_RGB_EXT = 0x80C9,
GL_BLEND_DST_ALPHA_EXT = 0x80CA,
GL_BLEND_SRC_ALPHA_EXT = 0x80CB,
}

/*  GL_INGR_color_clamp */
enum {
GL_RED_MIN_CLAMP_INGR = 0x8560,
GL_GREEN_MIN_CLAMP_INGR = 0x8561,
GL_BLUE_MIN_CLAMP_INGR = 0x8562,
GL_ALPHA_MIN_CLAMP_INGR = 0x8563,
GL_RED_MAX_CLAMP_INGR = 0x8564,
GL_GREEN_MAX_CLAMP_INGR = 0x8565,
GL_BLUE_MAX_CLAMP_INGR = 0x8566,
GL_ALPHA_MAX_CLAMP_INGR = 0x8567,
}

/*  GL_INGR_interlace_read */
enum {
GL_INTERLACE_READ_INGR = 0x8568,
}

/*  GL_EXT_stencil_wrap */
enum {
GL_INCR_WRAP_EXT = 0x8507,
GL_DECR_WRAP_EXT = 0x8508,
}

/*  GL_EXT_422_pixels */
enum {
GL_422_EXT = 0x80CC,
GL_422_REV_EXT = 0x80CD,
GL_422_AVERAGE_EXT = 0x80CE,
GL_422_REV_AVERAGE_EXT = 0x80CF,
}

/*  GL_NV_texgen_reflection */
enum {
GL_NORMAL_MAP_NV = 0x8511,
GL_REFLECTION_MAP_NV = 0x8512,
}

/*  GL_EXT_texture_cube_map */
enum {
GL_NORMAL_MAP_EXT = 0x8511,
GL_REFLECTION_MAP_EXT = 0x8512,
GL_TEXTURE_CUBE_MAP_EXT = 0x8513,
GL_TEXTURE_BINDING_CUBE_MAP_EXT = 0x8514,
GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT = 0x8515,
GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT = 0x8516,
GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT = 0x8517,
GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT = 0x8518,
GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT = 0x8519,
GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT = 0x851A,
GL_PROXY_TEXTURE_CUBE_MAP_EXT = 0x851B,
GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT = 0x851C,
}

/*  GL_SUN_convolution_border_modes */
enum {
GL_WRAP_BORDER_SUN = 0x81D4,
}

/*  GL_EXT_texture_env_add */

/*  GL_EXT_texture_lod_bias */
enum {
GL_MAX_TEXTURE_LOD_BIAS_EXT = 0x84FD,
GL_TEXTURE_FILTER_CONTROL_EXT = 0x8500,
GL_TEXTURE_LOD_BIAS_EXT = 0x8501,
}

/*  GL_EXT_texture_filter_anisotropic */
enum {
GL_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FE,
GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FF,
}

/*  GL_EXT_vertex_weighting */
enum {
GL_MODELVIEW0_STACK_DEPTH_EXT = GL_MODELVIEW_STACK_DEPTH,
GL_MODELVIEW1_STACK_DEPTH_EXT = 0x8502,
GL_MODELVIEW0_MATRIX_EXT = GL_MODELVIEW_MATRIX,
GL_MODELVIEW1_MATRIX_EXT = 0x8506,
GL_VERTEX_WEIGHTING_EXT = 0x8509,
GL_MODELVIEW0_EXT = GL_MODELVIEW,
GL_MODELVIEW1_EXT = 0x850A,
GL_CURRENT_VERTEX_WEIGHT_EXT = 0x850B,
GL_VERTEX_WEIGHT_ARRAY_EXT = 0x850C,
GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT = 0x850D,
GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT = 0x850E,
GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT = 0x850F,
GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT = 0x8510,
}

/*  GL_NV_light_max_exponent */
enum {
GL_MAX_SHININESS_NV = 0x8504,
GL_MAX_SPOT_EXPONENT_NV = 0x8505,
}

/*  GL_NV_vertex_array_range */
enum {
GL_VERTEX_ARRAY_RANGE_NV = 0x851D,
GL_VERTEX_ARRAY_RANGE_LENGTH_NV = 0x851E,
GL_VERTEX_ARRAY_RANGE_VALID_NV = 0x851F,
GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV = 0x8520,
GL_VERTEX_ARRAY_RANGE_POINTER_NV = 0x8521,
}

/*  GL_NV_register_combiners */
enum {
GL_REGISTER_COMBINERS_NV = 0x8522,
GL_VARIABLE_A_NV = 0x8523,
GL_VARIABLE_B_NV = 0x8524,
GL_VARIABLE_C_NV = 0x8525,
GL_VARIABLE_D_NV = 0x8526,
GL_VARIABLE_E_NV = 0x8527,
GL_VARIABLE_F_NV = 0x8528,
GL_VARIABLE_G_NV = 0x8529,
GL_CONSTANT_COLOR0_NV = 0x852A,
GL_CONSTANT_COLOR1_NV = 0x852B,
GL_PRIMARY_COLOR_NV = 0x852C,
GL_SECONDARY_COLOR_NV = 0x852D,
GL_SPARE0_NV = 0x852E,
GL_SPARE1_NV = 0x852F,
GL_DISCARD_NV = 0x8530,
GL_E_TIMES_F_NV = 0x8531,
GL_SPARE0_PLUS_SECONDARY_COLOR_NV = 0x8532,
GL_UNSIGNED_IDENTITY_NV = 0x8536,
GL_UNSIGNED_INVERT_NV = 0x8537,
GL_EXPAND_NORMAL_NV = 0x8538,
GL_EXPAND_NEGATE_NV = 0x8539,
GL_HALF_BIAS_NORMAL_NV = 0x853A,
GL_HALF_BIAS_NEGATE_NV = 0x853B,
GL_SIGNED_IDENTITY_NV = 0x853C,
GL_SIGNED_NEGATE_NV = 0x853D,
GL_SCALE_BY_TWO_NV = 0x853E,
GL_SCALE_BY_FOUR_NV = 0x853F,
GL_SCALE_BY_ONE_HALF_NV = 0x8540,
GL_BIAS_BY_NEGATIVE_ONE_HALF_NV = 0x8541,
GL_COMBINER_INPUT_NV = 0x8542,
GL_COMBINER_MAPPING_NV = 0x8543,
GL_COMBINER_COMPONENT_USAGE_NV = 0x8544,
GL_COMBINER_AB_DOT_PRODUCT_NV = 0x8545,
GL_COMBINER_CD_DOT_PRODUCT_NV = 0x8546,
GL_COMBINER_MUX_SUM_NV = 0x8547,
GL_COMBINER_SCALE_NV = 0x8548,
GL_COMBINER_BIAS_NV = 0x8549,
GL_COMBINER_AB_OUTPUT_NV = 0x854A,
GL_COMBINER_CD_OUTPUT_NV = 0x854B,
GL_COMBINER_SUM_OUTPUT_NV = 0x854C,
GL_MAX_GENERAL_COMBINERS_NV = 0x854D,
GL_NUM_GENERAL_COMBINERS_NV = 0x854E,
GL_COLOR_SUM_CLAMP_NV = 0x854F,
GL_COMBINER0_NV = 0x8550,
GL_COMBINER1_NV = 0x8551,
GL_COMBINER2_NV = 0x8552,
GL_COMBINER3_NV = 0x8553,
GL_COMBINER4_NV = 0x8554,
GL_COMBINER5_NV = 0x8555,
GL_COMBINER6_NV = 0x8556,
GL_COMBINER7_NV = 0x8557,
/* reuse GL_TEXTURE0_ARB */
/* reuse GL_TEXTURE1_ARB */
/* reuse GL_ZERO */
/* reuse GL_NONE */
/* reuse GL_FOG */
}

/*  GL_NV_fog_distance */
enum {
GL_FOG_DISTANCE_MODE_NV = 0x855A,
GL_EYE_RADIAL_NV = 0x855B,
GL_EYE_PLANE_ABSOLUTE_NV = 0x855C,
/* reuse GL_EYE_PLANE */
}

/*  GL_NV_texgen_emboss */
enum {
GL_EMBOSS_LIGHT_NV = 0x855D,
GL_EMBOSS_CONSTANT_NV = 0x855E,
GL_EMBOSS_MAP_NV = 0x855F,
}

/*  GL_NV_blend_square */

/*  GL_NV_texture_env_combine4 */
enum {
GL_COMBINE4_NV = 0x8503,
GL_SOURCE3_RGB_NV = 0x8583,
GL_SOURCE3_ALPHA_NV = 0x858B,
GL_OPERAND3_RGB_NV = 0x8593,
GL_OPERAND3_ALPHA_NV = 0x859B,
}

/*  GL_MESA_resize_buffers */

/*  GL_MESA_window_pos */

/*  GL_EXT_texture_compression_s3tc */
enum {
GL_COMPRESSED_RGB_S3TC_DXT1_EXT = 0x83F0,
GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = 0x83F1,
GL_COMPRESSED_RGBA_S3TC_DXT3_EXT = 0x83F2,
GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = 0x83F3,
}

/*  GL_IBM_cull_vertex */
enum {
GL_CULL_VERTEX_IBM = 103050,
}

/*  GL_IBM_multimode_draw_arrays */

/*  GL_IBM_vertex_array_lists */
enum {
GL_VERTEX_ARRAY_LIST_IBM = 103070,
GL_NORMAL_ARRAY_LIST_IBM = 103071,
GL_COLOR_ARRAY_LIST_IBM = 103072,
GL_INDEX_ARRAY_LIST_IBM = 103073,
GL_TEXTURE_COORD_ARRAY_LIST_IBM = 103074,
GL_EDGE_FLAG_ARRAY_LIST_IBM = 103075,
GL_FOG_COORDINATE_ARRAY_LIST_IBM = 103076,
GL_SECONDARY_COLOR_ARRAY_LIST_IBM = 103077,
GL_VERTEX_ARRAY_LIST_STRIDE_IBM = 103080,
GL_NORMAL_ARRAY_LIST_STRIDE_IBM = 103081,
GL_COLOR_ARRAY_LIST_STRIDE_IBM = 103082,
GL_INDEX_ARRAY_LIST_STRIDE_IBM = 103083,
GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM = 103084,
GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM = 103085,
GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM = 103086,
GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM = 103087,
}

/*  GL_SGIX_subsample */
enum {
GL_PACK_SUBSAMPLE_RATE_SGIX = 0x85A0,
GL_UNPACK_SUBSAMPLE_RATE_SGIX = 0x85A1,
GL_PIXEL_SUBSAMPLE_4444_SGIX = 0x85A2,
GL_PIXEL_SUBSAMPLE_2424_SGIX = 0x85A3,
GL_PIXEL_SUBSAMPLE_4242_SGIX = 0x85A4,
}

/*  GL_SGIX_ycrcb_subsample */

/*  GL_SGIX_ycrcba */
enum {
GL_YCRCB_SGIX = 0x8318,
GL_YCRCBA_SGIX = 0x8319,
}

/*  GL_SGI_depth_pass_instrument */
enum {
GL_DEPTH_PASS_INSTRUMENT_SGIX = 0x8310,
GL_DEPTH_PASS_INSTRUMENT_COUNTERS_SGIX = 0x8311,
GL_DEPTH_PASS_INSTRUMENT_MAX_SGIX = 0x8312,
}

/*  GL_3DFX_texture_compression_FXT1 */
enum {
GL_COMPRESSED_RGB_FXT1_3DFX = 0x86B0,
GL_COMPRESSED_RGBA_FXT1_3DFX = 0x86B1,
}

/*  GL_3DFX_multisample */
enum {
GL_MULTISAMPLE_3DFX = 0x86B2,
GL_SAMPLE_BUFFERS_3DFX = 0x86B3,
GL_SAMPLES_3DFX = 0x86B4,
GL_MULTISAMPLE_BIT_3DFX = 0x20000000,
}

/*  GL_3DFX_tbuffer */

/*  GL_EXT_multisample */
enum {
GL_MULTISAMPLE_EXT = 0x809D,
GL_SAMPLE_ALPHA_TO_MASK_EXT = 0x809E,
GL_SAMPLE_ALPHA_TO_ONE_EXT = 0x809F,
GL_SAMPLE_MASK_EXT = 0x80A0,
GL_1PASS_EXT = 0x80A1,
GL_2PASS_0_EXT = 0x80A2,
GL_2PASS_1_EXT = 0x80A3,
GL_4PASS_0_EXT = 0x80A4,
GL_4PASS_1_EXT = 0x80A5,
GL_4PASS_2_EXT = 0x80A6,
GL_4PASS_3_EXT = 0x80A7,
GL_SAMPLE_BUFFERS_EXT = 0x80A8,
GL_SAMPLES_EXT = 0x80A9,
GL_SAMPLE_MASK_VALUE_EXT = 0x80AA,
GL_SAMPLE_MASK_INVERT_EXT = 0x80AB,
GL_SAMPLE_PATTERN_EXT = 0x80AC,
GL_MULTISAMPLE_BIT_EXT = 0x20000000,
}

/*  GL_SGIX_vertex_preclip */
enum {
GL_VERTEX_PRECLIP_SGIX = 0x83EE,
GL_VERTEX_PRECLIP_HINT_SGIX = 0x83EF,
}

/*  GL_SGIX_convolution_accuracy */
enum {
GL_CONVOLUTION_HINT_SGIX = 0x8316,
}

/*  GL_SGIX_resample */
enum {
GL_PACK_RESAMPLE_SGIX = 0x842C,
GL_UNPACK_RESAMPLE_SGIX = 0x842D,
GL_RESAMPLE_REPLICATE_SGIX = 0x842E,
GL_RESAMPLE_ZERO_FILL_SGIX = 0x842F,
GL_RESAMPLE_DECIMATE_SGIX = 0x8430,
}

/*  GL_SGIS_point_line_texgen */
enum {
GL_EYE_DISTANCE_TO_POINT_SGIS = 0x81F0,
GL_OBJECT_DISTANCE_TO_POINT_SGIS = 0x81F1,
GL_EYE_DISTANCE_TO_LINE_SGIS = 0x81F2,
GL_OBJECT_DISTANCE_TO_LINE_SGIS = 0x81F3,
GL_EYE_POINT_SGIS = 0x81F4,
GL_OBJECT_POINT_SGIS = 0x81F5,
GL_EYE_LINE_SGIS = 0x81F6,
GL_OBJECT_LINE_SGIS = 0x81F7,
}

/*  GL_SGIS_texture_color_mask */
enum {
GL_TEXTURE_COLOR_WRITEMASK_SGIS = 0x81EF,
}

/*  GL_EXT_texture_env_dot3 */
enum {
GL_DOT3_RGB_EXT = 0x8740,
GL_DOT3_RGBA_EXT = 0x8741,
}

/*  GL_ATI_texture_mirror_once */
enum {
GL_MIRROR_CLAMP_ATI = 0x8742,
GL_MIRROR_CLAMP_TO_EDGE_ATI = 0x8743,
}

/*  GL_NV_fence */
enum {
GL_ALL_COMPLETED_NV = 0x84F2,
GL_FENCE_STATUS_NV = 0x84F3,
GL_FENCE_CONDITION_NV = 0x84F4,
}

/*  GL_IBM_texture_mirrored_repeat */
enum {
GL_MIRRORED_REPEAT_IBM = 0x8370,
}

/*  GL_NV_evaluators */
enum {
GL_EVAL_2D_NV = 0x86C0,
GL_EVAL_TRIANGULAR_2D_NV = 0x86C1,
GL_MAP_TESSELLATION_NV = 0x86C2,
GL_MAP_ATTRIB_U_ORDER_NV = 0x86C3,
GL_MAP_ATTRIB_V_ORDER_NV = 0x86C4,
GL_EVAL_FRACTIONAL_TESSELLATION_NV = 0x86C5,
GL_EVAL_VERTEX_ATTRIB0_NV = 0x86C6,
GL_EVAL_VERTEX_ATTRIB1_NV = 0x86C7,
GL_EVAL_VERTEX_ATTRIB2_NV = 0x86C8,
GL_EVAL_VERTEX_ATTRIB3_NV = 0x86C9,
GL_EVAL_VERTEX_ATTRIB4_NV = 0x86CA,
GL_EVAL_VERTEX_ATTRIB5_NV = 0x86CB,
GL_EVAL_VERTEX_ATTRIB6_NV = 0x86CC,
GL_EVAL_VERTEX_ATTRIB7_NV = 0x86CD,
GL_EVAL_VERTEX_ATTRIB8_NV = 0x86CE,
GL_EVAL_VERTEX_ATTRIB9_NV = 0x86CF,
GL_EVAL_VERTEX_ATTRIB10_NV = 0x86D0,
GL_EVAL_VERTEX_ATTRIB11_NV = 0x86D1,
GL_EVAL_VERTEX_ATTRIB12_NV = 0x86D2,
GL_EVAL_VERTEX_ATTRIB13_NV = 0x86D3,
GL_EVAL_VERTEX_ATTRIB14_NV = 0x86D4,
GL_EVAL_VERTEX_ATTRIB15_NV = 0x86D5,
GL_MAX_MAP_TESSELLATION_NV = 0x86D6,
GL_MAX_RATIONAL_EVAL_ORDER_NV = 0x86D7,
}

/*  GL_NV_packed_depth_stencil */
enum {
GL_DEPTH_STENCIL_NV = 0x84F9,
GL_UNSIGNED_INT_24_8_NV = 0x84FA,
}

/*  GL_NV_register_combiners2 */
enum {
GL_PER_STAGE_CONSTANTS_NV = 0x8535,
}

/*  GL_NV_texture_compression_vtc */

/*  GL_NV_texture_rectangle */
enum {
GL_TEXTURE_RECTANGLE_NV = 0x84F5,
GL_TEXTURE_BINDING_RECTANGLE_NV = 0x84F6,
GL_PROXY_TEXTURE_RECTANGLE_NV = 0x84F7,
GL_MAX_RECTANGLE_TEXTURE_SIZE_NV = 0x84F8,
}

/*  GL_NV_texture_shader */
enum {
GL_OFFSET_TEXTURE_RECTANGLE_NV = 0x864C,
GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV = 0x864D,
GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV = 0x864E,
GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV = 0x86D9,
GL_UNSIGNED_INT_S8_S8_8_8_NV = 0x86DA,
GL_UNSIGNED_INT_8_8_S8_S8_REV_NV = 0x86DB,
GL_DSDT_MAG_INTENSITY_NV = 0x86DC,
GL_SHADER_CONSISTENT_NV = 0x86DD,
GL_TEXTURE_SHADER_NV = 0x86DE,
GL_SHADER_OPERATION_NV = 0x86DF,
GL_CULL_MODES_NV = 0x86E0,
GL_OFFSET_TEXTURE_MATRIX_NV = 0x86E1,
GL_OFFSET_TEXTURE_SCALE_NV = 0x86E2,
GL_OFFSET_TEXTURE_BIAS_NV = 0x86E3,
GL_OFFSET_TEXTURE_2D_MATRIX_NV = GL_OFFSET_TEXTURE_MATRIX_NV,
GL_OFFSET_TEXTURE_2D_SCALE_NV = GL_OFFSET_TEXTURE_SCALE_NV,
GL_OFFSET_TEXTURE_2D_BIAS_NV = GL_OFFSET_TEXTURE_BIAS_NV,
GL_PREVIOUS_TEXTURE_INPUT_NV = 0x86E4,
GL_CONST_EYE_NV = 0x86E5,
GL_PASS_THROUGH_NV = 0x86E6,
GL_CULL_FRAGMENT_NV = 0x86E7,
GL_OFFSET_TEXTURE_2D_NV = 0x86E8,
GL_DEPENDENT_AR_TEXTURE_2D_NV = 0x86E9,
GL_DEPENDENT_GB_TEXTURE_2D_NV = 0x86EA,
GL_DOT_PRODUCT_NV = 0x86EC,
GL_DOT_PRODUCT_DEPTH_REPLACE_NV = 0x86ED,
GL_DOT_PRODUCT_TEXTURE_2D_NV = 0x86EE,
GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV = 0x86F0,
GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV = 0x86F1,
GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV = 0x86F2,
GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV = 0x86F3,
GL_HILO_NV = 0x86F4,
GL_DSDT_NV = 0x86F5,
GL_DSDT_MAG_NV = 0x86F6,
GL_DSDT_MAG_VIB_NV = 0x86F7,
GL_HILO16_NV = 0x86F8,
GL_SIGNED_HILO_NV = 0x86F9,
GL_SIGNED_HILO16_NV = 0x86FA,
GL_SIGNED_RGBA_NV = 0x86FB,
GL_SIGNED_RGBA8_NV = 0x86FC,
GL_SIGNED_RGB_NV = 0x86FE,
GL_SIGNED_RGB8_NV = 0x86FF,
GL_SIGNED_LUMINANCE_NV = 0x8701,
GL_SIGNED_LUMINANCE8_NV = 0x8702,
GL_SIGNED_LUMINANCE_ALPHA_NV = 0x8703,
GL_SIGNED_LUMINANCE8_ALPHA8_NV = 0x8704,
GL_SIGNED_ALPHA_NV = 0x8705,
GL_SIGNED_ALPHA8_NV = 0x8706,
GL_SIGNED_INTENSITY_NV = 0x8707,
GL_SIGNED_INTENSITY8_NV = 0x8708,
GL_DSDT8_NV = 0x8709,
GL_DSDT8_MAG8_NV = 0x870A,
GL_DSDT8_MAG8_INTENSITY8_NV = 0x870B,
GL_SIGNED_RGB_UNSIGNED_ALPHA_NV = 0x870C,
GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV = 0x870D,
GL_HI_SCALE_NV = 0x870E,
GL_LO_SCALE_NV = 0x870F,
GL_DS_SCALE_NV = 0x8710,
GL_DT_SCALE_NV = 0x8711,
GL_MAGNITUDE_SCALE_NV = 0x8712,
GL_VIBRANCE_SCALE_NV = 0x8713,
GL_HI_BIAS_NV = 0x8714,
GL_LO_BIAS_NV = 0x8715,
GL_DS_BIAS_NV = 0x8716,
GL_DT_BIAS_NV = 0x8717,
GL_MAGNITUDE_BIAS_NV = 0x8718,
GL_VIBRANCE_BIAS_NV = 0x8719,
GL_TEXTURE_BORDER_VALUES_NV = 0x871A,
GL_TEXTURE_HI_SIZE_NV = 0x871B,
GL_TEXTURE_LO_SIZE_NV = 0x871C,
GL_TEXTURE_DS_SIZE_NV = 0x871D,
GL_TEXTURE_DT_SIZE_NV = 0x871E,
GL_TEXTURE_MAG_SIZE_NV = 0x871F,
}

/*  GL_NV_texture_shader2 */
enum {
GL_DOT_PRODUCT_TEXTURE_3D_NV = 0x86EF,
}

/*  GL_NV_vertex_array_range2 */
enum {
GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV = 0x8533,
}

/*  GL_NV_vertex_program */
enum {
GL_VERTEX_PROGRAM_NV = 0x8620,
GL_VERTEX_STATE_PROGRAM_NV = 0x8621,
GL_ATTRIB_ARRAY_SIZE_NV = 0x8623,
GL_ATTRIB_ARRAY_STRIDE_NV = 0x8624,
GL_ATTRIB_ARRAY_TYPE_NV = 0x8625,
GL_CURRENT_ATTRIB_NV = 0x8626,
GL_PROGRAM_LENGTH_NV = 0x8627,
GL_PROGRAM_STRING_NV = 0x8628,
GL_MODELVIEW_PROJECTION_NV = 0x8629,
GL_IDENTITY_NV = 0x862A,
GL_INVERSE_NV = 0x862B,
GL_TRANSPOSE_NV = 0x862C,
GL_INVERSE_TRANSPOSE_NV = 0x862D,
GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV = 0x862E,
GL_MAX_TRACK_MATRICES_NV = 0x862F,
GL_MATRIX0_NV = 0x8630,
GL_MATRIX1_NV = 0x8631,
GL_MATRIX2_NV = 0x8632,
GL_MATRIX3_NV = 0x8633,
GL_MATRIX4_NV = 0x8634,
GL_MATRIX5_NV = 0x8635,
GL_MATRIX6_NV = 0x8636,
GL_MATRIX7_NV = 0x8637,
GL_CURRENT_MATRIX_STACK_DEPTH_NV = 0x8640,
GL_CURRENT_MATRIX_NV = 0x8641,
GL_VERTEX_PROGRAM_POINT_SIZE_NV = 0x8642,
GL_VERTEX_PROGRAM_TWO_SIDE_NV = 0x8643,
GL_PROGRAM_PARAMETER_NV = 0x8644,
GL_ATTRIB_ARRAY_POINTER_NV = 0x8645,
GL_PROGRAM_TARGET_NV = 0x8646,
GL_PROGRAM_RESIDENT_NV = 0x8647,
GL_TRACK_MATRIX_NV = 0x8648,
GL_TRACK_MATRIX_TRANSFORM_NV = 0x8649,
GL_VERTEX_PROGRAM_BINDING_NV = 0x864A,
GL_PROGRAM_ERROR_POSITION_NV = 0x864B,
GL_VERTEX_ATTRIB_ARRAY0_NV = 0x8650,
GL_VERTEX_ATTRIB_ARRAY1_NV = 0x8651,
GL_VERTEX_ATTRIB_ARRAY2_NV = 0x8652,
GL_VERTEX_ATTRIB_ARRAY3_NV = 0x8653,
GL_VERTEX_ATTRIB_ARRAY4_NV = 0x8654,
GL_VERTEX_ATTRIB_ARRAY5_NV = 0x8655,
GL_VERTEX_ATTRIB_ARRAY6_NV = 0x8656,
GL_VERTEX_ATTRIB_ARRAY7_NV = 0x8657,
GL_VERTEX_ATTRIB_ARRAY8_NV = 0x8658,
GL_VERTEX_ATTRIB_ARRAY9_NV = 0x8659,
GL_VERTEX_ATTRIB_ARRAY10_NV = 0x865A,
GL_VERTEX_ATTRIB_ARRAY11_NV = 0x865B,
GL_VERTEX_ATTRIB_ARRAY12_NV = 0x865C,
GL_VERTEX_ATTRIB_ARRAY13_NV = 0x865D,
GL_VERTEX_ATTRIB_ARRAY14_NV = 0x865E,
GL_VERTEX_ATTRIB_ARRAY15_NV = 0x865F,
GL_MAP1_VERTEX_ATTRIB0_4_NV = 0x8660,
GL_MAP1_VERTEX_ATTRIB1_4_NV = 0x8661,
GL_MAP1_VERTEX_ATTRIB2_4_NV = 0x8662,
GL_MAP1_VERTEX_ATTRIB3_4_NV = 0x8663,
GL_MAP1_VERTEX_ATTRIB4_4_NV = 0x8664,
GL_MAP1_VERTEX_ATTRIB5_4_NV = 0x8665,
GL_MAP1_VERTEX_ATTRIB6_4_NV = 0x8666,
GL_MAP1_VERTEX_ATTRIB7_4_NV = 0x8667,
GL_MAP1_VERTEX_ATTRIB8_4_NV = 0x8668,
GL_MAP1_VERTEX_ATTRIB9_4_NV = 0x8669,
GL_MAP1_VERTEX_ATTRIB10_4_NV = 0x866A,
GL_MAP1_VERTEX_ATTRIB11_4_NV = 0x866B,
GL_MAP1_VERTEX_ATTRIB12_4_NV = 0x866C,
GL_MAP1_VERTEX_ATTRIB13_4_NV = 0x866D,
GL_MAP1_VERTEX_ATTRIB14_4_NV = 0x866E,
GL_MAP1_VERTEX_ATTRIB15_4_NV = 0x866F,
GL_MAP2_VERTEX_ATTRIB0_4_NV = 0x8670,
GL_MAP2_VERTEX_ATTRIB1_4_NV = 0x8671,
GL_MAP2_VERTEX_ATTRIB2_4_NV = 0x8672,
GL_MAP2_VERTEX_ATTRIB3_4_NV = 0x8673,
GL_MAP2_VERTEX_ATTRIB4_4_NV = 0x8674,
GL_MAP2_VERTEX_ATTRIB5_4_NV = 0x8675,
GL_MAP2_VERTEX_ATTRIB6_4_NV = 0x8676,
GL_MAP2_VERTEX_ATTRIB7_4_NV = 0x8677,
GL_MAP2_VERTEX_ATTRIB8_4_NV = 0x8678,
GL_MAP2_VERTEX_ATTRIB9_4_NV = 0x8679,
GL_MAP2_VERTEX_ATTRIB10_4_NV = 0x867A,
GL_MAP2_VERTEX_ATTRIB11_4_NV = 0x867B,
GL_MAP2_VERTEX_ATTRIB12_4_NV = 0x867C,
GL_MAP2_VERTEX_ATTRIB13_4_NV = 0x867D,
GL_MAP2_VERTEX_ATTRIB14_4_NV = 0x867E,
GL_MAP2_VERTEX_ATTRIB15_4_NV = 0x867F,
}

/*  GL_SGIX_texture_coordinate_clamp */
enum {
GL_TEXTURE_MAX_CLAMP_S_SGIX = 0x8369,
GL_TEXTURE_MAX_CLAMP_T_SGIX = 0x836A,
GL_TEXTURE_MAX_CLAMP_R_SGIX = 0x836B,
}

/*  GL_SGIX_scalebias_hint */
enum {
GL_SCALEBIAS_HINT_SGIX = 0x8322,
}

/*  GL_OML_interlace */
enum {
GL_INTERLACE_OML = 0x8980,
GL_INTERLACE_READ_OML = 0x8981,
}

/*  GL_OML_subsample */
enum {
GL_FORMAT_SUBSAMPLE_24_24_OML = 0x8982,
GL_FORMAT_SUBSAMPLE_244_244_OML = 0x8983,
}

/*  GL_OML_resample */
enum {
GL_PACK_RESAMPLE_OML = 0x8984,
GL_UNPACK_RESAMPLE_OML = 0x8985,
GL_RESAMPLE_REPLICATE_OML = 0x8986,
GL_RESAMPLE_ZERO_FILL_OML = 0x8987,
GL_RESAMPLE_AVERAGE_OML = 0x8988,
GL_RESAMPLE_DECIMATE_OML = 0x8989,
}

/*  GL_NV_copy_depth_to_color */
enum {
GL_DEPTH_STENCIL_TO_RGBA_NV = 0x886E,
GL_DEPTH_STENCIL_TO_BGRA_NV = 0x886F,
}

/*  GL_ATI_envmap_bumpmap */
enum {
GL_BUMP_ROT_MATRIX_ATI = 0x8775,
GL_BUMP_ROT_MATRIX_SIZE_ATI = 0x8776,
GL_BUMP_NUM_TEX_UNITS_ATI = 0x8777,
GL_BUMP_TEX_UNITS_ATI = 0x8778,
GL_DUDV_ATI = 0x8779,
GL_DU8DV8_ATI = 0x877A,
GL_BUMP_ENVMAP_ATI = 0x877B,
GL_BUMP_TARGET_ATI = 0x877C,
}

/*  GL_ATI_fragment_shader */
enum {
GL_FRAGMENT_SHADER_ATI = 0x8920,
GL_REG_0_ATI = 0x8921,
GL_REG_1_ATI = 0x8922,
GL_REG_2_ATI = 0x8923,
GL_REG_3_ATI = 0x8924,
GL_REG_4_ATI = 0x8925,
GL_REG_5_ATI = 0x8926,
GL_REG_6_ATI = 0x8927,
GL_REG_7_ATI = 0x8928,
GL_REG_8_ATI = 0x8929,
GL_REG_9_ATI = 0x892A,
GL_REG_10_ATI = 0x892B,
GL_REG_11_ATI = 0x892C,
GL_REG_12_ATI = 0x892D,
GL_REG_13_ATI = 0x892E,
GL_REG_14_ATI = 0x892F,
GL_REG_15_ATI = 0x8930,
GL_REG_16_ATI = 0x8931,
GL_REG_17_ATI = 0x8932,
GL_REG_18_ATI = 0x8933,
GL_REG_19_ATI = 0x8934,
GL_REG_20_ATI = 0x8935,
GL_REG_21_ATI = 0x8936,
GL_REG_22_ATI = 0x8937,
GL_REG_23_ATI = 0x8938,
GL_REG_24_ATI = 0x8939,
GL_REG_25_ATI = 0x893A,
GL_REG_26_ATI = 0x893B,
GL_REG_27_ATI = 0x893C,
GL_REG_28_ATI = 0x893D,
GL_REG_29_ATI = 0x893E,
GL_REG_30_ATI = 0x893F,
GL_REG_31_ATI = 0x8940,
GL_CON_0_ATI = 0x8941,
GL_CON_1_ATI = 0x8942,
GL_CON_2_ATI = 0x8943,
GL_CON_3_ATI = 0x8944,
GL_CON_4_ATI = 0x8945,
GL_CON_5_ATI = 0x8946,
GL_CON_6_ATI = 0x8947,
GL_CON_7_ATI = 0x8948,
GL_CON_8_ATI = 0x8949,
GL_CON_9_ATI = 0x894A,
GL_CON_10_ATI = 0x894B,
GL_CON_11_ATI = 0x894C,
GL_CON_12_ATI = 0x894D,
GL_CON_13_ATI = 0x894E,
GL_CON_14_ATI = 0x894F,
GL_CON_15_ATI = 0x8950,
GL_CON_16_ATI = 0x8951,
GL_CON_17_ATI = 0x8952,
GL_CON_18_ATI = 0x8953,
GL_CON_19_ATI = 0x8954,
GL_CON_20_ATI = 0x8955,
GL_CON_21_ATI = 0x8956,
GL_CON_22_ATI = 0x8957,
GL_CON_23_ATI = 0x8958,
GL_CON_24_ATI = 0x8959,
GL_CON_25_ATI = 0x895A,
GL_CON_26_ATI = 0x895B,
GL_CON_27_ATI = 0x895C,
GL_CON_28_ATI = 0x895D,
GL_CON_29_ATI = 0x895E,
GL_CON_30_ATI = 0x895F,
GL_CON_31_ATI = 0x8960,
GL_MOV_ATI = 0x8961,
GL_ADD_ATI = 0x8963,
GL_MUL_ATI = 0x8964,
GL_SUB_ATI = 0x8965,
GL_DOT3_ATI = 0x8966,
GL_DOT4_ATI = 0x8967,
GL_MAD_ATI = 0x8968,
GL_LERP_ATI = 0x8969,
GL_CND_ATI = 0x896A,
GL_CND0_ATI = 0x896B,
GL_DOT2_ADD_ATI = 0x896C,
GL_SECONDARY_INTERPOLATOR_ATI = 0x896D,
GL_NUM_FRAGMENT_REGISTERS_ATI = 0x896E,
GL_NUM_FRAGMENT_CONSTANTS_ATI = 0x896F,
GL_NUM_PASSES_ATI = 0x8970,
GL_NUM_INSTRUCTIONS_PER_PASS_ATI = 0x8971,
GL_NUM_INSTRUCTIONS_TOTAL_ATI = 0x8972,
GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI = 0x8973,
GL_NUM_LOOPBACK_COMPONENTS_ATI = 0x8974,
GL_COLOR_ALPHA_PAIRING_ATI = 0x8975,
GL_SWIZZLE_STR_ATI = 0x8976,
GL_SWIZZLE_STQ_ATI = 0x8977,
GL_SWIZZLE_STR_DR_ATI = 0x8978,
GL_SWIZZLE_STQ_DQ_ATI = 0x8979,
GL_SWIZZLE_STRQ_ATI = 0x897A,
GL_SWIZZLE_STRQ_DQ_ATI = 0x897B,
GL_RED_BIT_ATI = 0x00000001,
GL_GREEN_BIT_ATI = 0x00000002,
GL_BLUE_BIT_ATI = 0x00000004,
GL_2X_BIT_ATI = 0x00000001,
GL_4X_BIT_ATI = 0x00000002,
GL_8X_BIT_ATI = 0x00000004,
GL_HALF_BIT_ATI = 0x00000008,
GL_QUARTER_BIT_ATI = 0x00000010,
GL_EIGHTH_BIT_ATI = 0x00000020,
GL_SATURATE_BIT_ATI = 0x00000040,
GL_COMP_BIT_ATI = 0x00000002,
GL_NEGATE_BIT_ATI = 0x00000004,
GL_BIAS_BIT_ATI = 0x00000008,
}

/*  GL_ATI_pn_triangles */
enum {
GL_PN_TRIANGLES_ATI = 0x87F0,
GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F1,
GL_PN_TRIANGLES_POINT_MODE_ATI = 0x87F2,
GL_PN_TRIANGLES_NORMAL_MODE_ATI = 0x87F3,
GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F4,
GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI = 0x87F5,
GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI = 0x87F6,
GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI = 0x87F7,
GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI = 0x87F8,
}

/*  GL_ATI_vertex_array_object */
enum {
GL_STATIC_ATI = 0x8760,
GL_DYNAMIC_ATI = 0x8761,
GL_PRESERVE_ATI = 0x8762,
GL_DISCARD_ATI = 0x8763,
GL_OBJECT_BUFFER_SIZE_ATI = 0x8764,
GL_OBJECT_BUFFER_USAGE_ATI = 0x8765,
GL_ARRAY_OBJECT_BUFFER_ATI = 0x8766,
GL_ARRAY_OBJECT_OFFSET_ATI = 0x8767,
}

/*  GL_EXT_vertex_shader */
enum {
GL_VERTEX_SHADER_EXT = 0x8780,
GL_VERTEX_SHADER_BINDING_EXT = 0x8781,
GL_OP_INDEX_EXT = 0x8782,
GL_OP_NEGATE_EXT = 0x8783,
GL_OP_DOT3_EXT = 0x8784,
GL_OP_DOT4_EXT = 0x8785,
GL_OP_MUL_EXT = 0x8786,
GL_OP_ADD_EXT = 0x8787,
GL_OP_MADD_EXT = 0x8788,
GL_OP_FRAC_EXT = 0x8789,
GL_OP_MAX_EXT = 0x878A,
GL_OP_MIN_EXT = 0x878B,
GL_OP_SET_GE_EXT = 0x878C,
GL_OP_SET_LT_EXT = 0x878D,
GL_OP_CLAMP_EXT = 0x878E,
GL_OP_FLOOR_EXT = 0x878F,
GL_OP_ROUND_EXT = 0x8790,
GL_OP_EXP_BASE_2_EXT = 0x8791,
GL_OP_LOG_BASE_2_EXT = 0x8792,
GL_OP_POWER_EXT = 0x8793,
GL_OP_RECIP_EXT = 0x8794,
GL_OP_RECIP_SQRT_EXT = 0x8795,
GL_OP_SUB_EXT = 0x8796,
GL_OP_CROSS_PRODUCT_EXT = 0x8797,
GL_OP_MULTIPLY_MATRIX_EXT = 0x8798,
GL_OP_MOV_EXT = 0x8799,
GL_OUTPUT_VERTEX_EXT = 0x879A,
GL_OUTPUT_COLOR0_EXT = 0x879B,
GL_OUTPUT_COLOR1_EXT = 0x879C,
GL_OUTPUT_TEXTURE_COORD0_EXT = 0x879D,
GL_OUTPUT_TEXTURE_COORD1_EXT = 0x879E,
GL_OUTPUT_TEXTURE_COORD2_EXT = 0x879F,
GL_OUTPUT_TEXTURE_COORD3_EXT = 0x87A0,
GL_OUTPUT_TEXTURE_COORD4_EXT = 0x87A1,
GL_OUTPUT_TEXTURE_COORD5_EXT = 0x87A2,
GL_OUTPUT_TEXTURE_COORD6_EXT = 0x87A3,
GL_OUTPUT_TEXTURE_COORD7_EXT = 0x87A4,
GL_OUTPUT_TEXTURE_COORD8_EXT = 0x87A5,
GL_OUTPUT_TEXTURE_COORD9_EXT = 0x87A6,
GL_OUTPUT_TEXTURE_COORD10_EXT = 0x87A7,
GL_OUTPUT_TEXTURE_COORD11_EXT = 0x87A8,
GL_OUTPUT_TEXTURE_COORD12_EXT = 0x87A9,
GL_OUTPUT_TEXTURE_COORD13_EXT = 0x87AA,
GL_OUTPUT_TEXTURE_COORD14_EXT = 0x87AB,
GL_OUTPUT_TEXTURE_COORD15_EXT = 0x87AC,
GL_OUTPUT_TEXTURE_COORD16_EXT = 0x87AD,
GL_OUTPUT_TEXTURE_COORD17_EXT = 0x87AE,
GL_OUTPUT_TEXTURE_COORD18_EXT = 0x87AF,
GL_OUTPUT_TEXTURE_COORD19_EXT = 0x87B0,
GL_OUTPUT_TEXTURE_COORD20_EXT = 0x87B1,
GL_OUTPUT_TEXTURE_COORD21_EXT = 0x87B2,
GL_OUTPUT_TEXTURE_COORD22_EXT = 0x87B3,
GL_OUTPUT_TEXTURE_COORD23_EXT = 0x87B4,
GL_OUTPUT_TEXTURE_COORD24_EXT = 0x87B5,
GL_OUTPUT_TEXTURE_COORD25_EXT = 0x87B6,
GL_OUTPUT_TEXTURE_COORD26_EXT = 0x87B7,
GL_OUTPUT_TEXTURE_COORD27_EXT = 0x87B8,
GL_OUTPUT_TEXTURE_COORD28_EXT = 0x87B9,
GL_OUTPUT_TEXTURE_COORD29_EXT = 0x87BA,
GL_OUTPUT_TEXTURE_COORD30_EXT = 0x87BB,
GL_OUTPUT_TEXTURE_COORD31_EXT = 0x87BC,
GL_OUTPUT_FOG_EXT = 0x87BD,
GL_SCALAR_EXT = 0x87BE,
GL_VECTOR_EXT = 0x87BF,
GL_MATRIX_EXT = 0x87C0,
GL_VARIANT_EXT = 0x87C1,
GL_INVARIANT_EXT = 0x87C2,
GL_LOCAL_CONSTANT_EXT = 0x87C3,
GL_LOCAL_EXT = 0x87C4,
GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87C5,
GL_MAX_VERTEX_SHADER_VARIANTS_EXT = 0x87C6,
GL_MAX_VERTEX_SHADER_INVARIANTS_EXT = 0x87C7,
GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87C8,
GL_MAX_VERTEX_SHADER_LOCALS_EXT = 0x87C9,
GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87CA,
GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT = 0x87CB,
GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87CC,
GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT = 0x87CD,
GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT = 0x87CE,
GL_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87CF,
GL_VERTEX_SHADER_VARIANTS_EXT = 0x87D0,
GL_VERTEX_SHADER_INVARIANTS_EXT = 0x87D1,
GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87D2,
GL_VERTEX_SHADER_LOCALS_EXT = 0x87D3,
GL_VERTEX_SHADER_OPTIMIZED_EXT = 0x87D4,
GL_X_EXT = 0x87D5,
GL_Y_EXT = 0x87D6,
GL_Z_EXT = 0x87D7,
GL_W_EXT = 0x87D8,
GL_NEGATIVE_X_EXT = 0x87D9,
GL_NEGATIVE_Y_EXT = 0x87DA,
GL_NEGATIVE_Z_EXT = 0x87DB,
GL_NEGATIVE_W_EXT = 0x87DC,
GL_ZERO_EXT = 0x87DD,
GL_ONE_EXT = 0x87DE,
GL_NEGATIVE_ONE_EXT = 0x87DF,
GL_NORMALIZED_RANGE_EXT = 0x87E0,
GL_FULL_RANGE_EXT = 0x87E1,
GL_CURRENT_VERTEX_EXT = 0x87E2,
GL_MVP_MATRIX_EXT = 0x87E3,
GL_VARIANT_VALUE_EXT = 0x87E4,
GL_VARIANT_DATATYPE_EXT = 0x87E5,
GL_VARIANT_ARRAY_STRIDE_EXT = 0x87E6,
GL_VARIANT_ARRAY_TYPE_EXT = 0x87E7,
GL_VARIANT_ARRAY_EXT = 0x87E8,
GL_VARIANT_ARRAY_POINTER_EXT = 0x87E9,
GL_INVARIANT_VALUE_EXT = 0x87EA,
GL_INVARIANT_DATATYPE_EXT = 0x87EB,
GL_LOCAL_CONSTANT_VALUE_EXT = 0x87EC,
GL_LOCAL_CONSTANT_DATATYPE_EXT = 0x87ED,
}

/*  GL_ATI_vertex_streams */
enum {
GL_MAX_VERTEX_STREAMS_ATI = 0x876B,
GL_VERTEX_STREAM0_ATI = 0x876C,
GL_VERTEX_STREAM1_ATI = 0x876D,
GL_VERTEX_STREAM2_ATI = 0x876E,
GL_VERTEX_STREAM3_ATI = 0x876F,
GL_VERTEX_STREAM4_ATI = 0x8770,
GL_VERTEX_STREAM5_ATI = 0x8771,
GL_VERTEX_STREAM6_ATI = 0x8772,
GL_VERTEX_STREAM7_ATI = 0x8773,
GL_VERTEX_SOURCE_ATI = 0x8774,
}

/*  GL_ATI_element_array */
enum {
GL_ELEMENT_ARRAY_ATI = 0x8768,
GL_ELEMENT_ARRAY_TYPE_ATI = 0x8769,
GL_ELEMENT_ARRAY_POINTER_ATI = 0x876A,
}

/*  GL_SUN_mesh_array */
enum {
GL_QUAD_MESH_SUN = 0x8614,
GL_TRIANGLE_MESH_SUN = 0x8615,
}

/*  GL_SUN_slice_accum */
enum {
GL_SLICE_ACCUM_SUN = 0x85CC,
}

/*  GL_NV_multisample_filter_hint */
enum {
GL_MULTISAMPLE_FILTER_HINT_NV = 0x8534,
}

/*  GL_NV_depth_clamp */
enum {
GL_DEPTH_CLAMP_NV = 0x864F,
}

/*  GL_NV_occlusion_query */
enum {
GL_PIXEL_COUNTER_BITS_NV = 0x8864,
GL_CURRENT_OCCLUSION_QUERY_ID_NV = 0x8865,
GL_PIXEL_COUNT_NV = 0x8866,
GL_PIXEL_COUNT_AVAILABLE_NV = 0x8867,
}

/*  GL_NV_point_sprite */
enum {
GL_POINT_SPRITE_NV = 0x8861,
GL_COORD_REPLACE_NV = 0x8862,
GL_POINT_SPRITE_R_MODE_NV = 0x8863,
}

/*  GL_NV_texture_shader3 */
enum {
GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV = 0x8850,
GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV = 0x8851,
GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV = 0x8852,
GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV = 0x8853,
GL_OFFSET_HILO_TEXTURE_2D_NV = 0x8854,
GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV = 0x8855,
GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV = 0x8856,
GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV = 0x8857,
GL_DEPENDENT_HILO_TEXTURE_2D_NV = 0x8858,
GL_DEPENDENT_RGB_TEXTURE_3D_NV = 0x8859,
GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV = 0x885A,
GL_DOT_PRODUCT_PASS_THROUGH_NV = 0x885B,
GL_DOT_PRODUCT_TEXTURE_1D_NV = 0x885C,
GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV = 0x885D,
GL_HILO8_NV = 0x885E,
GL_SIGNED_HILO8_NV = 0x885F,
GL_FORCE_BLUE_TO_ONE_NV = 0x8860,
}

/*  GL_NV_vertex_program1_1 */

/*  GL_EXT_shadow_funcs */

/*  GL_EXT_stencil_two_side */
enum {
GL_STENCIL_TEST_TWO_SIDE_EXT = 0x8910,
GL_ACTIVE_STENCIL_FACE_EXT = 0x8911,
}

/*  GL_ATI_text_fragment_shader */
enum {
GL_TEXT_FRAGMENT_SHADER_ATI = 0x8200,
}

/*  GL_APPLE_client_storage */
enum {
GL_UNPACK_CLIENT_STORAGE_APPLE = 0x85B2,
}

/*  GL_APPLE_element_array */
enum {
GL_ELEMENT_ARRAY_APPLE = 0x8A0C,
GL_ELEMENT_ARRAY_TYPE_APPLE = 0x8A0D,
GL_ELEMENT_ARRAY_POINTER_APPLE = 0x8A0E,
}

/*  GL_APPLE_fence */
enum {
GL_DRAW_PIXELS_APPLE = 0x8A0A,
GL_FENCE_APPLE = 0x8A0B,
}

/*  GL_APPLE_vertex_array_object */
enum {
GL_VERTEX_ARRAY_BINDING_APPLE = 0x85B5,
}

/*  GL_APPLE_vertex_array_range */
enum {
GL_VERTEX_ARRAY_RANGE_APPLE = 0x851D,
GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE = 0x851E,
GL_VERTEX_ARRAY_STORAGE_HINT_APPLE = 0x851F,
GL_VERTEX_ARRAY_RANGE_POINTER_APPLE = 0x8521,
GL_STORAGE_CLIENT_APPLE = 0x85B4,
GL_STORAGE_CACHED_APPLE = 0x85BE,
GL_STORAGE_SHARED_APPLE = 0x85BF,
}

/*  GL_APPLE_ycbcr_422 */
enum {
GL_YCBCR_422_APPLE = 0x85B9,
GL_UNSIGNED_SHORT_8_8_APPLE = 0x85BA,
GL_UNSIGNED_SHORT_8_8_REV_APPLE = 0x85BB,
}

/*  GL_S3_s3tc */
enum {
GL_RGB_S3TC = 0x83A0,
GL_RGB4_S3TC = 0x83A1,
GL_RGBA_S3TC = 0x83A2,
GL_RGBA4_S3TC = 0x83A3,
GL_RGBA_DXT5_S3TC = 0x83A4,
GL_RGBA4_DXT5_S3TC = 0x83A5,
}

/*  GL_ATI_draw_buffers */
enum {
GL_MAX_DRAW_BUFFERS_ATI = 0x8824,
GL_DRAW_BUFFER0_ATI = 0x8825,
GL_DRAW_BUFFER1_ATI = 0x8826,
GL_DRAW_BUFFER2_ATI = 0x8827,
GL_DRAW_BUFFER3_ATI = 0x8828,
GL_DRAW_BUFFER4_ATI = 0x8829,
GL_DRAW_BUFFER5_ATI = 0x882A,
GL_DRAW_BUFFER6_ATI = 0x882B,
GL_DRAW_BUFFER7_ATI = 0x882C,
GL_DRAW_BUFFER8_ATI = 0x882D,
GL_DRAW_BUFFER9_ATI = 0x882E,
GL_DRAW_BUFFER10_ATI = 0x882F,
GL_DRAW_BUFFER11_ATI = 0x8830,
GL_DRAW_BUFFER12_ATI = 0x8831,
GL_DRAW_BUFFER13_ATI = 0x8832,
GL_DRAW_BUFFER14_ATI = 0x8833,
GL_DRAW_BUFFER15_ATI = 0x8834,
}

/*  GL_ATI_pixel_format_float */
enum {
GL_RGBA_FLOAT_MODE_ATI = 0x8820,
GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI = 0x8835,
}

/*  GL_ATI_texture_env_combine3 */
enum {
GL_MODULATE_ADD_ATI = 0x8744,
GL_MODULATE_SIGNED_ADD_ATI = 0x8745,
GL_MODULATE_SUBTRACT_ATI = 0x8746,
}

/*  GL_ATI_texture_float */
enum {
GL_RGBA_FLOAT32_ATI = 0x8814,
GL_RGB_FLOAT32_ATI = 0x8815,
GL_ALPHA_FLOAT32_ATI = 0x8816,
GL_INTENSITY_FLOAT32_ATI = 0x8817,
GL_LUMINANCE_FLOAT32_ATI = 0x8818,
GL_LUMINANCE_ALPHA_FLOAT32_ATI = 0x8819,
GL_RGBA_FLOAT16_ATI = 0x881A,
GL_RGB_FLOAT16_ATI = 0x881B,
GL_ALPHA_FLOAT16_ATI = 0x881C,
GL_INTENSITY_FLOAT16_ATI = 0x881D,
GL_LUMINANCE_FLOAT16_ATI = 0x881E,
GL_LUMINANCE_ALPHA_FLOAT16_ATI = 0x881F,
}

/*  GL_NV_float_buffer */
enum {
GL_FLOAT_R_NV = 0x8880,
GL_FLOAT_RG_NV = 0x8881,
GL_FLOAT_RGB_NV = 0x8882,
GL_FLOAT_RGBA_NV = 0x8883,
GL_FLOAT_R16_NV = 0x8884,
GL_FLOAT_R32_NV = 0x8885,
GL_FLOAT_RG16_NV = 0x8886,
GL_FLOAT_RG32_NV = 0x8887,
GL_FLOAT_RGB16_NV = 0x8888,
GL_FLOAT_RGB32_NV = 0x8889,
GL_FLOAT_RGBA16_NV = 0x888A,
GL_FLOAT_RGBA32_NV = 0x888B,
GL_TEXTURE_FLOAT_COMPONENTS_NV = 0x888C,
GL_FLOAT_CLEAR_COLOR_VALUE_NV = 0x888D,
GL_FLOAT_RGBA_MODE_NV = 0x888E,
}

/*  GL_NV_fragment_program */
enum {
GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV = 0x8868,
GL_FRAGMENT_PROGRAM_NV = 0x8870,
GL_MAX_TEXTURE_COORDS_NV = 0x8871,
GL_MAX_TEXTURE_IMAGE_UNITS_NV = 0x8872,
GL_FRAGMENT_PROGRAM_BINDING_NV = 0x8873,
GL_PROGRAM_ERROR_STRING_NV = 0x8874,
}

/*  GL_NV_half_float */
enum {
GL_HALF_FLOAT_NV = 0x140B,
}

/*  GL_NV_pixel_data_range */
enum {
GL_WRITE_PIXEL_DATA_RANGE_NV = 0x8878,
GL_READ_PIXEL_DATA_RANGE_NV = 0x8879,
GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV = 0x887A,
GL_READ_PIXEL_DATA_RANGE_LENGTH_NV = 0x887B,
GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV = 0x887C,
GL_READ_PIXEL_DATA_RANGE_POINTER_NV = 0x887D,
}

/*  GL_NV_primitive_restart */
enum {
GL_PRIMITIVE_RESTART_NV = 0x8558,
GL_PRIMITIVE_RESTART_INDEX_NV = 0x8559,
}

/*  GL_NV_texture_expand_normal */
enum {
GL_TEXTURE_UNSIGNED_REMAP_MODE_NV = 0x888F,
}

/*  GL_NV_vertex_program2 */

/*  GL_ATI_map_object_buffer */

/*  GL_ATI_separate_stencil */
enum {
GL_STENCIL_BACK_FUNC_ATI = 0x8800,
GL_STENCIL_BACK_FAIL_ATI = 0x8801,
GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI = 0x8802,
GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI = 0x8803,
}

/*  GL_ATI_vertex_attrib_array_object */

/*  GL_OES_read_format */
enum {
GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = 0x8B9A,
GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = 0x8B9B,
}

/*  GL_EXT_depth_bounds_test */
enum {
GL_DEPTH_BOUNDS_TEST_EXT = 0x8890,
GL_DEPTH_BOUNDS_EXT = 0x8891,
}

/*  GL_EXT_texture_mirror_clamp */
enum {
GL_MIRROR_CLAMP_EXT = 0x8742,
GL_MIRROR_CLAMP_TO_EDGE_EXT = 0x8743,
GL_MIRROR_CLAMP_TO_BORDER_EXT = 0x8912,
}

/*  GL_EXT_blend_equation_separate */
enum {
GL_BLEND_EQUATION_RGB_EXT = 0x8009,
GL_BLEND_EQUATION_ALPHA_EXT = 0x883D,
}

/*  GL_MESA_pack_invert */
enum {
GL_PACK_INVERT_MESA = 0x8758,
}

/*  GL_MESA_ycbcr_texture */
enum {
GL_UNSIGNED_SHORT_8_8_MESA = 0x85BA,
GL_UNSIGNED_SHORT_8_8_REV_MESA = 0x85BB,
GL_YCBCR_MESA = 0x8757,
}

/*  GL_EXT_pixel_buffer_object */
enum {
GL_PIXEL_PACK_BUFFER_EXT = 0x88EB,
GL_PIXEL_UNPACK_BUFFER_EXT = 0x88EC,
GL_PIXEL_PACK_BUFFER_BINDING_EXT = 0x88ED,
GL_PIXEL_UNPACK_BUFFER_BINDING_EXT = 0x88EF,
}

/*  GL_NV_fragment_program_option */

/*  GL_NV_fragment_program2 */
enum {
GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV = 0x88F4,
GL_MAX_PROGRAM_CALL_DEPTH_NV = 0x88F5,
GL_MAX_PROGRAM_IF_DEPTH_NV = 0x88F6,
GL_MAX_PROGRAM_LOOP_DEPTH_NV = 0x88F7,
GL_MAX_PROGRAM_LOOP_COUNT_NV = 0x88F8,
}

/*  GL_NV_vertex_program2_option */
/* reuse GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV */
/* reuse GL_MAX_PROGRAM_CALL_DEPTH_NV */

/*  GL_NV_vertex_program3 */
/* reuse GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB */

/*  GL_EXT_framebuffer_object */
enum {
GL_INVALID_FRAMEBUFFER_OPERATION_EXT = 0x0506,
GL_MAX_RENDERBUFFER_SIZE_EXT = 0x84E8,
GL_FRAMEBUFFER_BINDING_EXT = 0x8CA6,
GL_RENDERBUFFER_BINDING_EXT = 0x8CA7,
GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT = 0x8CD0,
GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT = 0x8CD1,
GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT = 0x8CD2,
GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT = 0x8CD3,
GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT = 0x8CD4,
GL_FRAMEBUFFER_COMPLETE_EXT = 0x8CD5,
GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT = 0x8CD6,
GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT = 0x8CD7,
GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT = 0x8CD9,
GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT = 0x8CDA,
GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT = 0x8CDB,
GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT = 0x8CDC,
GL_FRAMEBUFFER_UNSUPPORTED_EXT = 0x8CDD,
GL_MAX_COLOR_ATTACHMENTS_EXT = 0x8CDF,
GL_COLOR_ATTACHMENT0_EXT = 0x8CE0,
GL_COLOR_ATTACHMENT1_EXT = 0x8CE1,
GL_COLOR_ATTACHMENT2_EXT = 0x8CE2,
GL_COLOR_ATTACHMENT3_EXT = 0x8CE3,
GL_COLOR_ATTACHMENT4_EXT = 0x8CE4,
GL_COLOR_ATTACHMENT5_EXT = 0x8CE5,
GL_COLOR_ATTACHMENT6_EXT = 0x8CE6,
GL_COLOR_ATTACHMENT7_EXT = 0x8CE7,
GL_COLOR_ATTACHMENT8_EXT = 0x8CE8,
GL_COLOR_ATTACHMENT9_EXT = 0x8CE9,
GL_COLOR_ATTACHMENT10_EXT = 0x8CEA,
GL_COLOR_ATTACHMENT11_EXT = 0x8CEB,
GL_COLOR_ATTACHMENT12_EXT = 0x8CEC,
GL_COLOR_ATTACHMENT13_EXT = 0x8CED,
GL_COLOR_ATTACHMENT14_EXT = 0x8CEE,
GL_COLOR_ATTACHMENT15_EXT = 0x8CEF,
GL_DEPTH_ATTACHMENT_EXT = 0x8D00,
GL_STENCIL_ATTACHMENT_EXT = 0x8D20,
GL_FRAMEBUFFER_EXT = 0x8D40,
GL_RENDERBUFFER_EXT = 0x8D41,
GL_RENDERBUFFER_WIDTH_EXT = 0x8D42,
GL_RENDERBUFFER_HEIGHT_EXT = 0x8D43,
GL_RENDERBUFFER_INTERNAL_FORMAT_EXT = 0x8D44,
GL_STENCIL_INDEX1_EXT = 0x8D46,
GL_STENCIL_INDEX4_EXT = 0x8D47,
GL_STENCIL_INDEX8_EXT = 0x8D48,
GL_STENCIL_INDEX16_EXT = 0x8D49,
GL_RENDERBUFFER_RED_SIZE_EXT = 0x8D50,
GL_RENDERBUFFER_GREEN_SIZE_EXT = 0x8D51,
GL_RENDERBUFFER_BLUE_SIZE_EXT = 0x8D52,
GL_RENDERBUFFER_ALPHA_SIZE_EXT = 0x8D53,
GL_RENDERBUFFER_DEPTH_SIZE_EXT = 0x8D54,
GL_RENDERBUFFER_STENCIL_SIZE_EXT = 0x8D55,
}

/*  GL_GREMEDY_string_marker */

/*  GL_EXT_packed_depth_stencil */
enum {
GL_DEPTH_STENCIL_EXT = 0x84F9,
GL_UNSIGNED_INT_24_8_EXT = 0x84FA,
GL_DEPTH24_STENCIL8_EXT = 0x88F0,
GL_TEXTURE_STENCIL_SIZE_EXT = 0x88F1,
}

/*  GL_EXT_stencil_clear_tag */
enum {
GL_STENCIL_TAG_BITS_EXT = 0x88F2,
GL_STENCIL_CLEAR_TAG_VALUE_EXT = 0x88F3,
}

/*  GL_EXT_texture_sRGB */
enum {
GL_SRGB_EXT = 0x8C40,
GL_SRGB8_EXT = 0x8C41,
GL_SRGB_ALPHA_EXT = 0x8C42,
GL_SRGB8_ALPHA8_EXT = 0x8C43,
GL_SLUMINANCE_ALPHA_EXT = 0x8C44,
GL_SLUMINANCE8_ALPHA8_EXT = 0x8C45,
GL_SLUMINANCE_EXT = 0x8C46,
GL_SLUMINANCE8_EXT = 0x8C47,
GL_COMPRESSED_SRGB_EXT = 0x8C48,
GL_COMPRESSED_SRGB_ALPHA_EXT = 0x8C49,
GL_COMPRESSED_SLUMINANCE_EXT = 0x8C4A,
GL_COMPRESSED_SLUMINANCE_ALPHA_EXT = 0x8C4B,
GL_COMPRESSED_SRGB_S3TC_DXT1_EXT = 0x8C4C,
GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = 0x8C4D,
GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = 0x8C4E,
GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = 0x8C4F,
}

/*  GL_EXT_framebuffer_blit */
enum {
GL_READ_FRAMEBUFFER_EXT = 0x8CA8,
GL_DRAW_FRAMEBUFFER_EXT = 0x8CA9,
GL_DRAW_FRAMEBUFFER_BINDING_EXT = GL_FRAMEBUFFER_BINDING_EXT,
GL_READ_FRAMEBUFFER_BINDING_EXT = 0x8CAA,
}

/*  GL_EXT_framebuffer_multisample */
enum {
GL_RENDERBUFFER_SAMPLES_EXT = 0x8CAB,
GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT = 0x8D56,
GL_MAX_SAMPLES_EXT = 0x8D57,
}

/*  GL_MESAX_texture_stack */
enum {
GL_TEXTURE_1D_STACK_MESAX = 0x8759,
GL_TEXTURE_2D_STACK_MESAX = 0x875A,
GL_PROXY_TEXTURE_1D_STACK_MESAX = 0x875B,
GL_PROXY_TEXTURE_2D_STACK_MESAX = 0x875C,
GL_TEXTURE_1D_STACK_BINDING_MESAX = 0x875D,
GL_TEXTURE_2D_STACK_BINDING_MESAX = 0x875E,
}

/*  GL_EXT_timer_query */
enum {
GL_TIME_ELAPSED_EXT = 0x88BF,
}

/*  GL_EXT_gpu_program_parameters */

/*  GL_APPLE_flush_buffer_range */
enum {
GL_BUFFER_SERIALIZED_MODIFY_APPLE = 0x8A12,
GL_BUFFER_FLUSHING_UNMAP_APPLE = 0x8A13,
}

/*  GL_NV_gpu_program4 */
enum {
GL_MIN_PROGRAM_TEXEL_OFFSET_NV = 0x8904,
GL_MAX_PROGRAM_TEXEL_OFFSET_NV = 0x8905,
GL_PROGRAM_ATTRIB_COMPONENTS_NV = 0x8906,
GL_PROGRAM_RESULT_COMPONENTS_NV = 0x8907,
GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV = 0x8908,
GL_MAX_PROGRAM_RESULT_COMPONENTS_NV = 0x8909,
GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV = 0x8DA5,
GL_MAX_PROGRAM_GENERIC_RESULTS_NV = 0x8DA6,
}

/*  GL_NV_geometry_program4 */
enum {
GL_LINES_ADJACENCY_EXT = 0x000A,
GL_LINE_STRIP_ADJACENCY_EXT = 0x000B,
GL_TRIANGLES_ADJACENCY_EXT = 0x000C,
GL_TRIANGLE_STRIP_ADJACENCY_EXT = 0x000D,
GL_GEOMETRY_PROGRAM_NV = 0x8C26,
GL_MAX_PROGRAM_OUTPUT_VERTICES_NV = 0x8C27,
GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV = 0x8C28,
GL_GEOMETRY_VERTICES_OUT_EXT = 0x8DDA,
GL_GEOMETRY_INPUT_TYPE_EXT = 0x8DDB,
GL_GEOMETRY_OUTPUT_TYPE_EXT = 0x8DDC,
GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT = 0x8C29,
GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT = 0x8DA7,
GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT = 0x8DA8,
GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT = 0x8DA9,
GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT = 0x8CD4,
GL_PROGRAM_POINT_SIZE_EXT = 0x8642,
}

/*  GL_EXT_geometry_shader4 */
enum {
GL_GEOMETRY_SHADER_EXT = 0x8DD9,
/* reuse GL_GEOMETRY_VERTICES_OUT_EXT */
/* reuse GL_GEOMETRY_INPUT_TYPE_EXT */
/* reuse GL_GEOMETRY_OUTPUT_TYPE_EXT */
/* reuse GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT */
GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT = 0x8DDD,
GL_MAX_VERTEX_VARYING_COMPONENTS_EXT = 0x8DDE,
GL_MAX_VARYING_COMPONENTS_EXT = 0x8B4B,
GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT = 0x8DDF,
GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT = 0x8DE0,
GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT = 0x8DE1,
/* reuse GL_LINES_ADJACENCY_EXT */
/* reuse GL_LINE_STRIP_ADJACENCY_EXT */
/* reuse GL_TRIANGLES_ADJACENCY_EXT */
/* reuse GL_TRIANGLE_STRIP_ADJACENCY_EXT */
/* reuse GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT */
/* reuse GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT */
/* reuse GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT */
/* reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT */
/* reuse GL_PROGRAM_POINT_SIZE_EXT */
}

/*  GL_NV_vertex_program4 */
enum {
GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV = 0x88FD,
}

/*  GL_EXT_gpu_shader4 */
enum {
GL_SAMPLER_1D_ARRAY_EXT = 0x8DC0,
GL_SAMPLER_2D_ARRAY_EXT = 0x8DC1,
GL_SAMPLER_BUFFER_EXT = 0x8DC2,
GL_SAMPLER_1D_ARRAY_SHADOW_EXT = 0x8DC3,
GL_SAMPLER_2D_ARRAY_SHADOW_EXT = 0x8DC4,
GL_SAMPLER_CUBE_SHADOW_EXT = 0x8DC5,
GL_UNSIGNED_INT_VEC2_EXT = 0x8DC6,
GL_UNSIGNED_INT_VEC3_EXT = 0x8DC7,
GL_UNSIGNED_INT_VEC4_EXT = 0x8DC8,
GL_INT_SAMPLER_1D_EXT = 0x8DC9,
GL_INT_SAMPLER_2D_EXT = 0x8DCA,
GL_INT_SAMPLER_3D_EXT = 0x8DCB,
GL_INT_SAMPLER_CUBE_EXT = 0x8DCC,
GL_INT_SAMPLER_2D_RECT_EXT = 0x8DCD,
GL_INT_SAMPLER_1D_ARRAY_EXT = 0x8DCE,
GL_INT_SAMPLER_2D_ARRAY_EXT = 0x8DCF,
GL_INT_SAMPLER_BUFFER_EXT = 0x8DD0,
GL_UNSIGNED_INT_SAMPLER_1D_EXT = 0x8DD1,
GL_UNSIGNED_INT_SAMPLER_2D_EXT = 0x8DD2,
GL_UNSIGNED_INT_SAMPLER_3D_EXT = 0x8DD3,
GL_UNSIGNED_INT_SAMPLER_CUBE_EXT = 0x8DD4,
GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT = 0x8DD5,
GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT = 0x8DD6,
GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT = 0x8DD7,
GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT = 0x8DD8,
}

/*  GL_EXT_draw_instanced */

/*  GL_EXT_packed_float */
enum {
GL_R11F_G11F_B10F_EXT = 0x8C3A,
GL_UNSIGNED_INT_10F_11F_11F_REV_EXT = 0x8C3B,
GL_RGBA_SIGNED_COMPONENTS_EXT = 0x8C3C,
}

/*  GL_EXT_texture_array */
enum {
GL_TEXTURE_1D_ARRAY_EXT = 0x8C18,
GL_PROXY_TEXTURE_1D_ARRAY_EXT = 0x8C19,
GL_TEXTURE_2D_ARRAY_EXT = 0x8C1A,
GL_PROXY_TEXTURE_2D_ARRAY_EXT = 0x8C1B,
GL_TEXTURE_BINDING_1D_ARRAY_EXT = 0x8C1C,
GL_TEXTURE_BINDING_2D_ARRAY_EXT = 0x8C1D,
GL_MAX_ARRAY_TEXTURE_LAYERS_EXT = 0x88FF,
GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT = 0x884E,
/* reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT */
}

/*  GL_EXT_texture_buffer_object */
enum {
GL_TEXTURE_BUFFER_EXT = 0x8C2A,
GL_MAX_TEXTURE_BUFFER_SIZE_EXT = 0x8C2B,
GL_TEXTURE_BINDING_BUFFER_EXT = 0x8C2C,
GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT = 0x8C2D,
GL_TEXTURE_BUFFER_FORMAT_EXT = 0x8C2E,
}

/*  GL_EXT_texture_compression_latc */
enum {
GL_COMPRESSED_LUMINANCE_LATC1_EXT = 0x8C70,
GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT = 0x8C71,
GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT = 0x8C72,
GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT = 0x8C73,
}

/*  GL_EXT_texture_compression_rgtc */
enum {
GL_COMPRESSED_RED_RGTC1_EXT = 0x8DBB,
GL_COMPRESSED_SIGNED_RED_RGTC1_EXT = 0x8DBC,
GL_COMPRESSED_RED_GREEN_RGTC2_EXT = 0x8DBD,
GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = 0x8DBE,
}

/*  GL_EXT_texture_shared_exponent */
enum {
GL_RGB9_E5_EXT = 0x8C3D,
GL_UNSIGNED_INT_5_9_9_9_REV_EXT = 0x8C3E,
GL_TEXTURE_SHARED_SIZE_EXT = 0x8C3F,
}

/*  GL_NV_depth_buffer_float */
enum {
GL_DEPTH_COMPONENT32F_NV = 0x8DAB,
GL_DEPTH32F_STENCIL8_NV = 0x8DAC,
GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV = 0x8DAD,
GL_DEPTH_BUFFER_FLOAT_MODE_NV = 0x8DAF,
}

/*  GL_NV_fragment_program4 */

/*  GL_NV_framebuffer_multisample_coverage */
enum {
GL_RENDERBUFFER_COVERAGE_SAMPLES_NV = 0x8CAB,
GL_RENDERBUFFER_COLOR_SAMPLES_NV = 0x8E10,
GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV = 0x8E11,
GL_MULTISAMPLE_COVERAGE_MODES_NV = 0x8E12,
}

/*  GL_EXT_framebuffer_sRGB */
enum {
GL_FRAMEBUFFER_SRGB_EXT = 0x8DB9,
GL_FRAMEBUFFER_SRGB_CAPABLE_EXT = 0x8DBA,
}

/*  GL_NV_geometry_shader4 */

/*  GL_NV_parameter_buffer_object */
enum {
GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV = 0x8DA0,
GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV = 0x8DA1,
GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV = 0x8DA2,
GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV = 0x8DA3,
GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV = 0x8DA4,
}

/*  GL_EXT_draw_buffers2 */

/*  GL_NV_transform_feedback */
enum {
GL_BACK_PRIMARY_COLOR_NV = 0x8C77,
GL_BACK_SECONDARY_COLOR_NV = 0x8C78,
GL_TEXTURE_COORD_NV = 0x8C79,
GL_CLIP_DISTANCE_NV = 0x8C7A,
GL_VERTEX_ID_NV = 0x8C7B,
GL_PRIMITIVE_ID_NV = 0x8C7C,
GL_GENERIC_ATTRIB_NV = 0x8C7D,
GL_TRANSFORM_FEEDBACK_ATTRIBS_NV = 0x8C7E,
GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV = 0x8C7F,
GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV = 0x8C80,
GL_ACTIVE_VARYINGS_NV = 0x8C81,
GL_ACTIVE_VARYING_MAX_LENGTH_NV = 0x8C82,
GL_TRANSFORM_FEEDBACK_VARYINGS_NV = 0x8C83,
GL_TRANSFORM_FEEDBACK_BUFFER_START_NV = 0x8C84,
GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV = 0x8C85,
GL_TRANSFORM_FEEDBACK_RECORD_NV = 0x8C86,
GL_PRIMITIVES_GENERATED_NV = 0x8C87,
GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV = 0x8C88,
GL_RASTERIZER_DISCARD_NV = 0x8C89,
GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV = 0x8C8A,
GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV = 0x8C8B,
GL_INTERLEAVED_ATTRIBS_NV = 0x8C8C,
GL_SEPARATE_ATTRIBS_NV = 0x8C8D,
GL_TRANSFORM_FEEDBACK_BUFFER_NV = 0x8C8E,
GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV = 0x8C8F,
GL_LAYER_NV = 0x8DAA,
GL_NEXT_BUFFER_NV = 2,
GL_SKIP_COMPONENTS4_NV = 3,
GL_SKIP_COMPONENTS3_NV = 4,
GL_SKIP_COMPONENTS2_NV = 5,
GL_SKIP_COMPONENTS1_NV = 6,
}

/*  GL_EXT_bindable_uniform */
enum {
GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT = 0x8DE2,
GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT = 0x8DE3,
GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT = 0x8DE4,
GL_MAX_BINDABLE_UNIFORM_SIZE_EXT = 0x8DED,
GL_UNIFORM_BUFFER_EXT = 0x8DEE,
GL_UNIFORM_BUFFER_BINDING_EXT = 0x8DEF,
}

/*  GL_EXT_texture_integer */
enum {
GL_RGBA32UI_EXT = 0x8D70,
GL_RGB32UI_EXT = 0x8D71,
GL_ALPHA32UI_EXT = 0x8D72,
GL_INTENSITY32UI_EXT = 0x8D73,
GL_LUMINANCE32UI_EXT = 0x8D74,
GL_LUMINANCE_ALPHA32UI_EXT = 0x8D75,
GL_RGBA16UI_EXT = 0x8D76,
GL_RGB16UI_EXT = 0x8D77,
GL_ALPHA16UI_EXT = 0x8D78,
GL_INTENSITY16UI_EXT = 0x8D79,
GL_LUMINANCE16UI_EXT = 0x8D7A,
GL_LUMINANCE_ALPHA16UI_EXT = 0x8D7B,
GL_RGBA8UI_EXT = 0x8D7C,
GL_RGB8UI_EXT = 0x8D7D,
GL_ALPHA8UI_EXT = 0x8D7E,
GL_INTENSITY8UI_EXT = 0x8D7F,
GL_LUMINANCE8UI_EXT = 0x8D80,
GL_LUMINANCE_ALPHA8UI_EXT = 0x8D81,
GL_RGBA32I_EXT = 0x8D82,
GL_RGB32I_EXT = 0x8D83,
GL_ALPHA32I_EXT = 0x8D84,
GL_INTENSITY32I_EXT = 0x8D85,
GL_LUMINANCE32I_EXT = 0x8D86,
GL_LUMINANCE_ALPHA32I_EXT = 0x8D87,
GL_RGBA16I_EXT = 0x8D88,
GL_RGB16I_EXT = 0x8D89,
GL_ALPHA16I_EXT = 0x8D8A,
GL_INTENSITY16I_EXT = 0x8D8B,
GL_LUMINANCE16I_EXT = 0x8D8C,
GL_LUMINANCE_ALPHA16I_EXT = 0x8D8D,
GL_RGBA8I_EXT = 0x8D8E,
GL_RGB8I_EXT = 0x8D8F,
GL_ALPHA8I_EXT = 0x8D90,
GL_INTENSITY8I_EXT = 0x8D91,
GL_LUMINANCE8I_EXT = 0x8D92,
GL_LUMINANCE_ALPHA8I_EXT = 0x8D93,
GL_RED_INTEGER_EXT = 0x8D94,
GL_GREEN_INTEGER_EXT = 0x8D95,
GL_BLUE_INTEGER_EXT = 0x8D96,
GL_ALPHA_INTEGER_EXT = 0x8D97,
GL_RGB_INTEGER_EXT = 0x8D98,
GL_RGBA_INTEGER_EXT = 0x8D99,
GL_BGR_INTEGER_EXT = 0x8D9A,
GL_BGRA_INTEGER_EXT = 0x8D9B,
GL_LUMINANCE_INTEGER_EXT = 0x8D9C,
GL_LUMINANCE_ALPHA_INTEGER_EXT = 0x8D9D,
GL_RGBA_INTEGER_MODE_EXT = 0x8D9E,
}

/*  GL_GREMEDY_frame_terminator */

/*  GL_NV_conditional_render */
enum {
GL_QUERY_WAIT_NV = 0x8E13,
GL_QUERY_NO_WAIT_NV = 0x8E14,
GL_QUERY_BY_REGION_WAIT_NV = 0x8E15,
GL_QUERY_BY_REGION_NO_WAIT_NV = 0x8E16,
}

/*  GL_NV_present_video */
enum {
GL_FRAME_NV = 0x8E26,
GL_FIELDS_NV = 0x8E27,
GL_CURRENT_TIME_NV = 0x8E28,
GL_NUM_FILL_STREAMS_NV = 0x8E29,
GL_PRESENT_TIME_NV = 0x8E2A,
GL_PRESENT_DURATION_NV = 0x8E2B,
}

/*  GL_EXT_transform_feedback */
enum {
GL_TRANSFORM_FEEDBACK_BUFFER_EXT = 0x8C8E,
GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT = 0x8C84,
GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT = 0x8C85,
GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT = 0x8C8F,
GL_INTERLEAVED_ATTRIBS_EXT = 0x8C8C,
GL_SEPARATE_ATTRIBS_EXT = 0x8C8D,
GL_PRIMITIVES_GENERATED_EXT = 0x8C87,
GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT = 0x8C88,
GL_RASTERIZER_DISCARD_EXT = 0x8C89,
GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT = 0x8C8A,
GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT = 0x8C8B,
GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT = 0x8C80,
GL_TRANSFORM_FEEDBACK_VARYINGS_EXT = 0x8C83,
GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT = 0x8C7F,
GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT = 0x8C76,
}

/*  GL_EXT_direct_state_access */
enum {
GL_PROGRAM_MATRIX_EXT = 0x8E2D,
GL_TRANSPOSE_PROGRAM_MATRIX_EXT = 0x8E2E,
GL_PROGRAM_MATRIX_STACK_DEPTH_EXT = 0x8E2F,
}

/*  GL_EXT_vertex_array_bgra */
/* reuse GL_BGRA */

/*  GL_EXT_texture_swizzle */
enum {
GL_TEXTURE_SWIZZLE_R_EXT = 0x8E42,
GL_TEXTURE_SWIZZLE_G_EXT = 0x8E43,
GL_TEXTURE_SWIZZLE_B_EXT = 0x8E44,
GL_TEXTURE_SWIZZLE_A_EXT = 0x8E45,
GL_TEXTURE_SWIZZLE_RGBA_EXT = 0x8E46,
}

/*  GL_NV_explicit_multisample */
enum {
GL_SAMPLE_POSITION_NV = 0x8E50,
GL_SAMPLE_MASK_NV = 0x8E51,
GL_SAMPLE_MASK_VALUE_NV = 0x8E52,
GL_TEXTURE_BINDING_RENDERBUFFER_NV = 0x8E53,
GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV = 0x8E54,
GL_TEXTURE_RENDERBUFFER_NV = 0x8E55,
GL_SAMPLER_RENDERBUFFER_NV = 0x8E56,
GL_INT_SAMPLER_RENDERBUFFER_NV = 0x8E57,
GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV = 0x8E58,
GL_MAX_SAMPLE_MASK_WORDS_NV = 0x8E59,
}

/*  GL_NV_transform_feedback2 */
enum {
GL_TRANSFORM_FEEDBACK_NV = 0x8E22,
GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV = 0x8E23,
GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV = 0x8E24,
GL_TRANSFORM_FEEDBACK_BINDING_NV = 0x8E25,
}

/*  GL_ATI_meminfo */
enum {
GL_VBO_FREE_MEMORY_ATI = 0x87FB,
GL_TEXTURE_FREE_MEMORY_ATI = 0x87FC,
GL_RENDERBUFFER_FREE_MEMORY_ATI = 0x87FD,
}

/*  GL_AMD_performance_monitor */
enum {
GL_COUNTER_TYPE_AMD = 0x8BC0,
GL_COUNTER_RANGE_AMD = 0x8BC1,
GL_UNSIGNED_INT64_AMD = 0x8BC2,
GL_PERCENTAGE_AMD = 0x8BC3,
GL_PERFMON_RESULT_AVAILABLE_AMD = 0x8BC4,
GL_PERFMON_RESULT_SIZE_AMD = 0x8BC5,
GL_PERFMON_RESULT_AMD = 0x8BC6,
}

/*  GL_AMD_texture_texture4 */

/*  GL_AMD_vertex_shader_tesselator */
enum {
GL_SAMPLER_BUFFER_AMD = 0x9001,
GL_INT_SAMPLER_BUFFER_AMD = 0x9002,
GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD = 0x9003,
GL_TESSELLATION_MODE_AMD = 0x9004,
GL_TESSELLATION_FACTOR_AMD = 0x9005,
GL_DISCRETE_AMD = 0x9006,
GL_CONTINUOUS_AMD = 0x9007,
}

/*  GL_EXT_provoking_vertex */
enum {
GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT = 0x8E4C,
GL_FIRST_VERTEX_CONVENTION_EXT = 0x8E4D,
GL_LAST_VERTEX_CONVENTION_EXT = 0x8E4E,
GL_PROVOKING_VERTEX_EXT = 0x8E4F,
}

/*  GL_EXT_texture_snorm */
enum {
GL_ALPHA_SNORM = 0x9010,
GL_LUMINANCE_SNORM = 0x9011,
GL_LUMINANCE_ALPHA_SNORM = 0x9012,
GL_INTENSITY_SNORM = 0x9013,
GL_ALPHA8_SNORM = 0x9014,
GL_LUMINANCE8_SNORM = 0x9015,
GL_LUMINANCE8_ALPHA8_SNORM = 0x9016,
GL_INTENSITY8_SNORM = 0x9017,
GL_ALPHA16_SNORM = 0x9018,
GL_LUMINANCE16_SNORM = 0x9019,
GL_LUMINANCE16_ALPHA16_SNORM = 0x901A,
GL_INTENSITY16_SNORM = 0x901B,
/* reuse GL_RED_SNORM */
/* reuse GL_RG_SNORM */
/* reuse GL_RGB_SNORM */
/* reuse GL_RGBA_SNORM */
/* reuse GL_R8_SNORM */
/* reuse GL_RG8_SNORM */
/* reuse GL_RGB8_SNORM */
/* reuse GL_RGBA8_SNORM */
/* reuse GL_R16_SNORM */
/* reuse GL_RG16_SNORM */
/* reuse GL_RGB16_SNORM */
/* reuse GL_RGBA16_SNORM */
/* reuse GL_SIGNED_NORMALIZED */
}

/*  GL_AMD_draw_buffers_blend */

/*  GL_APPLE_texture_range */
enum {
GL_TEXTURE_RANGE_LENGTH_APPLE = 0x85B7,
GL_TEXTURE_RANGE_POINTER_APPLE = 0x85B8,
GL_TEXTURE_STORAGE_HINT_APPLE = 0x85BC,
GL_STORAGE_PRIVATE_APPLE = 0x85BD,
/* reuse GL_STORAGE_CACHED_APPLE */
/* reuse GL_STORAGE_SHARED_APPLE */
}

/*  GL_APPLE_float_pixels */
enum {
GL_HALF_APPLE = 0x140B,
GL_RGBA_FLOAT32_APPLE = 0x8814,
GL_RGB_FLOAT32_APPLE = 0x8815,
GL_ALPHA_FLOAT32_APPLE = 0x8816,
GL_INTENSITY_FLOAT32_APPLE = 0x8817,
GL_LUMINANCE_FLOAT32_APPLE = 0x8818,
GL_LUMINANCE_ALPHA_FLOAT32_APPLE = 0x8819,
GL_RGBA_FLOAT16_APPLE = 0x881A,
GL_RGB_FLOAT16_APPLE = 0x881B,
GL_ALPHA_FLOAT16_APPLE = 0x881C,
GL_INTENSITY_FLOAT16_APPLE = 0x881D,
GL_LUMINANCE_FLOAT16_APPLE = 0x881E,
GL_LUMINANCE_ALPHA_FLOAT16_APPLE = 0x881F,
GL_COLOR_FLOAT_APPLE = 0x8A0F,
}

/*  GL_APPLE_vertex_program_evaluators */
enum {
GL_VERTEX_ATTRIB_MAP1_APPLE = 0x8A00,
GL_VERTEX_ATTRIB_MAP2_APPLE = 0x8A01,
GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE = 0x8A02,
GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE = 0x8A03,
GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE = 0x8A04,
GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE = 0x8A05,
GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE = 0x8A06,
GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE = 0x8A07,
GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE = 0x8A08,
GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE = 0x8A09,
}

/*  GL_APPLE_aux_depth_stencil */
enum {
GL_AUX_DEPTH_STENCIL_APPLE = 0x8A14,
}

/*  GL_APPLE_object_purgeable */
enum {
GL_BUFFER_OBJECT_APPLE = 0x85B3,
GL_RELEASED_APPLE = 0x8A19,
GL_VOLATILE_APPLE = 0x8A1A,
GL_RETAINED_APPLE = 0x8A1B,
GL_UNDEFINED_APPLE = 0x8A1C,
GL_PURGEABLE_APPLE = 0x8A1D,
}

/*  GL_APPLE_row_bytes */
enum {
GL_PACK_ROW_BYTES_APPLE = 0x8A15,
GL_UNPACK_ROW_BYTES_APPLE = 0x8A16,
}

/*  GL_APPLE_rgb_422 */
enum {
GL_RGB_422_APPLE = 0x8A1F,
/* reuse GL_UNSIGNED_SHORT_8_8_APPLE */
/* reuse GL_UNSIGNED_SHORT_8_8_REV_APPLE */
}

/*  GL_NV_video_capture */
enum {
GL_VIDEO_BUFFER_NV = 0x9020,
GL_VIDEO_BUFFER_BINDING_NV = 0x9021,
GL_FIELD_UPPER_NV = 0x9022,
GL_FIELD_LOWER_NV = 0x9023,
GL_NUM_VIDEO_CAPTURE_STREAMS_NV = 0x9024,
GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV = 0x9025,
GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV = 0x9026,
GL_LAST_VIDEO_CAPTURE_STATUS_NV = 0x9027,
GL_VIDEO_BUFFER_PITCH_NV = 0x9028,
GL_VIDEO_COLOR_CONVERSION_MATRIX_NV = 0x9029,
GL_VIDEO_COLOR_CONVERSION_MAX_NV = 0x902A,
GL_VIDEO_COLOR_CONVERSION_MIN_NV = 0x902B,
GL_VIDEO_COLOR_CONVERSION_OFFSET_NV = 0x902C,
GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV = 0x902D,
GL_PARTIAL_SUCCESS_NV = 0x902E,
GL_SUCCESS_NV = 0x902F,
GL_FAILURE_NV = 0x9030,
GL_YCBYCR8_422_NV = 0x9031,
GL_YCBAYCR8A_4224_NV = 0x9032,
GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV = 0x9033,
GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV = 0x9034,
GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV = 0x9035,
GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV = 0x9036,
GL_Z4Y12Z4CB12Z4CR12_444_NV = 0x9037,
GL_VIDEO_CAPTURE_FRAME_WIDTH_NV = 0x9038,
GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV = 0x9039,
GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV = 0x903A,
GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV = 0x903B,
GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV = 0x903C,
}

/*  GL_NV_copy_image */

/*  GL_EXT_separate_shader_objects */
enum {
GL_ACTIVE_PROGRAM_EXT = 0x8B8D,
}

/*  GL_NV_parameter_buffer_object2 */

/*  GL_NV_shader_buffer_load */
enum {
GL_BUFFER_GPU_ADDRESS_NV = 0x8F1D,
GL_GPU_ADDRESS_NV = 0x8F34,
GL_MAX_SHADER_BUFFER_ADDRESS_NV = 0x8F35,
}

/*  GL_NV_vertex_buffer_unified_memory */
enum {
GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV = 0x8F1E,
GL_ELEMENT_ARRAY_UNIFIED_NV = 0x8F1F,
GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV = 0x8F20,
GL_VERTEX_ARRAY_ADDRESS_NV = 0x8F21,
GL_NORMAL_ARRAY_ADDRESS_NV = 0x8F22,
GL_COLOR_ARRAY_ADDRESS_NV = 0x8F23,
GL_INDEX_ARRAY_ADDRESS_NV = 0x8F24,
GL_TEXTURE_COORD_ARRAY_ADDRESS_NV = 0x8F25,
GL_EDGE_FLAG_ARRAY_ADDRESS_NV = 0x8F26,
GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV = 0x8F27,
GL_FOG_COORD_ARRAY_ADDRESS_NV = 0x8F28,
GL_ELEMENT_ARRAY_ADDRESS_NV = 0x8F29,
GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV = 0x8F2A,
GL_VERTEX_ARRAY_LENGTH_NV = 0x8F2B,
GL_NORMAL_ARRAY_LENGTH_NV = 0x8F2C,
GL_COLOR_ARRAY_LENGTH_NV = 0x8F2D,
GL_INDEX_ARRAY_LENGTH_NV = 0x8F2E,
GL_TEXTURE_COORD_ARRAY_LENGTH_NV = 0x8F2F,
GL_EDGE_FLAG_ARRAY_LENGTH_NV = 0x8F30,
GL_SECONDARY_COLOR_ARRAY_LENGTH_NV = 0x8F31,
GL_FOG_COORD_ARRAY_LENGTH_NV = 0x8F32,
GL_ELEMENT_ARRAY_LENGTH_NV = 0x8F33,
GL_DRAW_INDIRECT_UNIFIED_NV = 0x8F40,
GL_DRAW_INDIRECT_ADDRESS_NV = 0x8F41,
GL_DRAW_INDIRECT_LENGTH_NV = 0x8F42,
}

/*  GL_NV_texture_barrier */

/*  GL_AMD_shader_stencil_export */

/*  GL_AMD_seamless_cubemap_per_texture */
/* reuse GL_TEXTURE_CUBE_MAP_SEAMLESS */

/*  GL_AMD_conservative_depth */

/*  GL_EXT_shader_image_load_store */
enum {
GL_MAX_IMAGE_UNITS_EXT = 0x8F38,
GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT = 0x8F39,
GL_IMAGE_BINDING_NAME_EXT = 0x8F3A,
GL_IMAGE_BINDING_LEVEL_EXT = 0x8F3B,
GL_IMAGE_BINDING_LAYERED_EXT = 0x8F3C,
GL_IMAGE_BINDING_LAYER_EXT = 0x8F3D,
GL_IMAGE_BINDING_ACCESS_EXT = 0x8F3E,
GL_IMAGE_1D_EXT = 0x904C,
GL_IMAGE_2D_EXT = 0x904D,
GL_IMAGE_3D_EXT = 0x904E,
GL_IMAGE_2D_RECT_EXT = 0x904F,
GL_IMAGE_CUBE_EXT = 0x9050,
GL_IMAGE_BUFFER_EXT = 0x9051,
GL_IMAGE_1D_ARRAY_EXT = 0x9052,
GL_IMAGE_2D_ARRAY_EXT = 0x9053,
GL_IMAGE_CUBE_MAP_ARRAY_EXT = 0x9054,
GL_IMAGE_2D_MULTISAMPLE_EXT = 0x9055,
GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT = 0x9056,
GL_INT_IMAGE_1D_EXT = 0x9057,
GL_INT_IMAGE_2D_EXT = 0x9058,
GL_INT_IMAGE_3D_EXT = 0x9059,
GL_INT_IMAGE_2D_RECT_EXT = 0x905A,
GL_INT_IMAGE_CUBE_EXT = 0x905B,
GL_INT_IMAGE_BUFFER_EXT = 0x905C,
GL_INT_IMAGE_1D_ARRAY_EXT = 0x905D,
GL_INT_IMAGE_2D_ARRAY_EXT = 0x905E,
GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT = 0x905F,
GL_INT_IMAGE_2D_MULTISAMPLE_EXT = 0x9060,
GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT = 0x9061,
GL_UNSIGNED_INT_IMAGE_1D_EXT = 0x9062,
GL_UNSIGNED_INT_IMAGE_2D_EXT = 0x9063,
GL_UNSIGNED_INT_IMAGE_3D_EXT = 0x9064,
GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT = 0x9065,
GL_UNSIGNED_INT_IMAGE_CUBE_EXT = 0x9066,
GL_UNSIGNED_INT_IMAGE_BUFFER_EXT = 0x9067,
GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT = 0x9068,
GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT = 0x9069,
GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT = 0x906A,
GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT = 0x906B,
GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT = 0x906C,
GL_MAX_IMAGE_SAMPLES_EXT = 0x906D,
GL_IMAGE_BINDING_FORMAT_EXT = 0x906E,
GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT = 0x00000001,
GL_ELEMENT_ARRAY_BARRIER_BIT_EXT = 0x00000002,
GL_UNIFORM_BARRIER_BIT_EXT = 0x00000004,
GL_TEXTURE_FETCH_BARRIER_BIT_EXT = 0x00000008,
GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT = 0x00000020,
GL_COMMAND_BARRIER_BIT_EXT = 0x00000040,
GL_PIXEL_BUFFER_BARRIER_BIT_EXT = 0x00000080,
GL_TEXTURE_UPDATE_BARRIER_BIT_EXT = 0x00000100,
GL_BUFFER_UPDATE_BARRIER_BIT_EXT = 0x00000200,
GL_FRAMEBUFFER_BARRIER_BIT_EXT = 0x00000400,
GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT = 0x00000800,
GL_ATOMIC_COUNTER_BARRIER_BIT_EXT = 0x00001000,
GL_ALL_BARRIER_BITS_EXT = 0xFFFFFFFF,
}

/*  GL_EXT_vertex_attrib_64bit */
enum {
/* reuse GL_DOUBLE */
GL_DOUBLE_VEC2_EXT = 0x8FFC,
GL_DOUBLE_VEC3_EXT = 0x8FFD,
GL_DOUBLE_VEC4_EXT = 0x8FFE,
GL_DOUBLE_MAT2_EXT = 0x8F46,
GL_DOUBLE_MAT3_EXT = 0x8F47,
GL_DOUBLE_MAT4_EXT = 0x8F48,
GL_DOUBLE_MAT2x3_EXT = 0x8F49,
GL_DOUBLE_MAT2x4_EXT = 0x8F4A,
GL_DOUBLE_MAT3x2_EXT = 0x8F4B,
GL_DOUBLE_MAT3x4_EXT = 0x8F4C,
GL_DOUBLE_MAT4x2_EXT = 0x8F4D,
GL_DOUBLE_MAT4x3_EXT = 0x8F4E,
}

/*  GL_NV_gpu_program5 */
enum {
GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV = 0x8E5A,
GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV = 0x8E5B,
GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV = 0x8E5C,
GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV = 0x8E5D,
GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV = 0x8E5E,
GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV = 0x8E5F,
GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV = 0x8F44,
GL_MAX_PROGRAM_SUBROUTINE_NUM_NV = 0x8F45,
}

/*  GL_NV_gpu_shader5 */
enum {
GL_INT64_NV = 0x140E,
GL_UNSIGNED_INT64_NV = 0x140F,
GL_INT8_NV = 0x8FE0,
GL_INT8_VEC2_NV = 0x8FE1,
GL_INT8_VEC3_NV = 0x8FE2,
GL_INT8_VEC4_NV = 0x8FE3,
GL_INT16_NV = 0x8FE4,
GL_INT16_VEC2_NV = 0x8FE5,
GL_INT16_VEC3_NV = 0x8FE6,
GL_INT16_VEC4_NV = 0x8FE7,
GL_INT64_VEC2_NV = 0x8FE9,
GL_INT64_VEC3_NV = 0x8FEA,
GL_INT64_VEC4_NV = 0x8FEB,
GL_UNSIGNED_INT8_NV = 0x8FEC,
GL_UNSIGNED_INT8_VEC2_NV = 0x8FED,
GL_UNSIGNED_INT8_VEC3_NV = 0x8FEE,
GL_UNSIGNED_INT8_VEC4_NV = 0x8FEF,
GL_UNSIGNED_INT16_NV = 0x8FF0,
GL_UNSIGNED_INT16_VEC2_NV = 0x8FF1,
GL_UNSIGNED_INT16_VEC3_NV = 0x8FF2,
GL_UNSIGNED_INT16_VEC4_NV = 0x8FF3,
GL_UNSIGNED_INT64_VEC2_NV = 0x8FF5,
GL_UNSIGNED_INT64_VEC3_NV = 0x8FF6,
GL_UNSIGNED_INT64_VEC4_NV = 0x8FF7,
GL_FLOAT16_NV = 0x8FF8,
GL_FLOAT16_VEC2_NV = 0x8FF9,
GL_FLOAT16_VEC3_NV = 0x8FFA,
GL_FLOAT16_VEC4_NV = 0x8FFB,
/* reuse GL_PATCHES */
}

/*  GL_NV_shader_buffer_store */
enum {
GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV = 0x00000010,
/* reuse GL_READ_WRITE */
/* reuse GL_WRITE_ONLY */
}

/*  GL_NV_tessellation_program5 */
enum {
GL_MAX_PROGRAM_PATCH_ATTRIBS_NV = 0x86D8,
GL_TESS_CONTROL_PROGRAM_NV = 0x891E,
GL_TESS_EVALUATION_PROGRAM_NV = 0x891F,
GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV = 0x8C74,
GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV = 0x8C75,
}

/*  GL_NV_vertex_attrib_integer_64bit */
/* reuse GL_INT64_NV */
/* reuse GL_UNSIGNED_INT64_NV */

/*  GL_NV_multisample_coverage */
enum {
GL_COVERAGE_SAMPLES_NV = 0x80A9,
GL_COLOR_SAMPLES_NV = 0x8E20,
}

/*  GL_AMD_name_gen_delete */
enum {
GL_DATA_BUFFER_AMD = 0x9151,
GL_PERFORMANCE_MONITOR_AMD = 0x9152,
GL_QUERY_OBJECT_AMD = 0x9153,
GL_VERTEX_ARRAY_OBJECT_AMD = 0x9154,
GL_SAMPLER_OBJECT_AMD = 0x9155,
}

/*  GL_AMD_debug_output */
enum {
GL_MAX_DEBUG_MESSAGE_LENGTH_AMD = 0x9143,
GL_MAX_DEBUG_LOGGED_MESSAGES_AMD = 0x9144,
GL_DEBUG_LOGGED_MESSAGES_AMD = 0x9145,
GL_DEBUG_SEVERITY_HIGH_AMD = 0x9146,
GL_DEBUG_SEVERITY_MEDIUM_AMD = 0x9147,
GL_DEBUG_SEVERITY_LOW_AMD = 0x9148,
GL_DEBUG_CATEGORY_API_ERROR_AMD = 0x9149,
GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD = 0x914A,
GL_DEBUG_CATEGORY_DEPRECATION_AMD = 0x914B,
GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD = 0x914C,
GL_DEBUG_CATEGORY_PERFORMANCE_AMD = 0x914D,
GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD = 0x914E,
GL_DEBUG_CATEGORY_APPLICATION_AMD = 0x914F,
GL_DEBUG_CATEGORY_OTHER_AMD = 0x9150,
}

/*  GL_NV_vdpau_interop */
enum {
GL_SURFACE_STATE_NV = 0x86EB,
GL_SURFACE_REGISTERED_NV = 0x86FD,
GL_SURFACE_MAPPED_NV = 0x8700,
GL_WRITE_DISCARD_NV = 0x88BE,
}

/*  GL_AMD_transform_feedback3_lines_triangles */

/*  GL_AMD_depth_clamp_separate */
enum {
GL_DEPTH_CLAMP_NEAR_AMD = 0x901E,
GL_DEPTH_CLAMP_FAR_AMD = 0x901F,
}

/*  GL_EXT_texture_sRGB_decode */
enum {
GL_TEXTURE_SRGB_DECODE_EXT = 0x8A48,
GL_DECODE_EXT = 0x8A49,
GL_SKIP_DECODE_EXT = 0x8A4A,
}

/*  GL_NV_texture_multisample */
enum {
GL_TEXTURE_COVERAGE_SAMPLES_NV = 0x9045,
GL_TEXTURE_COLOR_SAMPLES_NV = 0x9046,
}

/*  GL_AMD_blend_minmax_factor */
enum {
GL_FACTOR_MIN_AMD = 0x901C,
GL_FACTOR_MAX_AMD = 0x901D,
}

/*  GL_AMD_sample_positions */
enum {
GL_SUBSAMPLE_DISTANCE_AMD = 0x883F,
}

/*  GL_EXT_x11_sync_object */
enum {
GL_SYNC_X11_FENCE_EXT = 0x90E1,
}

/*  GL_AMD_multi_draw_indirect */

/*  GL_EXT_framebuffer_multisample_blit_scaled */
enum {
GL_SCALED_RESOLVE_FASTEST_EXT = 0x90BA,
GL_SCALED_RESOLVE_NICEST_EXT = 0x90BB,
}

/*  GL_NV_path_rendering */
enum {
GL_PATH_FORMAT_SVG_NV = 0x9070,
GL_PATH_FORMAT_PS_NV = 0x9071,
GL_STANDARD_FONT_NAME_NV = 0x9072,
GL_SYSTEM_FONT_NAME_NV = 0x9073,
GL_FILE_NAME_NV = 0x9074,
GL_PATH_STROKE_WIDTH_NV = 0x9075,
GL_PATH_END_CAPS_NV = 0x9076,
GL_PATH_INITIAL_END_CAP_NV = 0x9077,
GL_PATH_TERMINAL_END_CAP_NV = 0x9078,
GL_PATH_JOIN_STYLE_NV = 0x9079,
GL_PATH_MITER_LIMIT_NV = 0x907A,
GL_PATH_DASH_CAPS_NV = 0x907B,
GL_PATH_INITIAL_DASH_CAP_NV = 0x907C,
GL_PATH_TERMINAL_DASH_CAP_NV = 0x907D,
GL_PATH_DASH_OFFSET_NV = 0x907E,
GL_PATH_CLIENT_LENGTH_NV = 0x907F,
GL_PATH_FILL_MODE_NV = 0x9080,
GL_PATH_FILL_MASK_NV = 0x9081,
GL_PATH_FILL_COVER_MODE_NV = 0x9082,
GL_PATH_STROKE_COVER_MODE_NV = 0x9083,
GL_PATH_STROKE_MASK_NV = 0x9084,
GL_PATH_SAMPLE_QUALITY_NV = 0x9085,
GL_PATH_STROKE_BOUND_NV = 0x9086,
GL_PATH_STROKE_OVERSAMPLE_COUNT_NV = 0x9087,
GL_COUNT_UP_NV = 0x9088,
GL_COUNT_DOWN_NV = 0x9089,
GL_PATH_OBJECT_BOUNDING_BOX_NV = 0x908A,
GL_CONVEX_HULL_NV = 0x908B,
GL_MULTI_HULLS_NV = 0x908C,
GL_BOUNDING_BOX_NV = 0x908D,
GL_TRANSLATE_X_NV = 0x908E,
GL_TRANSLATE_Y_NV = 0x908F,
GL_TRANSLATE_2D_NV = 0x9090,
GL_TRANSLATE_3D_NV = 0x9091,
GL_AFFINE_2D_NV = 0x9092,
GL_PROJECTIVE_2D_NV = 0x9093,
GL_AFFINE_3D_NV = 0x9094,
GL_PROJECTIVE_3D_NV = 0x9095,
GL_TRANSPOSE_AFFINE_2D_NV = 0x9096,
GL_TRANSPOSE_PROJECTIVE_2D_NV = 0x9097,
GL_TRANSPOSE_AFFINE_3D_NV = 0x9098,
GL_TRANSPOSE_PROJECTIVE_3D_NV = 0x9099,
GL_UTF8_NV = 0x909A,
GL_UTF16_NV = 0x909B,
GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV = 0x909C,
GL_PATH_COMMAND_COUNT_NV = 0x909D,
GL_PATH_COORD_COUNT_NV = 0x909E,
GL_PATH_DASH_ARRAY_COUNT_NV = 0x909F,
GL_PATH_COMPUTED_LENGTH_NV = 0x90A0,
GL_PATH_FILL_BOUNDING_BOX_NV = 0x90A1,
GL_PATH_STROKE_BOUNDING_BOX_NV = 0x90A2,
GL_SQUARE_NV = 0x90A3,
GL_ROUND_NV = 0x90A4,
GL_TRIANGULAR_NV = 0x90A5,
GL_BEVEL_NV = 0x90A6,
GL_MITER_REVERT_NV = 0x90A7,
GL_MITER_TRUNCATE_NV = 0x90A8,
GL_SKIP_MISSING_GLYPH_NV = 0x90A9,
GL_USE_MISSING_GLYPH_NV = 0x90AA,
GL_PATH_ERROR_POSITION_NV = 0x90AB,
GL_PATH_FOG_GEN_MODE_NV = 0x90AC,
GL_ACCUM_ADJACENT_PAIRS_NV = 0x90AD,
GL_ADJACENT_PAIRS_NV = 0x90AE,
GL_FIRST_TO_REST_NV = 0x90AF,
GL_PATH_GEN_MODE_NV = 0x90B0,
GL_PATH_GEN_COEFF_NV = 0x90B1,
GL_PATH_GEN_COLOR_FORMAT_NV = 0x90B2,
GL_PATH_GEN_COMPONENTS_NV = 0x90B3,
GL_PATH_STENCIL_FUNC_NV = 0x90B7,
GL_PATH_STENCIL_REF_NV = 0x90B8,
GL_PATH_STENCIL_VALUE_MASK_NV = 0x90B9,
GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV = 0x90BD,
GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV = 0x90BE,
GL_PATH_COVER_DEPTH_FUNC_NV = 0x90BF,
GL_PATH_DASH_OFFSET_RESET_NV = 0x90B4,
GL_MOVE_TO_RESETS_NV = 0x90B5,
GL_MOVE_TO_CONTINUES_NV = 0x90B6,
GL_CLOSE_PATH_NV = 0x00,
GL_MOVE_TO_NV = 0x02,
GL_RELATIVE_MOVE_TO_NV = 0x03,
GL_LINE_TO_NV = 0x04,
GL_RELATIVE_LINE_TO_NV = 0x05,
GL_HORIZONTAL_LINE_TO_NV = 0x06,
GL_RELATIVE_HORIZONTAL_LINE_TO_NV = 0x07,
GL_VERTICAL_LINE_TO_NV = 0x08,
GL_RELATIVE_VERTICAL_LINE_TO_NV = 0x09,
GL_QUADRATIC_CURVE_TO_NV = 0x0A,
GL_RELATIVE_QUADRATIC_CURVE_TO_NV = 0x0B,
GL_CUBIC_CURVE_TO_NV = 0x0C,
GL_RELATIVE_CUBIC_CURVE_TO_NV = 0x0D,
GL_SMOOTH_QUADRATIC_CURVE_TO_NV = 0x0E,
GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV = 0x0F,
GL_SMOOTH_CUBIC_CURVE_TO_NV = 0x10,
GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV = 0x11,
GL_SMALL_CCW_ARC_TO_NV = 0x12,
GL_RELATIVE_SMALL_CCW_ARC_TO_NV = 0x13,
GL_SMALL_CW_ARC_TO_NV = 0x14,
GL_RELATIVE_SMALL_CW_ARC_TO_NV = 0x15,
GL_LARGE_CCW_ARC_TO_NV = 0x16,
GL_RELATIVE_LARGE_CCW_ARC_TO_NV = 0x17,
GL_LARGE_CW_ARC_TO_NV = 0x18,
GL_RELATIVE_LARGE_CW_ARC_TO_NV = 0x19,
GL_RESTART_PATH_NV = 0xF0,
GL_DUP_FIRST_CUBIC_CURVE_TO_NV = 0xF2,
GL_DUP_LAST_CUBIC_CURVE_TO_NV = 0xF4,
GL_RECT_NV = 0xF6,
GL_CIRCULAR_CCW_ARC_TO_NV = 0xF8,
GL_CIRCULAR_CW_ARC_TO_NV = 0xFA,
GL_CIRCULAR_TANGENT_ARC_TO_NV = 0xFC,
GL_ARC_TO_NV = 0xFE,
GL_RELATIVE_ARC_TO_NV = 0xFF,
GL_BOLD_BIT_NV = 0x01,
GL_ITALIC_BIT_NV = 0x02,
GL_GLYPH_WIDTH_BIT_NV = 0x01,
GL_GLYPH_HEIGHT_BIT_NV = 0x02,
GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV = 0x04,
GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV = 0x08,
GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV = 0x10,
GL_GLYPH_VERTICAL_BEARING_X_BIT_NV = 0x20,
GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV = 0x40,
GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV = 0x80,
GL_GLYPH_HAS_KERNING_NV = 0x100,
GL_FONT_X_MIN_BOUNDS_NV = 0x00010000,
GL_FONT_Y_MIN_BOUNDS_NV = 0x00020000,
GL_FONT_X_MAX_BOUNDS_NV = 0x00040000,
GL_FONT_Y_MAX_BOUNDS_NV = 0x00080000,
GL_FONT_UNITS_PER_EM_NV = 0x00100000,
GL_FONT_ASCENDER_NV = 0x00200000,
GL_FONT_DESCENDER_NV = 0x00400000,
GL_FONT_HEIGHT_NV = 0x00800000,
GL_FONT_MAX_ADVANCE_WIDTH_NV = 0x01000000,
GL_FONT_MAX_ADVANCE_HEIGHT_NV = 0x02000000,
GL_FONT_UNDERLINE_POSITION_NV = 0x04000000,
GL_FONT_UNDERLINE_THICKNESS_NV = 0x08000000,
GL_FONT_HAS_KERNING_NV = 0x10000000,
}

/*  GL_AMD_pinned_memory */
enum {
GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD = 0x9160,
}

/*  GL_AMD_stencil_operation_extended */
enum {
GL_SET_AMD = 0x874A,
GL_REPLACE_VALUE_AMD = 0x874B,
GL_STENCIL_OP_VALUE_AMD = 0x874C,
GL_STENCIL_BACK_OP_VALUE_AMD = 0x874D,
}

/*  GL_AMD_vertex_shader_viewport_index */

/*  GL_AMD_vertex_shader_layer */

/*  GL_NV_bindless_texture */

/*  GL_NV_shader_atomic_float */

/*  GL_AMD_query_buffer_object */
enum {
GL_QUERY_BUFFER_AMD = 0x9192,
GL_QUERY_BUFFER_BINDING_AMD = 0x9193,
GL_QUERY_RESULT_NO_WAIT_AMD = 0x9194,
}

/*  GL_AMD_sparse_texture */
enum {
    GL_VIRTUAL_PAGE_SIZE_X_AMD = 0x9195,
    GL_VIRTUAL_PAGE_SIZE_Y_AMD = 0x9196,
    GL_VIRTUAL_PAGE_SIZE_Z_AMD = 0x9197,
    GL_MAX_SPARSE_TEXTURE_SIZE_AMD = 0x9198,
    GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD = 0x9199,
    GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS = 0x919A,
    GL_MIN_SPARSE_LEVEL_AMD = 0x919B,
    GL_MIN_LOD_WARNING_AMD = 0x919C,
    GL_TEXTURE_STORAGE_SPARSE_BIT_AMD = 0x00000001,
}


/*************************************************************/

/* GL_VERSION_2_0 */
/* GL type for program/shader text */
alias char GLchar;

/* GL_VERSION_1_5 */
/* GL types for handling large vertex buffer objects */
alias ptrdiff_t GLintptr;
alias ptrdiff_t GLsizeiptr;

/* GL_ARB_vertex_buffer_object */
/* GL types for handling large vertex buffer objects */
alias ptrdiff_t GLintptrARB;
alias ptrdiff_t GLsizeiptrARB;

/* GL_ARB_shader_objects */
/* GL types for program/shader text and shader object handles */
alias char GLcharARB;
alias uint GLhandleARB;

/* GL type for "half" precision (s10e5) float data in host memory */
/* GL_ARB_half_float_pixel */
alias ushort GLhalfARB;

/* GL_NV_half_float */
alias ushort GLhalfNV;

alias long int64_t;
alias ulong uint64_t;

/* GL_EXT_timer_query */
alias int64_t GLint64EXT;
alias uint64_t GLuint64EXT;

/* GL_ARB_sync */
alias int64_t GLint64;
alias uint64_t GLuint64;
struct __GLsync;
alias GLsync = __GLsync*;

/* GL_ARB_cl_event */
/* These incomplete types let us declare types compatible with OpenCL's cl_context and cl_event */
struct _cl_context;
struct _cl_event;

/* GL_ARB_debug_output */
alias void function(GLenum source,GLenum type,GLuint id,GLenum severity,
                    GLsizei length,const GLchar *message,
                    GLvoid *userParam) GLDEBUGPROCARB;

/* GL_AMD_debug_output */
alias void function(GLuint id,GLenum category,GLenum severity,
                    GLsizei length,const GLchar *message,
                    GLvoid *userParam) GLDEBUGPROCAMD;

/* GL_KHR_debug */
alias void function(GLenum source,GLenum type,GLuint id,GLenum severity,
                    GLsizei length,const GLchar *message,
                    GLvoid *userParam) GLDEBUGPROC;

/* GL_NV_vdpau_interop */
alias GLintptr GLvdpauSurfaceNV;

/* GL_VERSION_1_4 */
void glBlendFuncSeparate (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
void glMultiDrawArrays (GLenum mode, const GLint *first, const GLsizei *count, GLsizei drawcount);
void glMultiDrawElements (GLenum mode, const GLsizei *count, GLenum type, const GLvoid** indices, GLsizei drawcount);
void glPointParameterf (GLenum pname, GLfloat param);
void glPointParameterfv (GLenum pname, const GLfloat *params);
void glPointParameteri (GLenum pname, GLint param);
void glPointParameteriv (GLenum pname, const GLint *params);
void glFogCoordf (GLfloat coord);
void glFogCoordfv (const GLfloat *coord);
void glFogCoordd (GLdouble coord);
void glFogCoorddv (const GLdouble *coord);
void glFogCoordPointer (GLenum type, GLsizei stride, const GLvoid *pointer);
void glSecondaryColor3b (GLbyte red, GLbyte green, GLbyte blue);
void glSecondaryColor3bv (const GLbyte *v);
void glSecondaryColor3d (GLdouble red, GLdouble green, GLdouble blue);
void glSecondaryColor3dv (const GLdouble *v);
void glSecondaryColor3f (GLfloat red, GLfloat green, GLfloat blue);
void glSecondaryColor3fv (const GLfloat *v);
void glSecondaryColor3i (GLint red, GLint green, GLint blue);
void glSecondaryColor3iv (const GLint *v);
void glSecondaryColor3s (GLshort red, GLshort green, GLshort blue);
void glSecondaryColor3sv (const GLshort *v);
void glSecondaryColor3ub (GLubyte red, GLubyte green, GLubyte blue);
void glSecondaryColor3ubv (const GLubyte *v);
void glSecondaryColor3ui (GLuint red, GLuint green, GLuint blue);
void glSecondaryColor3uiv (const GLuint *v);
void glSecondaryColor3us (GLushort red, GLushort green, GLushort blue);
void glSecondaryColor3usv (const GLushort *v);
void glSecondaryColorPointer (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
void glWindowPos2d (GLdouble x, GLdouble y);
void glWindowPos2dv (const GLdouble *v);
void glWindowPos2f (GLfloat x, GLfloat y);
void glWindowPos2fv (const GLfloat *v);
void glWindowPos2i (GLint x, GLint y);
void glWindowPos2iv (const GLint *v);
void glWindowPos2s (GLshort x, GLshort y);
void glWindowPos2sv (const GLshort *v);
void glWindowPos3d (GLdouble x, GLdouble y, GLdouble z);
void glWindowPos3dv (const GLdouble *v);
void glWindowPos3f (GLfloat x, GLfloat y, GLfloat z);
void glWindowPos3fv (const GLfloat *v);
void glWindowPos3i (GLint x, GLint y, GLint z);
void glWindowPos3iv (const GLint *v);
void glWindowPos3s (GLshort x, GLshort y, GLshort z);
void glWindowPos3sv (const GLshort *v);

/* GL_VERSION_1_5 */
void glGenQueries (GLsizei n, GLuint *ids);
void glDeleteQueries (GLsizei n, const GLuint *ids);
GLboolean glIsQuery (GLuint id);
void glBeginQuery (GLenum target, GLuint id);
void glEndQuery (GLenum target);
void glGetQueryiv (GLenum target, GLenum pname, GLint *params);
void glGetQueryObjectiv (GLuint id, GLenum pname, GLint *params);
void glGetQueryObjectuiv (GLuint id, GLenum pname, GLuint *params);
void glBindBuffer (GLenum target, GLuint buffer);
void glDeleteBuffers (GLsizei n, const GLuint *buffers);
void glGenBuffers (GLsizei n, GLuint *buffers);
GLboolean glIsBuffer (GLuint buffer);
void glBufferData (GLenum target, GLsizeiptr size, const GLvoid *data, GLenum usage);
void glBufferSubData (GLenum target, GLintptr offset, GLsizeiptr size, const GLvoid *data);
void glGetBufferSubData (GLenum target, GLintptr offset, GLsizeiptr size, GLvoid *data);
GLvoid* glMapBuffer (GLenum target, GLenum access);
GLboolean glUnmapBuffer (GLenum target);
void glGetBufferParameteriv (GLenum target, GLenum pname, GLint *params);
void glGetBufferPointerv (GLenum target, GLenum pname, GLvoid* *params);

/* GL_VERSION_2_0 */
void glBlendEquationSeparate (GLenum modeRGB, GLenum modeAlpha);
void glDrawBuffers (GLsizei n, const GLenum *bufs);
void glStencilOpSeparate (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
void glStencilFuncSeparate (GLenum face, GLenum func, GLint refr, GLuint mask);
void glStencilMaskSeparate (GLenum face, GLuint mask);
void glAttachShader (GLuint program, GLuint shader);
void glBindAttribLocation (GLuint program, GLuint index, const GLchar *name);
void glCompileShader (GLuint shader);
GLuint glCreateProgram ();
GLuint glCreateShader (GLenum type);
void glDeleteProgram (GLuint program);
void glDeleteShader (GLuint shader);
void glDetachShader (GLuint program, GLuint shader);
void glDisableVertexAttribArray (GLuint index);
void glEnableVertexAttribArray (GLuint index);
void glGetActiveAttrib (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name);
void glGetActiveUniform (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name);
void glGetAttachedShaders (GLuint program, GLsizei maxCount, GLsizei *count, GLuint *obj);
GLint glGetAttribLocation (GLuint program, const GLchar *name);
void glGetProgramiv (GLuint program, GLenum pname, GLint *params);
void glGetProgramInfoLog (GLuint program, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
void glGetShaderiv (GLuint shader, GLenum pname, GLint *params);
void glGetShaderInfoLog (GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
void glGetShaderSource (GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *source);
GLint glGetUniformLocation (GLuint program, const GLchar *name);
void glGetUniformfv (GLuint program, GLint location, GLfloat *params);
void glGetUniformiv (GLuint program, GLint location, GLint *params);
void glGetVertexAttribdv (GLuint index, GLenum pname, GLdouble *params);
void glGetVertexAttribfv (GLuint index, GLenum pname, GLfloat *params);
void glGetVertexAttribiv (GLuint index, GLenum pname, GLint *params);
void glGetVertexAttribPointerv (GLuint index, GLenum pname, GLvoid* *pointer);
GLboolean glIsProgram (GLuint program);
GLboolean glIsShader (GLuint shader);
void glLinkProgram (GLuint program);
void glShaderSource (GLuint shader, GLsizei count, const GLchar** str, const GLint *length);
void glUseProgram (GLuint program);
void glUniform1f (GLint location, GLfloat v0);
void glUniform2f (GLint location, GLfloat v0, GLfloat v1);
void glUniform3f (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void glUniform4f (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void glUniform1i (GLint location, GLint v0);
void glUniform2i (GLint location, GLint v0, GLint v1);
void glUniform3i (GLint location, GLint v0, GLint v1, GLint v2);
void glUniform4i (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void glUniform1fv (GLint location, GLsizei count, const GLfloat *value);
void glUniform2fv (GLint location, GLsizei count, const GLfloat *value);
void glUniform3fv (GLint location, GLsizei count, const GLfloat *value);
void glUniform4fv (GLint location, GLsizei count, const GLfloat *value);
void glUniform1iv (GLint location, GLsizei count, const GLint *value);
void glUniform2iv (GLint location, GLsizei count, const GLint *value);
void glUniform3iv (GLint location, GLsizei count, const GLint *value);
void glUniform4iv (GLint location, GLsizei count, const GLint *value);
void glUniformMatrix2fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix3fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix4fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glValidateProgram (GLuint program);
void glVertexAttrib1d (GLuint index, GLdouble x);
void glVertexAttrib1dv (GLuint index, const GLdouble *v);
void glVertexAttrib1f (GLuint index, GLfloat x);
void glVertexAttrib1fv (GLuint index, const GLfloat *v);
void glVertexAttrib1s (GLuint index, GLshort x);
void glVertexAttrib1sv (GLuint index, const GLshort *v);
void glVertexAttrib2d (GLuint index, GLdouble x, GLdouble y);
void glVertexAttrib2dv (GLuint index, const GLdouble *v);
void glVertexAttrib2f (GLuint index, GLfloat x, GLfloat y);
void glVertexAttrib2fv (GLuint index, const GLfloat *v);
void glVertexAttrib2s (GLuint index, GLshort x, GLshort y);
void glVertexAttrib2sv (GLuint index, const GLshort *v);
void glVertexAttrib3d (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttrib3dv (GLuint index, const GLdouble *v);
void glVertexAttrib3f (GLuint index, GLfloat x, GLfloat y, GLfloat z);
void glVertexAttrib3fv (GLuint index, const GLfloat *v);
void glVertexAttrib3s (GLuint index, GLshort x, GLshort y, GLshort z);
void glVertexAttrib3sv (GLuint index, const GLshort *v);
void glVertexAttrib4Nbv (GLuint index, const GLbyte *v);
void glVertexAttrib4Niv (GLuint index, const GLint *v);
void glVertexAttrib4Nsv (GLuint index, const GLshort *v);
void glVertexAttrib4Nub (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
void glVertexAttrib4Nubv (GLuint index, const GLubyte *v);
void glVertexAttrib4Nuiv (GLuint index, const GLuint *v);
void glVertexAttrib4Nusv (GLuint index, const GLushort *v);
void glVertexAttrib4bv (GLuint index, const GLbyte *v);
void glVertexAttrib4d (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttrib4dv (GLuint index, const GLdouble *v);
void glVertexAttrib4f (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexAttrib4fv (GLuint index, const GLfloat *v);
void glVertexAttrib4iv (GLuint index, const GLint *v);
void glVertexAttrib4s (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
void glVertexAttrib4sv (GLuint index, const GLshort *v);
void glVertexAttrib4ubv (GLuint index, const GLubyte *v);
void glVertexAttrib4uiv (GLuint index, const GLuint *v);
void glVertexAttrib4usv (GLuint index, const GLushort *v);
void glVertexAttribPointer (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid *pointer);

/* GL_VERSION_2_1 */
void glUniformMatrix2x3fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix3x2fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix2x4fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix4x2fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix3x4fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix4x3fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);

/* GL_VERSION_3_0 */
/* OpenGL 3.0 also reuses entry points from these extensions: */
/* ARB_framebuffer_object */
/* ARB_map_buffer_range */
/* ARB_vertex_array_object */
void glColorMaski (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
void glGetBooleani_v (GLenum target, GLuint index, GLboolean *data);
void glGetIntegeri_v (GLenum target, GLuint index, GLint *data);
void glEnablei (GLenum target, GLuint index);
void glDisablei (GLenum target, GLuint index);
GLboolean glIsEnabledi (GLenum target, GLuint index);
void glBeginTransformFeedback (GLenum primitiveMode);
void glEndTransformFeedback ();
void glBindBufferRange (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glBindBufferBase (GLenum target, GLuint index, GLuint buffer);
void glTransformFeedbackVaryings (GLuint program, GLsizei count, const GLchar** varyings, GLenum bufferMode);
void glGetTransformFeedbackVarying (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name);
void glClampColor (GLenum target, GLenum clamp);
void glBeginConditionalRender (GLuint id, GLenum mode);
void glEndConditionalRender ();
void glVertexAttribIPointer (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
void glGetVertexAttribIiv (GLuint index, GLenum pname, GLint *params);
void glGetVertexAttribIuiv (GLuint index, GLenum pname, GLuint *params);
void glVertexAttribI1i (GLuint index, GLint x);
void glVertexAttribI2i (GLuint index, GLint x, GLint y);
void glVertexAttribI3i (GLuint index, GLint x, GLint y, GLint z);
void glVertexAttribI4i (GLuint index, GLint x, GLint y, GLint z, GLint w);
void glVertexAttribI1ui (GLuint index, GLuint x);
void glVertexAttribI2ui (GLuint index, GLuint x, GLuint y);
void glVertexAttribI3ui (GLuint index, GLuint x, GLuint y, GLuint z);
void glVertexAttribI4ui (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glVertexAttribI1iv (GLuint index, const GLint *v);
void glVertexAttribI2iv (GLuint index, const GLint *v);
void glVertexAttribI3iv (GLuint index, const GLint *v);
void glVertexAttribI4iv (GLuint index, const GLint *v);
void glVertexAttribI1uiv (GLuint index, const GLuint *v);
void glVertexAttribI2uiv (GLuint index, const GLuint *v);
void glVertexAttribI3uiv (GLuint index, const GLuint *v);
void glVertexAttribI4uiv (GLuint index, const GLuint *v);
void glVertexAttribI4bv (GLuint index, const GLbyte *v);
void glVertexAttribI4sv (GLuint index, const GLshort *v);
void glVertexAttribI4ubv (GLuint index, const GLubyte *v);
void glVertexAttribI4usv (GLuint index, const GLushort *v);
void glGetUniformuiv (GLuint program, GLint location, GLuint *params);
void glBindFragDataLocation (GLuint program, GLuint color, const GLchar *name);
GLint glGetFragDataLocation (GLuint program, const GLchar *name);
void glUniform1ui (GLint location, GLuint v0);
void glUniform2ui (GLint location, GLuint v0, GLuint v1);
void glUniform3ui (GLint location, GLuint v0, GLuint v1, GLuint v2);
void glUniform4ui (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void glUniform1uiv (GLint location, GLsizei count, const GLuint *value);
void glUniform2uiv (GLint location, GLsizei count, const GLuint *value);
void glUniform3uiv (GLint location, GLsizei count, const GLuint *value);
void glUniform4uiv (GLint location, GLsizei count, const GLuint *value);
void glTexParameterIiv (GLenum target, GLenum pname, const GLint *params);
void glTexParameterIuiv (GLenum target, GLenum pname, const GLuint *params);
void glGetTexParameterIiv (GLenum target, GLenum pname, GLint *params);
void glGetTexParameterIuiv (GLenum target, GLenum pname, GLuint *params);
void glClearBufferiv (GLenum buffer, GLint drawbuffer, const GLint *value);
void glClearBufferuiv (GLenum buffer, GLint drawbuffer, const GLuint *value);
void glClearBufferfv (GLenum buffer, GLint drawbuffer, const GLfloat *value);
void glClearBufferfi (GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil);
const(GLubyte) *glGetStringi (GLenum name, GLuint index);

/* GL_VERSION_3_1 */
/* OpenGL 3.1 also reuses entry points from these extensions: */
/* ARB_copy_buffer */
/* ARB_uniform_buffer_object */
void glDrawArraysInstanced (GLenum mode, GLint first, GLsizei count, GLsizei instancecount);
void glDrawElementsInstanced (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLsizei instancecount);
void glTexBuffer (GLenum target, GLenum internalformat, GLuint buffer);
void glPrimitiveRestartIndex (GLuint index);

/* GL_VERSION_3_2 */
/* OpenGL 3.2 also reuses entry points from these extensions: */
/* ARB_draw_elements_base_vertex */
/* ARB_provoking_vertex */
/* ARB_sync */
/* ARB_texture_multisample */
void glGetInteger64i_v (GLenum target, GLuint index, GLint64 *data);
void glGetBufferParameteri64v (GLenum target, GLenum pname, GLint64 *params);
void glFramebufferTexture (GLenum target, GLenum attachment, GLuint texture, GLint level);

/* GL_VERSION_3_3 */
/* OpenGL 3.3 also reuses entry points from these extensions: */
/* ARB_blend_func_extended */
/* ARB_sampler_objects */
/* ARB_explicit_attrib_location, but it has none */
/* ARB_occlusion_query2 (no entry points) */
/* ARB_shader_bit_encoding (no entry points) */
/* ARB_texture_rgb10_a2ui (no entry points) */
/* ARB_texture_swizzle (no entry points) */
/* ARB_timer_query */
/* ARB_vertex_type_2_10_10_10_rev */
void glVertexAttribDivisor (GLuint index, GLuint divisor);

/* GL_VERSION_4_0 */
/* OpenGL 4.0 also reuses entry points from these extensions: */
/* ARB_texture_query_lod (no entry points) */
/* ARB_draw_indirect */
/* ARB_gpu_shader5 (no entry points) */
/* ARB_gpu_shader_fp64 */
/* ARB_shader_subroutine */
/* ARB_tessellation_shader */
/* ARB_texture_buffer_object_rgb32 (no entry points) */
/* ARB_texture_cube_map_array (no entry points) */
/* ARB_texture_gather (no entry points) */
/* ARB_transform_feedback2 */
/* ARB_transform_feedback3 */
void glMinSampleShading (GLfloat value);
void glBlendEquationi (GLuint buf, GLenum mode);
void glBlendEquationSeparatei (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
void glBlendFunci (GLuint buf, GLenum src, GLenum dst);
void glBlendFuncSeparatei (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);

/* GL_VERSION_4_1 */
/* OpenGL 4.1 reuses entry points from these extensions: */
/* ARB_ES2_compatibility */
/* ARB_get_program_binary */
/* ARB_separate_shader_objects */
/* ARB_shader_precision (no entry points) */
/* ARB_vertex_attrib_64bit */
/* ARB_viewport_array */

/* GL_VERSION_4_2 */
/* OpenGL 4.2 reuses entry points from these extensions: */
/* ARB_base_instance */
/* ARB_shading_language_420pack (no entry points) */
/* ARB_transform_feedback_instanced */
/* ARB_compressed_texture_pixel_storage (no entry points) */
/* ARB_conservative_depth (no entry points) */
/* ARB_internalformat_query */
/* ARB_map_buffer_alignment (no entry points) */
/* ARB_shader_atomic_counters */
/* ARB_shader_image_load_store */
/* ARB_shading_language_packing (no entry points) */
/* ARB_texture_storage */

/* GL_VERSION_4_3 */
/* OpenGL 4.3 reuses entry points from these extensions: */
/* ARB_arrays_of_arrays (no entry points, GLSL only) */
/* ARB_fragment_layer_viewport (no entry points, GLSL only) */
/* ARB_shader_image_size (no entry points, GLSL only) */
/* ARB_ES3_compatibility (no entry points) */
/* ARB_clear_buffer_object */
/* ARB_compute_shader */
/* ARB_copy_image */
/* KHR_debug (includes ARB_debug_output commands promoted to KHR without suffixes) */
/* ARB_explicit_uniform_location (no entry points) */
/* ARB_framebuffer_no_attachments */
/* ARB_internalformat_query2 */
/* ARB_invalidate_subdata */
/* ARB_multi_draw_indirect */
/* ARB_program_interface_query */
/* ARB_robust_buffer_access_behavior (no entry points) */
/* ARB_shader_storage_buffer_object */
/* ARB_stencil_texturing (no entry points) */
/* ARB_texture_buffer_range */
/* ARB_texture_query_levels (no entry points) */
/* ARB_texture_storage_multisample */
/* ARB_texture_view */
/* ARB_vertex_attrib_binding */

/* GL_ARB_multitexture */
void glActiveTextureARB (GLenum texture);
void glClientActiveTextureARB (GLenum texture);
void glMultiTexCoord1dARB (GLenum target, GLdouble s);
void glMultiTexCoord1dvARB (GLenum target, const GLdouble *v);
void glMultiTexCoord1fARB (GLenum target, GLfloat s);
void glMultiTexCoord1fvARB (GLenum target, const GLfloat *v);
void glMultiTexCoord1iARB (GLenum target, GLint s);
void glMultiTexCoord1ivARB (GLenum target, const GLint *v);
void glMultiTexCoord1sARB (GLenum target, GLshort s);
void glMultiTexCoord1svARB (GLenum target, const GLshort *v);
void glMultiTexCoord2dARB (GLenum target, GLdouble s, GLdouble t);
void glMultiTexCoord2dvARB (GLenum target, const GLdouble *v);
void glMultiTexCoord2fARB (GLenum target, GLfloat s, GLfloat t);
void glMultiTexCoord2fvARB (GLenum target, const GLfloat *v);
void glMultiTexCoord2iARB (GLenum target, GLint s, GLint t);
void glMultiTexCoord2ivARB (GLenum target, const GLint *v);
void glMultiTexCoord2sARB (GLenum target, GLshort s, GLshort t);
void glMultiTexCoord2svARB (GLenum target, const GLshort *v);
void glMultiTexCoord3dARB (GLenum target, GLdouble s, GLdouble t, GLdouble r);
void glMultiTexCoord3dvARB (GLenum target, const GLdouble *v);
void glMultiTexCoord3fARB (GLenum target, GLfloat s, GLfloat t, GLfloat r);
void glMultiTexCoord3fvARB (GLenum target, const GLfloat *v);
void glMultiTexCoord3iARB (GLenum target, GLint s, GLint t, GLint r);
void glMultiTexCoord3ivARB (GLenum target, const GLint *v);
void glMultiTexCoord3sARB (GLenum target, GLshort s, GLshort t, GLshort r);
void glMultiTexCoord3svARB (GLenum target, const GLshort *v);
void glMultiTexCoord4dARB (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void glMultiTexCoord4dvARB (GLenum target, const GLdouble *v);
void glMultiTexCoord4fARB (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void glMultiTexCoord4fvARB (GLenum target, const GLfloat *v);
void glMultiTexCoord4iARB (GLenum target, GLint s, GLint t, GLint r, GLint q);
void glMultiTexCoord4ivARB (GLenum target, const GLint *v);
void glMultiTexCoord4sARB (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
void glMultiTexCoord4svARB (GLenum target, const GLshort *v);

/* GL_ARB_transpose_matrix */
void glLoadTransposeMatrixfARB (const GLfloat *m);
void glLoadTransposeMatrixdARB (const GLdouble *m);
void glMultTransposeMatrixfARB (const GLfloat *m);
void glMultTransposeMatrixdARB (const GLdouble *m);

/* GL_ARB_multisample */
void glSampleCoverageARB (GLfloat value, GLboolean invert);

/* GL_ARB_texture_env_add */

/* GL_ARB_texture_cube_map */

/* GL_ARB_texture_compression */
void glCompressedTexImage3DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data);
void glCompressedTexImage2DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data);
void glCompressedTexImage1DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data);
void glCompressedTexSubImage3DARB (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data);
void glCompressedTexSubImage2DARB (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data);
void glCompressedTexSubImage1DARB (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data);
void glGetCompressedTexImageARB (GLenum target, GLint level, GLvoid *img);

/* GL_ARB_texture_border_clamp */

/* GL_ARB_point_parameters */
void glPointParameterfARB (GLenum pname, GLfloat param);
void glPointParameterfvARB (GLenum pname, const GLfloat *params);

/* GL_ARB_vertex_blend */
void glWeightbvARB (GLint size, const GLbyte *weights);
void glWeightsvARB (GLint size, const GLshort *weights);
void glWeightivARB (GLint size, const GLint *weights);
void glWeightfvARB (GLint size, const GLfloat *weights);
void glWeightdvARB (GLint size, const GLdouble *weights);
void glWeightubvARB (GLint size, const GLubyte *weights);
void glWeightusvARB (GLint size, const GLushort *weights);
void glWeightuivARB (GLint size, const GLuint *weights);
void glWeightPointerARB (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
void glVertexBlendARB (GLint count);
/* GL_ARB_matrix_palette */
void glCurrentPaletteMatrixARB (GLint index);
void glMatrixIndexubvARB (GLint size, const GLubyte *indices);
void glMatrixIndexusvARB (GLint size, const GLushort *indices);
void glMatrixIndexuivARB (GLint size, const GLuint *indices);
void glMatrixIndexPointerARB (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
/* GL_ARB_texture_env_combine */
/* GL_ARB_texture_env_crossbar */
/* GL_ARB_texture_env_dot3 */
/* GL_ARB_texture_mirrored_repeat */
/* GL_ARB_depth_texture */
/* GL_ARB_shadow */
/* GL_ARB_shadow_ambient */
/* GL_ARB_window_pos */
void glWindowPos2dARB (GLdouble x, GLdouble y);
void glWindowPos2dvARB (const GLdouble *v);
void glWindowPos2fARB (GLfloat x, GLfloat y);
void glWindowPos2fvARB (const GLfloat *v);
void glWindowPos2iARB (GLint x, GLint y);
void glWindowPos2ivARB (const GLint *v);
void glWindowPos2sARB (GLshort x, GLshort y);
void glWindowPos2svARB (const GLshort *v);
void glWindowPos3dARB (GLdouble x, GLdouble y, GLdouble z);
void glWindowPos3dvARB (const GLdouble *v);
void glWindowPos3fARB (GLfloat x, GLfloat y, GLfloat z);
void glWindowPos3fvARB (const GLfloat *v);
void glWindowPos3iARB (GLint x, GLint y, GLint z);
void glWindowPos3ivARB (const GLint *v);
void glWindowPos3sARB (GLshort x, GLshort y, GLshort z);
void glWindowPos3svARB (const GLshort *v);
/* GL_ARB_vertex_program */
void glVertexAttrib1dARB (GLuint index, GLdouble x);
void glVertexAttrib1dvARB (GLuint index, const GLdouble *v);
void glVertexAttrib1fARB (GLuint index, GLfloat x);
void glVertexAttrib1fvARB (GLuint index, const GLfloat *v);
void glVertexAttrib1sARB (GLuint index, GLshort x);
void glVertexAttrib1svARB (GLuint index, const GLshort *v);
void glVertexAttrib2dARB (GLuint index, GLdouble x, GLdouble y);
void glVertexAttrib2dvARB (GLuint index, const GLdouble *v);
void glVertexAttrib2fARB (GLuint index, GLfloat x, GLfloat y);
void glVertexAttrib2fvARB (GLuint index, const GLfloat *v);
void glVertexAttrib2sARB (GLuint index, GLshort x, GLshort y);
void glVertexAttrib2svARB (GLuint index, const GLshort *v);
void glVertexAttrib3dARB (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttrib3dvARB (GLuint index, const GLdouble *v);
void glVertexAttrib3fARB (GLuint index, GLfloat x, GLfloat y, GLfloat z);
void glVertexAttrib3fvARB (GLuint index, const GLfloat *v);
void glVertexAttrib3sARB (GLuint index, GLshort x, GLshort y, GLshort z);
void glVertexAttrib3svARB (GLuint index, const GLshort *v);
void glVertexAttrib4NbvARB (GLuint index, const GLbyte *v);
void glVertexAttrib4NivARB (GLuint index, const GLint *v);
void glVertexAttrib4NsvARB (GLuint index, const GLshort *v);
void glVertexAttrib4NubARB (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
void glVertexAttrib4NubvARB (GLuint index, const GLubyte *v);
void glVertexAttrib4NuivARB (GLuint index, const GLuint *v);
void glVertexAttrib4NusvARB (GLuint index, const GLushort *v);
void glVertexAttrib4bvARB (GLuint index, const GLbyte *v);
void glVertexAttrib4dARB (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttrib4dvARB (GLuint index, const GLdouble *v);
void glVertexAttrib4fARB (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexAttrib4fvARB (GLuint index, const GLfloat *v);
void glVertexAttrib4ivARB (GLuint index, const GLint *v);
void glVertexAttrib4sARB (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
void glVertexAttrib4svARB (GLuint index, const GLshort *v);
void glVertexAttrib4ubvARB (GLuint index, const GLubyte *v);
void glVertexAttrib4uivARB (GLuint index, const GLuint *v);
void glVertexAttrib4usvARB (GLuint index, const GLushort *v);
void glVertexAttribPointerARB (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid *pointer);
void glEnableVertexAttribArrayARB (GLuint index);
void glDisableVertexAttribArrayARB (GLuint index);
void glProgramStringARB (GLenum target, GLenum format, GLsizei len, const GLvoid *string);
void glBindProgramARB (GLenum target, GLuint program);
void glDeleteProgramsARB (GLsizei n, const GLuint *programs);
void glGenProgramsARB (GLsizei n, GLuint *programs);
void glProgramEnvParameter4dARB (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramEnvParameter4dvARB (GLenum target, GLuint index, const GLdouble *params);
void glProgramEnvParameter4fARB (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramEnvParameter4fvARB (GLenum target, GLuint index, const GLfloat *params);
void glProgramLocalParameter4dARB (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramLocalParameter4dvARB (GLenum target, GLuint index, const GLdouble *params);
void glProgramLocalParameter4fARB (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramLocalParameter4fvARB (GLenum target, GLuint index, const GLfloat *params);
void glGetProgramEnvParameterdvARB (GLenum target, GLuint index, GLdouble *params);
void glGetProgramEnvParameterfvARB (GLenum target, GLuint index, GLfloat *params);
void glGetProgramLocalParameterdvARB (GLenum target, GLuint index, GLdouble *params);
void glGetProgramLocalParameterfvARB (GLenum target, GLuint index, GLfloat *params);
void glGetProgramivARB (GLenum target, GLenum pname, GLint *params);
void glGetProgramStringARB (GLenum target, GLenum pname, GLvoid *string);
void glGetVertexAttribdvARB (GLuint index, GLenum pname, GLdouble *params);
void glGetVertexAttribfvARB (GLuint index, GLenum pname, GLfloat *params);
void glGetVertexAttribivARB (GLuint index, GLenum pname, GLint *params);
void glGetVertexAttribPointervARB (GLuint index, GLenum pname, GLvoid* *pointer);
GLboolean glIsProgramARB (GLuint program);
/* GL_ARB_fragment_program */
/* All ARB_fragment_program entry points are shared with ARB_vertex_program. */
/* GL_ARB_vertex_buffer_object */
void glBindBufferARB (GLenum target, GLuint buffer);
void glDeleteBuffersARB (GLsizei n, const GLuint *buffers);
void glGenBuffersARB (GLsizei n, GLuint *buffers);
GLboolean glIsBufferARB (GLuint buffer);
void glBufferDataARB (GLenum target, GLsizeiptrARB size, const GLvoid *data, GLenum usage);
void glBufferSubDataARB (GLenum target, GLintptrARB offset, GLsizeiptrARB size, const GLvoid *data);
void glGetBufferSubDataARB (GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid *data);
GLvoid* glMapBufferARB (GLenum target, GLenum access);
GLboolean glUnmapBufferARB (GLenum target);
void glGetBufferParameterivARB (GLenum target, GLenum pname, GLint *params);
void glGetBufferPointervARB (GLenum target, GLenum pname, GLvoid* *params);
/* GL_ARB_occlusion_query */
void glGenQueriesARB (GLsizei n, GLuint *ids);
void glDeleteQueriesARB (GLsizei n, const GLuint *ids);
GLboolean glIsQueryARB (GLuint id);
void glBeginQueryARB (GLenum target, GLuint id);
void glEndQueryARB (GLenum target);
void glGetQueryivARB (GLenum target, GLenum pname, GLint *params);
void glGetQueryObjectivARB (GLuint id, GLenum pname, GLint *params);
void glGetQueryObjectuivARB (GLuint id, GLenum pname, GLuint *params);
/* GL_ARB_shader_objects */
void glDeleteObjectARB (GLhandleARB obj);
GLhandleARB glGetHandleARB (GLenum pname);
void glDetachObjectARB (GLhandleARB containerObj, GLhandleARB attachedObj);
GLhandleARB glCreateShaderObjectARB (GLenum shaderType);
void glShaderSourceARB (GLhandleARB shaderObj, GLsizei count, const GLcharARB* *string, const GLint *length);
void glCompileShaderARB (GLhandleARB shaderObj);
GLhandleARB glCreateProgramObjectARB ();
void glAttachObjectARB (GLhandleARB containerObj, GLhandleARB obj);
void glLinkProgramARB (GLhandleARB programObj);
void glUseProgramObjectARB (GLhandleARB programObj);
void glValidateProgramARB (GLhandleARB programObj);
void glUniform1fARB (GLint location, GLfloat v0);
void glUniform2fARB (GLint location, GLfloat v0, GLfloat v1);
void glUniform3fARB (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void glUniform4fARB (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void glUniform1iARB (GLint location, GLint v0);
void glUniform2iARB (GLint location, GLint v0, GLint v1);
void glUniform3iARB (GLint location, GLint v0, GLint v1, GLint v2);
void glUniform4iARB (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void glUniform1fvARB (GLint location, GLsizei count, const GLfloat *value);
void glUniform2fvARB (GLint location, GLsizei count, const GLfloat *value);
void glUniform3fvARB (GLint location, GLsizei count, const GLfloat *value);
void glUniform4fvARB (GLint location, GLsizei count, const GLfloat *value);
void glUniform1ivARB (GLint location, GLsizei count, const GLint *value);
void glUniform2ivARB (GLint location, GLsizei count, const GLint *value);
void glUniform3ivARB (GLint location, GLsizei count, const GLint *value);
void glUniform4ivARB (GLint location, GLsizei count, const GLint *value);
void glUniformMatrix2fvARB (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix3fvARB (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix4fvARB (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glGetObjectParameterfvARB (GLhandleARB obj, GLenum pname, GLfloat *params);
void glGetObjectParameterivARB (GLhandleARB obj, GLenum pname, GLint *params);
void glGetInfoLogARB (GLhandleARB obj, GLsizei maxLength, GLsizei *length, GLcharARB *infoLog);
void glGetAttachedObjectsARB (GLhandleARB containerObj, GLsizei maxCount, GLsizei *count, GLhandleARB *obj);
GLint glGetUniformLocationARB (GLhandleARB programObj, const GLcharARB *name);
void glGetActiveUniformARB (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei *length, GLint *size, GLenum *type, GLcharARB *name);
void glGetUniformfvARB (GLhandleARB programObj, GLint location, GLfloat *params);
void glGetUniformivARB (GLhandleARB programObj, GLint location, GLint *params);
void glGetShaderSourceARB (GLhandleARB obj, GLsizei maxLength, GLsizei *length, GLcharARB *source);
/* GL_ARB_vertex_shader */
void glBindAttribLocationARB (GLhandleARB programObj, GLuint index, const GLcharARB *name);
void glGetActiveAttribARB (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei *length, GLint *size, GLenum *type, GLcharARB *name);
GLint glGetAttribLocationARB (GLhandleARB programObj, const GLcharARB *name);
/* GL_ARB_fragment_shader */
/* GL_ARB_shading_language_100 */
/* GL_ARB_texture_non_power_of_two */
/* GL_ARB_point_sprite */
/* GL_ARB_fragment_program_shadow */
/* GL_ARB_draw_buffers */
void glDrawBuffersARB (GLsizei n, const GLenum *bufs);
/* GL_ARB_texture_rectangle */
/* GL_ARB_color_buffer_float */
void glClampColorARB (GLenum target, GLenum clamp);
/* GL_ARB_half_float_pixel */
/* GL_ARB_texture_float */
/* GL_ARB_pixel_buffer_object */
/* GL_ARB_depth_buffer_float */
/* GL_ARB_draw_instanced */
void glDrawArraysInstancedARB (GLenum mode, GLint first, GLsizei count, GLsizei primcount);
void glDrawElementsInstancedARB (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLsizei primcount);
/* GL_ARB_framebuffer_object */
GLboolean glIsRenderbuffer (GLuint renderbuffer);
void glBindRenderbuffer (GLenum target, GLuint renderbuffer);
void glDeleteRenderbuffers (GLsizei n, const GLuint *renderbuffers);
void glGenRenderbuffers (GLsizei n, GLuint *renderbuffers);
void glRenderbufferStorage (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
void glGetRenderbufferParameteriv (GLenum target, GLenum pname, GLint *params);
GLboolean glIsFramebuffer (GLuint framebuffer);
void glBindFramebuffer (GLenum target, GLuint framebuffer);
void glDeleteFramebuffers (GLsizei n, const GLuint *framebuffers);
void glGenFramebuffers (GLsizei n, GLuint *framebuffers);
GLenum glCheckFramebufferStatus (GLenum target);
void glFramebufferTexture1D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture2D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture3D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
void glFramebufferRenderbuffer (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glGetFramebufferAttachmentParameteriv (GLenum target, GLenum attachment, GLenum pname, GLint *params);
void glGenerateMipmap (GLenum target);
void glBlitFramebuffer (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
void glRenderbufferStorageMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
void glFramebufferTextureLayer (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
/* GL_ARB_framebuffer_sRGB */
/* GL_ARB_geometry_shader4 */
void glProgramParameteriARB (GLuint program, GLenum pname, GLint value);
void glFramebufferTextureARB (GLenum target, GLenum attachment, GLuint texture, GLint level);
void glFramebufferTextureLayerARB (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
void glFramebufferTextureFaceARB (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);
/* GL_ARB_half_float_vertex */
/* GL_ARB_instanced_arrays */
void glVertexAttribDivisorARB (GLuint index, GLuint divisor);
/* GL_ARB_map_buffer_range */
GLvoid* glMapBufferRange (GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access);
void glFlushMappedBufferRange (GLenum target, GLintptr offset, GLsizeiptr length);
/* GL_ARB_texture_buffer_object */
void glTexBufferARB (GLenum target, GLenum internalformat, GLuint buffer);
/* GL_ARB_texture_compression_rgtc */
/* GL_ARB_texture_rg */
/* GL_ARB_vertex_array_object */
void glBindVertexArray (GLuint array);
void glDeleteVertexArrays (GLsizei n, const GLuint *arrays);
void glGenVertexArrays (GLsizei n, GLuint *arrays);
GLboolean glIsVertexArray (GLuint array);
/* GL_ARB_uniform_buffer_object */
void glGetUniformIndices (GLuint program, GLsizei uniformCount, const GLchar** uniformNames, GLuint *uniformIndices);
void glGetActiveUniformsiv (GLuint program, GLsizei uniformCount, const GLuint *uniformIndices, GLenum pname, GLint *params);
void glGetActiveUniformName (GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei *length, GLchar *uniformName);
GLuint glGetUniformBlockIndex (GLuint program, const GLchar *uniformBlockName);
void glGetActiveUniformBlockiv (GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint *params);
void glGetActiveUniformBlockName (GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei *length, GLchar *uniformBlockName);
void glUniformBlockBinding (GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding);
/* GL_ARB_compatibility */
/* GL_ARB_copy_buffer */
void glCopyBufferSubData (GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
/* GL_ARB_shader_texture_lod */
/* GL_ARB_depth_clamp */
/* GL_ARB_draw_elements_base_vertex */
void glDrawElementsBaseVertex (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLint basevertex);
void glDrawRangeElementsBaseVertex (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid *indices, GLint basevertex);
void glDrawElementsInstancedBaseVertex (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLsizei instancecount, GLint basevertex);
void glMultiDrawElementsBaseVertex (GLenum mode, const GLsizei *count, GLenum type, const GLvoid**indices, GLsizei drawcount, const GLint *basevertex);
/* GL_ARB_fragment_coord_conventions */
/* GL_ARB_provoking_vertex */
void glProvokingVertex (GLenum mode);
/* GL_ARB_seamless_cube_map */
/* GL_ARB_sync */
GLsync glFenceSync (GLenum condition, GLbitfield flags);
GLboolean glIsSync (GLsync sync);
void glDeleteSync (GLsync sync);
GLenum glClientWaitSync (GLsync sync, GLbitfield flags, GLuint64 timeout);
void glWaitSync (GLsync sync, GLbitfield flags, GLuint64 timeout);
void glGetInteger64v (GLenum pname, GLint64 *params);
void glGetSynciv (GLsync sync, GLenum pname, GLsizei bufSize, GLsizei *length, GLint *values);
/* GL_ARB_texture_multisample */
void glTexImage2DMultisample (GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
void glTexImage3DMultisample (GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
void glGetMultisamplefv (GLenum pname, GLuint index, GLfloat *val);
void glSampleMaski (GLuint index, GLbitfield mask);
/* GL_ARB_vertex_array_bgra */
/* GL_ARB_draw_buffers_blend */
void glBlendEquationiARB (GLuint buf, GLenum mode);
void glBlendEquationSeparateiARB (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
void glBlendFunciARB (GLuint buf, GLenum src, GLenum dst);
void glBlendFuncSeparateiARB (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
/* GL_ARB_sample_shading */
void glMinSampleShadingARB (GLfloat value);
/* GL_ARB_texture_cube_map_array */
/* GL_ARB_texture_gather */
/* GL_ARB_texture_query_lod */
/* GL_ARB_shading_language_include */
void glNamedStringARB (GLenum type, GLint namelen, const GLchar *name, GLint stringlen, const GLchar *string);
void glDeleteNamedStringARB (GLint namelen, const GLchar *name);
void glCompileShaderIncludeARB (GLuint shader, GLsizei count, const GLchar* *path, const GLint *length);
GLboolean glIsNamedStringARB (GLint namelen, const GLchar *name);
void glGetNamedStringARB (GLint namelen, const GLchar *name, GLsizei bufSize, GLint *stringlen, GLchar *string);
void glGetNamedStringivARB (GLint namelen, const GLchar *name, GLenum pname, GLint *params);
/* GL_ARB_texture_compression_bptc */
/* GL_ARB_blend_func_extended */
void glBindFragDataLocationIndexed (GLuint program, GLuint colorNumber, GLuint index, const GLchar *name);
GLint glGetFragDataIndex (GLuint program, const GLchar *name);
/* GL_ARB_explicit_attrib_location */
/* GL_ARB_occlusion_query2 */
/* GL_ARB_sampler_objects */
void glGenSamplers (GLsizei count, GLuint *samplers);
void glDeleteSamplers (GLsizei count, const GLuint *samplers);
GLboolean glIsSampler (GLuint sampler);
void glBindSampler (GLuint unit, GLuint sampler);
void glSamplerParameteri (GLuint sampler, GLenum pname, GLint param);
void glSamplerParameteriv (GLuint sampler, GLenum pname, const GLint *param);
void glSamplerParameterf (GLuint sampler, GLenum pname, GLfloat param);
void glSamplerParameterfv (GLuint sampler, GLenum pname, const GLfloat *param);
void glSamplerParameterIiv (GLuint sampler, GLenum pname, const GLint *param);
void glSamplerParameterIuiv (GLuint sampler, GLenum pname, const GLuint *param);
void glGetSamplerParameteriv (GLuint sampler, GLenum pname, GLint *params);
void glGetSamplerParameterIiv (GLuint sampler, GLenum pname, GLint *params);
void glGetSamplerParameterfv (GLuint sampler, GLenum pname, GLfloat *params);
void glGetSamplerParameterIuiv (GLuint sampler, GLenum pname, GLuint *params);
/* GL_ARB_shader_bit_encoding */
/* GL_ARB_texture_rgb10_a2ui */
/* GL_ARB_texture_swizzle */
/* GL_ARB_timer_query */
void glQueryCounter (GLuint id, GLenum target);
void glGetQueryObjecti64v (GLuint id, GLenum pname, GLint64 *params);
void glGetQueryObjectui64v (GLuint id, GLenum pname, GLuint64 *params);
/* GL_ARB_vertex_type_2_10_10_10_rev */
void glVertexP2ui (GLenum type, GLuint value);
void glVertexP2uiv (GLenum type, const GLuint *value);
void glVertexP3ui (GLenum type, GLuint value);
void glVertexP3uiv (GLenum type, const GLuint *value);
void glVertexP4ui (GLenum type, GLuint value);
void glVertexP4uiv (GLenum type, const GLuint *value);
void glTexCoordP1ui (GLenum type, GLuint coords);
void glTexCoordP1uiv (GLenum type, const GLuint *coords);
void glTexCoordP2ui (GLenum type, GLuint coords);
void glTexCoordP2uiv (GLenum type, const GLuint *coords);
void glTexCoordP3ui (GLenum type, GLuint coords);
void glTexCoordP3uiv (GLenum type, const GLuint *coords);
void glTexCoordP4ui (GLenum type, GLuint coords);
void glTexCoordP4uiv (GLenum type, const GLuint *coords);
void glMultiTexCoordP1ui (GLenum texture, GLenum type, GLuint coords);
void glMultiTexCoordP1uiv (GLenum texture, GLenum type, const GLuint *coords);
void glMultiTexCoordP2ui (GLenum texture, GLenum type, GLuint coords);
void glMultiTexCoordP2uiv (GLenum texture, GLenum type, const GLuint *coords);
void glMultiTexCoordP3ui (GLenum texture, GLenum type, GLuint coords);
void glMultiTexCoordP3uiv (GLenum texture, GLenum type, const GLuint *coords);
void glMultiTexCoordP4ui (GLenum texture, GLenum type, GLuint coords);
void glMultiTexCoordP4uiv (GLenum texture, GLenum type, const GLuint *coords);
void glNormalP3ui (GLenum type, GLuint coords);
void glNormalP3uiv (GLenum type, const GLuint *coords);
void glColorP3ui (GLenum type, GLuint color);
void glColorP3uiv (GLenum type, const GLuint *color);
void glColorP4ui (GLenum type, GLuint color);
void glColorP4uiv (GLenum type, const GLuint *color);
void glSecondaryColorP3ui (GLenum type, GLuint color);
void glSecondaryColorP3uiv (GLenum type, const GLuint *color);
void glVertexAttribP1ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void glVertexAttribP1uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint *value);
void glVertexAttribP2ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void glVertexAttribP2uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint *value);
void glVertexAttribP3ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void glVertexAttribP3uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint *value);
void glVertexAttribP4ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void glVertexAttribP4uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint *value);
/* GL_ARB_draw_indirect */
void glDrawArraysIndirect (GLenum mode, const GLvoid *indirect);
void glDrawElementsIndirect (GLenum mode, GLenum type, const GLvoid *indirect);
/* GL_ARB_gpu_shader5 */
/* GL_ARB_gpu_shader_fp64 */
void glUniform1d (GLint location, GLdouble x);
void glUniform2d (GLint location, GLdouble x, GLdouble y);
void glUniform3d (GLint location, GLdouble x, GLdouble y, GLdouble z);
void glUniform4d (GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glUniform1dv (GLint location, GLsizei count, const GLdouble *value);
void glUniform2dv (GLint location, GLsizei count, const GLdouble *value);
void glUniform3dv (GLint location, GLsizei count, const GLdouble *value);
void glUniform4dv (GLint location, GLsizei count, const GLdouble *value);
void glUniformMatrix2dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glUniformMatrix3dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glUniformMatrix4dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glUniformMatrix2x3dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glUniformMatrix2x4dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glUniformMatrix3x2dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glUniformMatrix3x4dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glUniformMatrix4x2dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glUniformMatrix4x3dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glGetUniformdv (GLuint program, GLint location, GLdouble *params);
/* GL_ARB_shader_subroutine */
GLint glGetSubroutineUniformLocation (GLuint program, GLenum shadertype, const GLchar *name);
GLuint glGetSubroutineIndex (GLuint program, GLenum shadertype, const GLchar *name);
void glGetActiveSubroutineUniformiv (GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint *values);
void glGetActiveSubroutineUniformName (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei *length, GLchar *name);
void glGetActiveSubroutineName (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei *length, GLchar *name);
void glUniformSubroutinesuiv (GLenum shadertype, GLsizei count, const GLuint *indices);
void glGetUniformSubroutineuiv (GLenum shadertype, GLint location, GLuint *params);
void glGetProgramStageiv (GLuint program, GLenum shadertype, GLenum pname, GLint *values);
/* GL_ARB_tessellation_shader */
void glPatchParameteri (GLenum pname, GLint value);
void glPatchParameterfv (GLenum pname, const GLfloat *values);
/* GL_ARB_texture_buffer_object_rgb32 */
/* GL_ARB_transform_feedback2 */
void glBindTransformFeedback (GLenum target, GLuint id);
void glDeleteTransformFeedbacks (GLsizei n, const GLuint *ids);
void glGenTransformFeedbacks (GLsizei n, GLuint *ids);
GLboolean glIsTransformFeedback (GLuint id);
void glPauseTransformFeedback ();
void glResumeTransformFeedback ();
void glDrawTransformFeedback (GLenum mode, GLuint id);
/* GL_ARB_transform_feedback3 */
void glDrawTransformFeedbackStream (GLenum mode, GLuint id, GLuint stream);
void glBeginQueryIndexed (GLenum target, GLuint index, GLuint id);
void glEndQueryIndexed (GLenum target, GLuint index);
void glGetQueryIndexediv (GLenum target, GLuint index, GLenum pname, GLint *params);
/* GL_ARB_ES2_compatibility */
void glReleaseShaderCompiler ();
void glShaderBinary (GLsizei count, const GLuint *shaders, GLenum binaryformat, const GLvoid *binary, GLsizei length);
void glGetShaderPrecisionFormat (GLenum shadertype, GLenum precisiontype, GLint *range, GLint *precision);
void glDepthRangef (GLfloat n, GLfloat f);
void glClearDepthf (GLfloat d);
/* GL_ARB_get_program_binary */
void glGetProgramBinary (GLuint program, GLsizei bufSize, GLsizei *length, GLenum *binaryFormat, GLvoid *binary);
void glProgramBinary (GLuint program, GLenum binaryFormat, const GLvoid *binary, GLsizei length);
void glProgramParameteri (GLuint program, GLenum pname, GLint value);
/* GL_ARB_separate_shader_objects */
void glUseProgramStages (GLuint pipeline, GLbitfield stages, GLuint program);
void glActiveShaderProgram (GLuint pipeline, GLuint program);
GLuint glCreateShaderProgramv (GLenum type, GLsizei count, const(GLchar) **strings);
void glBindProgramPipeline (GLuint pipeline);
void glDeleteProgramPipelines (GLsizei n, const GLuint *pipelines);
void glGenProgramPipelines (GLsizei n, GLuint *pipelines);
GLboolean glIsProgramPipeline (GLuint pipeline);
void glGetProgramPipelineiv (GLuint pipeline, GLenum pname, GLint *params);
void glProgramUniform1i (GLuint program, GLint location, GLint v0);
void glProgramUniform1iv (GLuint program, GLint location, GLsizei count, const GLint *value);
void glProgramUniform1f (GLuint program, GLint location, GLfloat v0);
void glProgramUniform1fv (GLuint program, GLint location, GLsizei count, const GLfloat *value);
void glProgramUniform1d (GLuint program, GLint location, GLdouble v0);
void glProgramUniform1dv (GLuint program, GLint location, GLsizei count, const GLdouble *value);
void glProgramUniform1ui (GLuint program, GLint location, GLuint v0);
void glProgramUniform1uiv (GLuint program, GLint location, GLsizei count, const GLuint *value);
void glProgramUniform2i (GLuint program, GLint location, GLint v0, GLint v1);
void glProgramUniform2iv (GLuint program, GLint location, GLsizei count, const GLint *value);
void glProgramUniform2f (GLuint program, GLint location, GLfloat v0, GLfloat v1);
void glProgramUniform2fv (GLuint program, GLint location, GLsizei count, const GLfloat *value);
void glProgramUniform2d (GLuint program, GLint location, GLdouble v0, GLdouble v1);
void glProgramUniform2dv (GLuint program, GLint location, GLsizei count, const GLdouble *value);
void glProgramUniform2ui (GLuint program, GLint location, GLuint v0, GLuint v1);
void glProgramUniform2uiv (GLuint program, GLint location, GLsizei count, const GLuint *value);
void glProgramUniform3i (GLuint program, GLint location, GLint v0, GLint v1, GLint v2);
void glProgramUniform3iv (GLuint program, GLint location, GLsizei count, const GLint *value);
void glProgramUniform3f (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void glProgramUniform3fv (GLuint program, GLint location, GLsizei count, const GLfloat *value);
void glProgramUniform3d (GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2);
void glProgramUniform3dv (GLuint program, GLint location, GLsizei count, const GLdouble *value);
void glProgramUniform3ui (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2);
void glProgramUniform3uiv (GLuint program, GLint location, GLsizei count, const GLuint *value);
void glProgramUniform4i (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void glProgramUniform4iv (GLuint program, GLint location, GLsizei count, const GLint *value);
void glProgramUniform4f (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void glProgramUniform4fv (GLuint program, GLint location, GLsizei count, const GLfloat *value);
void glProgramUniform4d (GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2, GLdouble v3);
void glProgramUniform4dv (GLuint program, GLint location, GLsizei count, const GLdouble *value);
void glProgramUniform4ui (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void glProgramUniform4uiv (GLuint program, GLint location, GLsizei count, const GLuint *value);
void glProgramUniformMatrix2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix2x3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix3x2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix2x4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix4x2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix3x4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix4x3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix2x3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix3x2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix2x4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix4x2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix3x4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix4x3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glValidateProgramPipeline (GLuint pipeline);
void glGetProgramPipelineInfoLog (GLuint pipeline, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
/* GL_ARB_vertex_attrib_64bit */
void glVertexAttribL1d (GLuint index, GLdouble x);
void glVertexAttribL2d (GLuint index, GLdouble x, GLdouble y);
void glVertexAttribL3d (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttribL4d (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttribL1dv (GLuint index, const GLdouble *v);
void glVertexAttribL2dv (GLuint index, const GLdouble *v);
void glVertexAttribL3dv (GLuint index, const GLdouble *v);
void glVertexAttribL4dv (GLuint index, const GLdouble *v);
void glVertexAttribLPointer (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
void glGetVertexAttribLdv (GLuint index, GLenum pname, GLdouble *params);
/* GL_ARB_viewport_array */
void glViewportArrayv (GLuint first, GLsizei count, const GLfloat *v);
void glViewportIndexedf (GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h);
void glViewportIndexedfv (GLuint index, const GLfloat *v);
void glScissorArrayv (GLuint first, GLsizei count, const GLint *v);
void glScissorIndexed (GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height);
void glScissorIndexedv (GLuint index, const GLint *v);
void glDepthRangeArrayv (GLuint first, GLsizei count, const GLdouble *v);
void glDepthRangeIndexed (GLuint index, GLdouble n, GLdouble f);
void glGetFloati_v (GLenum target, GLuint index, GLfloat *data);
void glGetDoublei_v (GLenum target, GLuint index, GLdouble *data);
/* GL_ARB_cl_event */
GLsync glCreateSyncFromCLeventARB (_cl_context *context, _cl_event *event, GLbitfield flags);
/* GL_ARB_debug_output */
void glDebugMessageControlARB (GLenum source, GLenum type, GLenum severity, GLsizei count, const GLuint *ids, GLboolean enabled);
void glDebugMessageInsertARB (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const GLchar *buf);
void glDebugMessageCallbackARB (GLDEBUGPROCARB callback, const GLvoid *userParam);
GLuint glGetDebugMessageLogARB (GLuint count, GLsizei bufsize, GLenum *sources, GLenum *types, GLuint *ids, GLenum *severities, GLsizei *lengths, GLchar *messageLog);
/* GL_ARB_robustness */
GLenum glGetGraphicsResetStatusARB ();
void glGetnMapdvARB (GLenum target, GLenum query, GLsizei bufSize, GLdouble *v);
void glGetnMapfvARB (GLenum target, GLenum query, GLsizei bufSize, GLfloat *v);
void glGetnMapivARB (GLenum target, GLenum query, GLsizei bufSize, GLint *v);
void glGetnPixelMapfvARB (GLenum map, GLsizei bufSize, GLfloat *values);
void glGetnPixelMapuivARB (GLenum map, GLsizei bufSize, GLuint *values);
void glGetnPixelMapusvARB (GLenum map, GLsizei bufSize, GLushort *values);
void glGetnPolygonStippleARB (GLsizei bufSize, GLubyte *pattern);
void glGetnColorTableARB (GLenum target, GLenum format, GLenum type, GLsizei bufSize, GLvoid *table);
void glGetnConvolutionFilterARB (GLenum target, GLenum format, GLenum type, GLsizei bufSize, GLvoid *image);
void glGetnSeparableFilterARB (GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, GLvoid *row, GLsizei columnBufSize, GLvoid *column, GLvoid *span);
void glGetnHistogramARB (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, GLvoid *values);
void glGetnMinmaxARB (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, GLvoid *values);
void glGetnTexImageARB (GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, GLvoid *img);
void glReadnPixelsARB (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, GLvoid *data);
void glGetnCompressedTexImageARB (GLenum target, GLint lod, GLsizei bufSize, GLvoid *img);
void glGetnUniformfvARB (GLuint program, GLint location, GLsizei bufSize, GLfloat *params);
void glGetnUniformivARB (GLuint program, GLint location, GLsizei bufSize, GLint *params);
void glGetnUniformuivARB (GLuint program, GLint location, GLsizei bufSize, GLuint *params);
void glGetnUniformdvARB (GLuint program, GLint location, GLsizei bufSize, GLdouble *params);
/* GL_ARB_shader_stencil_export */
/* GL_ARB_base_instance */
void glDrawArraysInstancedBaseInstance (GLenum mode, GLint first, GLsizei count, GLsizei instancecount, GLuint baseinstance);
void glDrawElementsInstancedBaseInstance (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount, GLuint baseinstance);
void glDrawElementsInstancedBaseVertexBaseInstance (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount, GLint basevertex, GLuint baseinstance);
/* GL_ARB_shading_language_420pack */
/* GL_ARB_transform_feedback_instanced */
void glDrawTransformFeedbackInstanced (GLenum mode, GLuint id, GLsizei instancecount);
void glDrawTransformFeedbackStreamInstanced (GLenum mode, GLuint id, GLuint stream, GLsizei instancecount);
/* GL_ARB_compressed_texture_pixel_storage */
/* GL_ARB_conservative_depth */
/* GL_ARB_internalformat_query */
void glGetInternalformativ (GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint *params);
/* GL_ARB_map_buffer_alignment */
/* GL_ARB_shader_atomic_counters */
void glGetActiveAtomicCounterBufferiv (GLuint program, GLuint bufferIndex, GLenum pname, GLint *params);
/* GL_ARB_shader_image_load_store */
void glBindImageTexture (GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format);
void glMemoryBarrier (GLbitfield barriers);
/* GL_ARB_shading_language_packing */
/* GL_ARB_texture_storage */
void glTexStorage1D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
void glTexStorage2D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
void glTexStorage3D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
void glTextureStorage1DEXT (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
void glTextureStorage2DEXT (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
void glTextureStorage3DEXT (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
/* GL_KHR_texture_compression_astc_ldr */
/* GL_KHR_debug */
void glDebugMessageControl (GLenum source, GLenum type, GLenum severity, GLsizei count, const GLuint *ids, GLboolean enabled);
void glDebugMessageInsert (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const GLchar *buf);
void glDebugMessageCallback (GLDEBUGPROC callback, const void *userParam);
GLuint glGetDebugMessageLog (GLuint count, GLsizei bufsize, GLenum *sources, GLenum *types, GLuint *ids, GLenum *severities, GLsizei *lengths, GLchar *messageLog);
void glPushDebugGroup (GLenum source, GLuint id, GLsizei length, const GLchar *message);
void glPopDebugGroup ();
void glObjectLabel (GLenum identifier, GLuint name, GLsizei length, const GLchar *label);
void glGetObjectLabel (GLenum identifier, GLuint name, GLsizei bufSize, GLsizei *length, GLchar *label);
void glObjectPtrLabel (const void *ptr, GLsizei length, const GLchar *label);
void glGetObjectPtrLabel (const void *ptr, GLsizei bufSize, GLsizei *length, GLchar *label);
/* GL_ARB_arrays_of_arrays */
/* GL_ARB_clear_buffer_object */
void glClearBufferData (GLenum target, GLenum internalformat, GLenum format, GLenum type, const void *data);
void glClearBufferSubData (GLenum target, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const void *data);
void glClearNamedBufferDataEXT (GLuint buffer, GLenum internalformat, GLenum format, GLenum type, const void *data);
void glClearNamedBufferSubDataEXT (GLuint buffer, GLenum internalformat, GLenum format, GLenum type, GLsizeiptr offset, GLsizeiptr size, const void *data);
/* GL_ARB_compute_shader */
void glDispatchCompute (GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z);
void glDispatchComputeIndirect (GLintptr indirect);
/* GL_ARB_copy_image */
void glCopyImageSubData (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth);
/* GL_ARB_texture_view */
void glTextureView (GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers);
/* GL_ARB_vertex_attrib_binding */
void glBindVertexBuffer (GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
void glVertexAttribFormat (GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
void glVertexAttribIFormat (GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexAttribLFormat (GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexAttribBinding (GLuint attribindex, GLuint bindingindex);
void glVertexBindingDivisor (GLuint bindingindex, GLuint divisor);
void glVertexArrayBindVertexBufferEXT (GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
void glVertexArrayVertexAttribFormatEXT (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
void glVertexArrayVertexAttribIFormatEXT (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexArrayVertexAttribLFormatEXT (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexArrayVertexAttribBindingEXT (GLuint vaobj, GLuint attribindex, GLuint bindingindex);
void glVertexArrayVertexBindingDivisorEXT (GLuint vaobj, GLuint bindingindex, GLuint divisor);
/* GL_ARB_robustness_isolation */
/* GL_ARB_ES3_compatibility */
/* GL_ARB_explicit_uniform_location */
/* GL_ARB_fragment_layer_viewport */
/* GL_ARB_framebuffer_no_attachments */
void glFramebufferParameteri (GLenum target, GLenum pname, GLint param);
void glGetFramebufferParameteriv (GLenum target, GLenum pname, GLint *params);
void glNamedFramebufferParameteriEXT (GLuint framebuffer, GLenum pname, GLint param);
void glGetNamedFramebufferParameterivEXT (GLuint framebuffer, GLenum pname, GLint *params);
/* GL_ARB_internalformat_query2 */
void glGetInternalformati64v (GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint64 *params);
/* GL_ARB_invalidate_subdata */
void glInvalidateTexSubImage (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth);
void glInvalidateTexImage (GLuint texture, GLint level);
void glInvalidateBufferSubData (GLuint buffer, GLintptr offset, GLsizeiptr length);
void glInvalidateBufferData (GLuint buffer);
void glInvalidateFramebuffer (GLenum target, GLsizei numAttachments, const GLenum *attachments);
void glInvalidateSubFramebuffer (GLenum target, GLsizei numAttachments, const GLenum *attachments, GLint x, GLint y, GLsizei width, GLsizei height);
/* GL_ARB_multi_draw_indirect */
void glMultiDrawArraysIndirect (GLenum mode, const void *indirect, GLsizei drawcount, GLsizei stride);
void glMultiDrawElementsIndirect (GLenum mode, GLenum type, const void *indirect, GLsizei drawcount, GLsizei stride);
/* GL_ARB_program_interface_query */
void glGetProgramInterfaceiv (GLuint program, GLenum programInterface, GLenum pname, GLint *params);
GLuint glGetProgramResourceIndex (GLuint program, GLenum programInterface, const GLchar *name);
void glGetProgramResourceName (GLuint program, GLenum programInterface, GLuint index, GLsizei bufSize, GLsizei *length, GLchar *name);
void glGetProgramResourceiv (GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, const GLenum *props, GLsizei bufSize, GLsizei *length, GLint *params);
GLint glGetProgramResourceLocation (GLuint program, GLenum programInterface, const GLchar *name);
GLint glGetProgramResourceLocationIndex (GLuint program, GLenum programInterface, const GLchar *name);
/* GL_ARB_robust_buffer_access_behavior */
/* GL_ARB_shader_image_size */
/* GL_ARB_shader_storage_buffer_object */
void glShaderStorageBlockBinding (GLuint program, GLuint storageBlockIndex, GLuint storageBlockBinding);
/* GL_ARB_stencil_texturing */
/* GL_ARB_texture_buffer_range */
void glTexBufferRange (GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glTextureBufferRangeEXT (GLuint texture, GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
/* GL_ARB_texture_query_levels */
/* GL_ARB_texture_storage_multisample */
void glTexStorage2DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
void glTexStorage3DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
void glTextureStorage2DMultisampleEXT (GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
void glTextureStorage3DMultisampleEXT (GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
/* GL_EXT_abgr */
/* GL_EXT_blend_color */
void glBlendColorEXT (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
/* GL_EXT_polygon_offset */
void glPolygonOffsetEXT (GLfloat factor, GLfloat bias);
/* GL_EXT_texture */
/* GL_EXT_texture3D */
void glTexImage3DEXT (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
void glTexSubImage3DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels);
/* GL_SGIS_texture_filter4 */
void glGetTexFilterFuncSGIS (GLenum target, GLenum filter, GLfloat *weights);
void glTexFilterFuncSGIS (GLenum target, GLenum filter, GLsizei n, const GLfloat *weights);
/* GL_EXT_subtexture */
void glTexSubImage1DEXT (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid *pixels);
void glTexSubImage2DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels);
/* GL_EXT_copy_texture */
void glCopyTexImage1DEXT (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyTexImage2DEXT (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyTexSubImage1DEXT (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyTexSubImage2DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glCopyTexSubImage3DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
/* GL_EXT_histogram */
void glGetHistogramEXT (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
void glGetHistogramParameterfvEXT (GLenum target, GLenum pname, GLfloat *params);
void glGetHistogramParameterivEXT (GLenum target, GLenum pname, GLint *params);
void glGetMinmaxEXT (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
void glGetMinmaxParameterfvEXT (GLenum target, GLenum pname, GLfloat *params);
void glGetMinmaxParameterivEXT (GLenum target, GLenum pname, GLint *params);
void glHistogramEXT (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
void glMinmaxEXT (GLenum target, GLenum internalformat, GLboolean sink);
void glResetHistogramEXT (GLenum target);
void glResetMinmaxEXT (GLenum target);
/* GL_EXT_convolution */
void glConvolutionFilter1DEXT (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *image);
void glConvolutionFilter2DEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *image);
void glConvolutionParameterfEXT (GLenum target, GLenum pname, GLfloat params);
void glConvolutionParameterfvEXT (GLenum target, GLenum pname, const GLfloat *params);
void glConvolutionParameteriEXT (GLenum target, GLenum pname, GLint params);
void glConvolutionParameterivEXT (GLenum target, GLenum pname, const GLint *params);
void glCopyConvolutionFilter1DEXT (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glCopyConvolutionFilter2DEXT (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
void glGetConvolutionFilterEXT (GLenum target, GLenum format, GLenum type, GLvoid *image);
void glGetConvolutionParameterfvEXT (GLenum target, GLenum pname, GLfloat *params);
void glGetConvolutionParameterivEXT (GLenum target, GLenum pname, GLint *params);
void glGetSeparableFilterEXT (GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span);
void glSeparableFilter2DEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *row, const GLvoid *column);
/* GL_SGI_color_matrix */
/* GL_SGI_color_table */
void glColorTableSGI (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *table);
void glColorTableParameterfvSGI (GLenum target, GLenum pname, const GLfloat *params);
void glColorTableParameterivSGI (GLenum target, GLenum pname, const GLint *params);
void glCopyColorTableSGI (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glGetColorTableSGI (GLenum target, GLenum format, GLenum type, GLvoid *table);
void glGetColorTableParameterfvSGI (GLenum target, GLenum pname, GLfloat *params);
void glGetColorTableParameterivSGI (GLenum target, GLenum pname, GLint *params);
/* GL_SGIX_pixel_texture */
void glPixelTexGenSGIX (GLenum mode);
/* GL_SGIS_pixel_texture */
void glPixelTexGenParameteriSGIS (GLenum pname, GLint param);
void glPixelTexGenParameterivSGIS (GLenum pname, const GLint *params);
void glPixelTexGenParameterfSGIS (GLenum pname, GLfloat param);
void glPixelTexGenParameterfvSGIS (GLenum pname, const GLfloat *params);
void glGetPixelTexGenParameterivSGIS (GLenum pname, GLint *params);
void glGetPixelTexGenParameterfvSGIS (GLenum pname, GLfloat *params);
/* GL_SGIS_texture4D */
void glTexImage4DSGIS (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
void glTexSubImage4DSGIS (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, const GLvoid *pixels);
/* GL_SGI_texture_color_table */
/* GL_EXT_cmyka */
/* GL_EXT_texture_object */
GLboolean glAreTexturesResidentEXT (GLsizei n, const GLuint *textures, GLboolean *residences);
void glBindTextureEXT (GLenum target, GLuint texture);
void glDeleteTexturesEXT (GLsizei n, const GLuint *textures);
void glGenTexturesEXT (GLsizei n, GLuint *textures);
GLboolean glIsTextureEXT (GLuint texture);
void glPrioritizeTexturesEXT (GLsizei n, const GLuint *textures, const GLclampf *priorities);
/* GL_SGIS_detail_texture */
void glDetailTexFuncSGIS (GLenum target, GLsizei n, const GLfloat *points);
void glGetDetailTexFuncSGIS (GLenum target, GLfloat *points);
/* GL_SGIS_sharpen_texture */
void glSharpenTexFuncSGIS (GLenum target, GLsizei n, const GLfloat *points);
void glGetSharpenTexFuncSGIS (GLenum target, GLfloat *points);
/* GL_EXT_packed_pixels */
/* GL_SGIS_texture_lod */
/* GL_SGIS_multisample */
void glSampleMaskSGIS (GLclampf value, GLboolean invert);
void glSamplePatternSGIS (GLenum pattern);
/* GL_EXT_rescale_normal */
/* GL_EXT_vertex_array */
void glArrayElementEXT (GLint i);
void glColorPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
void glDrawArraysEXT (GLenum mode, GLint first, GLsizei count);
void glEdgeFlagPointerEXT (GLsizei stride, GLsizei count, const GLboolean *pointer);
void glGetPointervEXT (GLenum pname, GLvoid* *params);
void glIndexPointerEXT (GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
void glNormalPointerEXT (GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
void glTexCoordPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
void glVertexPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
/* GL_EXT_misc_attribute */
/* GL_SGIS_generate_mipmap */
/* GL_SGIX_clipmap */
/* GL_SGIX_shadow */
/* GL_SGIS_texture_edge_clamp */
/* GL_SGIS_texture_border_clamp */
/* GL_EXT_blend_minmax */
void glBlendEquationEXT (GLenum mode);
/* GL_EXT_blend_subtract */
/* GL_EXT_blend_logic_op */
/* GL_SGIX_interlace */
/* GL_SGIX_pixel_tiles */
/* GL_SGIX_texture_select */
/* GL_SGIX_sprite */
void glSpriteParameterfSGIX (GLenum pname, GLfloat param);
void glSpriteParameterfvSGIX (GLenum pname, const GLfloat *params);
void glSpriteParameteriSGIX (GLenum pname, GLint param);
void glSpriteParameterivSGIX (GLenum pname, const GLint *params);
/* GL_SGIX_texture_multi_buffer */
/* GL_EXT_point_parameters */
void glPointParameterfEXT (GLenum pname, GLfloat param);
void glPointParameterfvEXT (GLenum pname, const GLfloat *params);
/* GL_SGIS_point_parameters */
void glPointParameterfSGIS (GLenum pname, GLfloat param);
void glPointParameterfvSGIS (GLenum pname, const GLfloat *params);
/* GL_SGIX_instruments */
GLint glGetInstrumentsSGIX ();
void glInstrumentsBufferSGIX (GLsizei size, GLint *buffer);
GLint glPollInstrumentsSGIX (GLint *marker_p);
void glReadInstrumentsSGIX (GLint marker);
void glStartInstrumentsSGIX ();
void glStopInstrumentsSGIX (GLint marker);
/* GL_SGIX_texture_scale_bias */
/* GL_SGIX_framezoom */
void glFrameZoomSGIX (GLint factor);
/* GL_SGIX_tag_sample_buffer */
void glTagSampleBufferSGIX ();
/* GL_SGIX_polynomial_ffd */
void glDeformationMap3dSGIX (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, const GLdouble *points);
void glDeformationMap3fSGIX (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, const GLfloat *points);
void glDeformSGIX (GLbitfield mask);
void glLoadIdentityDeformationMapSGIX (GLbitfield mask);
/* GL_SGIX_reference_plane */
void glReferencePlaneSGIX (const GLdouble *equation);
/* GL_SGIX_flush_raster */
void glFlushRasterSGIX ();
/* GL_SGIX_depth_texture */
/* GL_SGIS_fog_function */
void glFogFuncSGIS (GLsizei n, const GLfloat *points);
void glGetFogFuncSGIS (GLfloat *points);
/* GL_SGIX_fog_offset */
/* GL_HP_image_transform */
void glImageTransformParameteriHP (GLenum target, GLenum pname, GLint param);
void glImageTransformParameterfHP (GLenum target, GLenum pname, GLfloat param);
void glImageTransformParameterivHP (GLenum target, GLenum pname, const GLint *params);
void glImageTransformParameterfvHP (GLenum target, GLenum pname, const GLfloat *params);
void glGetImageTransformParameterivHP (GLenum target, GLenum pname, GLint *params);
void glGetImageTransformParameterfvHP (GLenum target, GLenum pname, GLfloat *params);
/* GL_HP_convolution_border_modes */
/* GL_SGIX_texture_add_env */
/* GL_EXT_color_subtable */
void glColorSubTableEXT (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid *data);
void glCopyColorSubTableEXT (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
/* GL_PGI_vertex_hints */
/* GL_PGI_misc_hints */
void glHintPGI (GLenum target, GLint mode);
/* GL_EXT_paletted_texture */
void glColorTableEXT (GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, const GLvoid *table);
void glGetColorTableEXT (GLenum target, GLenum format, GLenum type, GLvoid *data);
void glGetColorTableParameterivEXT (GLenum target, GLenum pname, GLint *params);
void glGetColorTableParameterfvEXT (GLenum target, GLenum pname, GLfloat *params);
/* GL_EXT_clip_volume_hint */
/* GL_SGIX_list_priority */
void glGetListParameterfvSGIX (GLuint list, GLenum pname, GLfloat *params);
void glGetListParameterivSGIX (GLuint list, GLenum pname, GLint *params);
void glListParameterfSGIX (GLuint list, GLenum pname, GLfloat param);
void glListParameterfvSGIX (GLuint list, GLenum pname, const GLfloat *params);
void glListParameteriSGIX (GLuint list, GLenum pname, GLint param);
void glListParameterivSGIX (GLuint list, GLenum pname, const GLint *params);
/* GL_SGIX_ir_instrument1 */
/* GL_SGIX_calligraphic_fragment */
/* GL_SGIX_texture_lod_bias */
/* GL_SGIX_shadow_ambient */
/* GL_EXT_index_texture */
/* GL_EXT_index_material */
void glIndexMaterialEXT (GLenum face, GLenum mode);
/* GL_EXT_index_func */
void glIndexFuncEXT (GLenum func, GLclampf refr);
/* GL_EXT_index_array_formats */
/* GL_EXT_compiled_vertex_array */
void glLockArraysEXT (GLint first, GLsizei count);
void glUnlockArraysEXT ();
/* GL_EXT_cull_vertex */
void glCullParameterdvEXT (GLenum pname, GLdouble *params);
void glCullParameterfvEXT (GLenum pname, GLfloat *params);
/* GL_SGIX_ycrcb */
/* GL_SGIX_fragment_lighting */
void glFragmentColorMaterialSGIX (GLenum face, GLenum mode);
void glFragmentLightfSGIX (GLenum light, GLenum pname, GLfloat param);
void glFragmentLightfvSGIX (GLenum light, GLenum pname, const GLfloat *params);
void glFragmentLightiSGIX (GLenum light, GLenum pname, GLint param);
void glFragmentLightivSGIX (GLenum light, GLenum pname, const GLint *params);
void glFragmentLightModelfSGIX (GLenum pname, GLfloat param);
void glFragmentLightModelfvSGIX (GLenum pname, const GLfloat *params);
void glFragmentLightModeliSGIX (GLenum pname, GLint param);
void glFragmentLightModelivSGIX (GLenum pname, const GLint *params);
void glFragmentMaterialfSGIX (GLenum face, GLenum pname, GLfloat param);
void glFragmentMaterialfvSGIX (GLenum face, GLenum pname, const GLfloat *params);
void glFragmentMaterialiSGIX (GLenum face, GLenum pname, GLint param);
void glFragmentMaterialivSGIX (GLenum face, GLenum pname, const GLint *params);
void glGetFragmentLightfvSGIX (GLenum light, GLenum pname, GLfloat *params);
void glGetFragmentLightivSGIX (GLenum light, GLenum pname, GLint *params);
void glGetFragmentMaterialfvSGIX (GLenum face, GLenum pname, GLfloat *params);
void glGetFragmentMaterialivSGIX (GLenum face, GLenum pname, GLint *params);
void glLightEnviSGIX (GLenum pname, GLint param);
/* GL_IBM_rasterpos_clip */
/* GL_HP_texture_lighting */
/* GL_EXT_draw_range_elements */
void glDrawRangeElementsEXT (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid *indices);
/* GL_WIN_phong_shading */
/* GL_WIN_specular_fog */
/* GL_EXT_light_texture */
void glApplyTextureEXT (GLenum mode);
void glTextureLightEXT (GLenum pname);
void glTextureMaterialEXT (GLenum face, GLenum mode);
/* GL_SGIX_blend_alpha_minmax */
/* GL_EXT_bgra */
/* GL_SGIX_async */
void glAsyncMarkerSGIX (GLuint marker);
GLint glFinishAsyncSGIX (GLuint *markerp);
GLint glPollAsyncSGIX (GLuint *markerp);
GLuint glGenAsyncMarkersSGIX (GLsizei range);
void glDeleteAsyncMarkersSGIX (GLuint marker, GLsizei range);
GLboolean glIsAsyncMarkerSGIX (GLuint marker);
/* GL_SGIX_async_pixel */
/* GL_SGIX_async_histogram */
/* GL_INTEL_parallel_arrays */
void glVertexPointervINTEL (GLint size, GLenum type, const GLvoid* *pointer);
void glNormalPointervINTEL (GLenum type, const GLvoid* *pointer);
void glColorPointervINTEL (GLint size, GLenum type, const GLvoid* *pointer);
void glTexCoordPointervINTEL (GLint size, GLenum type, const GLvoid* *pointer);
/* GL_HP_occlusion_test */
/* GL_EXT_pixel_transform */
void glPixelTransformParameteriEXT (GLenum target, GLenum pname, GLint param);
void glPixelTransformParameterfEXT (GLenum target, GLenum pname, GLfloat param);
void glPixelTransformParameterivEXT (GLenum target, GLenum pname, const GLint *params);
void glPixelTransformParameterfvEXT (GLenum target, GLenum pname, const GLfloat *params);
void glGetPixelTransformParameterivEXT (GLenum target, GLenum pname, GLint *params);
void glGetPixelTransformParameterfvEXT (GLenum target, GLenum pname, GLfloat *params);
/* GL_EXT_pixel_transform_color_table */
/* GL_EXT_shared_texture_palette */
/* GL_EXT_separate_specular_color */
/* GL_EXT_secondary_color */
void glSecondaryColor3bEXT (GLbyte red, GLbyte green, GLbyte blue);
void glSecondaryColor3bvEXT (const GLbyte *v);
void glSecondaryColor3dEXT (GLdouble red, GLdouble green, GLdouble blue);
void glSecondaryColor3dvEXT (const GLdouble *v);
void glSecondaryColor3fEXT (GLfloat red, GLfloat green, GLfloat blue);
void glSecondaryColor3fvEXT (const GLfloat *v);
void glSecondaryColor3iEXT (GLint red, GLint green, GLint blue);
void glSecondaryColor3ivEXT (const GLint *v);
void glSecondaryColor3sEXT (GLshort red, GLshort green, GLshort blue);
void glSecondaryColor3svEXT (const GLshort *v);
void glSecondaryColor3ubEXT (GLubyte red, GLubyte green, GLubyte blue);
void glSecondaryColor3ubvEXT (const GLubyte *v);
void glSecondaryColor3uiEXT (GLuint red, GLuint green, GLuint blue);
void glSecondaryColor3uivEXT (const GLuint *v);
void glSecondaryColor3usEXT (GLushort red, GLushort green, GLushort blue);
void glSecondaryColor3usvEXT (const GLushort *v);
void glSecondaryColorPointerEXT (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
/* GL_EXT_texture_perturb_normal */
void glTextureNormalEXT (GLenum mode);
/* GL_EXT_multi_draw_arrays */
void glMultiDrawArraysEXT (GLenum mode, const GLint *first, const GLsizei *count, GLsizei primcount);
void glMultiDrawElementsEXT (GLenum mode, const GLsizei *count, GLenum type, const GLvoid* *indices, GLsizei primcount);
/* GL_EXT_fog_coord */
void glFogCoordfEXT (GLfloat coord);
void glFogCoordfvEXT (const GLfloat *coord);
void glFogCoorddEXT (GLdouble coord);
void glFogCoorddvEXT (const GLdouble *coord);
void glFogCoordPointerEXT (GLenum type, GLsizei stride, const GLvoid *pointer);
/* GL_REND_screen_coordinates */
/* GL_EXT_coordinate_frame */
void glTangent3bEXT (GLbyte tx, GLbyte ty, GLbyte tz);
void glTangent3bvEXT (const GLbyte *v);
void glTangent3dEXT (GLdouble tx, GLdouble ty, GLdouble tz);
void glTangent3dvEXT (const GLdouble *v);
void glTangent3fEXT (GLfloat tx, GLfloat ty, GLfloat tz);
void glTangent3fvEXT (const GLfloat *v);
void glTangent3iEXT (GLint tx, GLint ty, GLint tz);
void glTangent3ivEXT (const GLint *v);
void glTangent3sEXT (GLshort tx, GLshort ty, GLshort tz);
void glTangent3svEXT (const GLshort *v);
void glBinormal3bEXT (GLbyte bx, GLbyte by, GLbyte bz);
void glBinormal3bvEXT (const GLbyte *v);
void glBinormal3dEXT (GLdouble bx, GLdouble by, GLdouble bz);
void glBinormal3dvEXT (const GLdouble *v);
void glBinormal3fEXT (GLfloat bx, GLfloat by, GLfloat bz);
void glBinormal3fvEXT (const GLfloat *v);
void glBinormal3iEXT (GLint bx, GLint by, GLint bz);
void glBinormal3ivEXT (const GLint *v);
void glBinormal3sEXT (GLshort bx, GLshort by, GLshort bz);
void glBinormal3svEXT (const GLshort *v);
void glTangentPointerEXT (GLenum type, GLsizei stride, const GLvoid *pointer);
void glBinormalPointerEXT (GLenum type, GLsizei stride, const GLvoid *pointer);
/* GL_EXT_texture_env_combine */
/* GL_APPLE_specular_vector */
/* GL_APPLE_transform_hint */
/* GL_SGIX_fog_scale */
/* GL_SUNX_constant_data */
void glFinishTextureSUNX ();
/* GL_SUN_global_alpha */
void glGlobalAlphaFactorbSUN (GLbyte factor);
void glGlobalAlphaFactorsSUN (GLshort factor);
void glGlobalAlphaFactoriSUN (GLint factor);
void glGlobalAlphaFactorfSUN (GLfloat factor);
void glGlobalAlphaFactordSUN (GLdouble factor);
void glGlobalAlphaFactorubSUN (GLubyte factor);
void glGlobalAlphaFactorusSUN (GLushort factor);
void glGlobalAlphaFactoruiSUN (GLuint factor);
/* GL_SUN_triangle_list */
void glReplacementCodeuiSUN (GLuint code);
void glReplacementCodeusSUN (GLushort code);
void glReplacementCodeubSUN (GLubyte code);
void glReplacementCodeuivSUN (const GLuint *code);
void glReplacementCodeusvSUN (const GLushort *code);
void glReplacementCodeubvSUN (const GLubyte *code);
void glReplacementCodePointerSUN (GLenum type, GLsizei stride, const GLvoid* *pointer);
/* GL_SUN_vertex */
void glColor4ubVertex2fSUN (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y);
void glColor4ubVertex2fvSUN (const GLubyte *c, const GLfloat *v);
void glColor4ubVertex3fSUN (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
void glColor4ubVertex3fvSUN (const GLubyte *c, const GLfloat *v);
void glColor3fVertex3fSUN (GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
void glColor3fVertex3fvSUN (const GLfloat *c, const GLfloat *v);
void glNormal3fVertex3fSUN (GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glNormal3fVertex3fvSUN (const GLfloat *n, const GLfloat *v);
void glColor4fNormal3fVertex3fSUN (GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glColor4fNormal3fVertex3fvSUN (const GLfloat *c, const GLfloat *n, const GLfloat *v);
void glTexCoord2fVertex3fSUN (GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fVertex3fvSUN (const GLfloat *tc, const GLfloat *v);
void glTexCoord4fVertex4fSUN (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glTexCoord4fVertex4fvSUN (const GLfloat *tc, const GLfloat *v);
void glTexCoord2fColor4ubVertex3fSUN (GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fColor4ubVertex3fvSUN (const GLfloat *tc, const GLubyte *c, const GLfloat *v);
void glTexCoord2fColor3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fColor3fVertex3fvSUN (const GLfloat *tc, const GLfloat *c, const GLfloat *v);
void glTexCoord2fNormal3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fNormal3fVertex3fvSUN (const GLfloat *tc, const GLfloat *n, const GLfloat *v);
void glTexCoord2fColor4fNormal3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fColor4fNormal3fVertex3fvSUN (const GLfloat *tc, const GLfloat *c, const GLfloat *n, const GLfloat *v);
void glTexCoord4fColor4fNormal3fVertex4fSUN (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glTexCoord4fColor4fNormal3fVertex4fvSUN (const GLfloat *tc, const GLfloat *c, const GLfloat *n, const GLfloat *v);
void glReplacementCodeuiVertex3fSUN (GLuint rc, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiVertex3fvSUN (const GLuint *rc, const GLfloat *v);
void glReplacementCodeuiColor4ubVertex3fSUN (GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiColor4ubVertex3fvSUN (const GLuint *rc, const GLubyte *c, const GLfloat *v);
void glReplacementCodeuiColor3fVertex3fSUN (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiColor3fVertex3fvSUN (const GLuint *rc, const GLfloat *c, const GLfloat *v);
void glReplacementCodeuiNormal3fVertex3fSUN (GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiNormal3fVertex3fvSUN (const GLuint *rc, const GLfloat *n, const GLfloat *v);
void glReplacementCodeuiColor4fNormal3fVertex3fSUN (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiColor4fNormal3fVertex3fvSUN (const GLuint *rc, const GLfloat *c, const GLfloat *n, const GLfloat *v);
void glReplacementCodeuiTexCoord2fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiTexCoord2fVertex3fvSUN (const GLuint *rc, const GLfloat *tc, const GLfloat *v);
void glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN (const GLuint *rc, const GLfloat *tc, const GLfloat *n, const GLfloat *v);
void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN (const GLuint *rc, const GLfloat *tc, const GLfloat *c, const GLfloat *n, const GLfloat *v);
/* GL_EXT_blend_func_separate */
void glBlendFuncSeparateEXT (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
/* GL_INGR_blend_func_separate */
void glBlendFuncSeparateINGR (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
/* GL_INGR_color_clamp */
/* GL_INGR_interlace_read */
/* GL_EXT_stencil_wrap */
/* GL_EXT_422_pixels */
/* GL_NV_texgen_reflection */
/* GL_SUN_convolution_border_modes */
/* GL_EXT_texture_env_add */
/* GL_EXT_texture_lod_bias */
/* GL_EXT_texture_filter_anisotropic */
/* GL_EXT_vertex_weighting */
void glVertexWeightfEXT (GLfloat weight);
void glVertexWeightfvEXT (const GLfloat *weight);
void glVertexWeightPointerEXT (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
/* GL_NV_light_max_exponent */
/* GL_NV_vertex_array_range */
void glFlushVertexArrayRangeNV ();
void glVertexArrayRangeNV (GLsizei length, const GLvoid *pointer);
/* GL_NV_register_combiners */
void glCombinerParameterfvNV (GLenum pname, const GLfloat *params);
void glCombinerParameterfNV (GLenum pname, GLfloat param);
void glCombinerParameterivNV (GLenum pname, const GLint *params);
void glCombinerParameteriNV (GLenum pname, GLint param);
void glCombinerInputNV (GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
void glCombinerOutputNV (GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum);
void glFinalCombinerInputNV (GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
void glGetCombinerInputParameterfvNV (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat *params);
void glGetCombinerInputParameterivNV (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint *params);
void glGetCombinerOutputParameterfvNV (GLenum stage, GLenum portion, GLenum pname, GLfloat *params);
void glGetCombinerOutputParameterivNV (GLenum stage, GLenum portion, GLenum pname, GLint *params);
void glGetFinalCombinerInputParameterfvNV (GLenum variable, GLenum pname, GLfloat *params);
void glGetFinalCombinerInputParameterivNV (GLenum variable, GLenum pname, GLint *params);
/* GL_NV_fog_distance */
/* GL_NV_texgen_emboss */
/* GL_NV_blend_square */
/* GL_NV_texture_env_combine4 */
/* GL_MESA_resize_buffers */
void glResizeBuffersMESA ();
/* GL_MESA_window_pos */
void glWindowPos2dMESA (GLdouble x, GLdouble y);
void glWindowPos2dvMESA (const GLdouble *v);
void glWindowPos2fMESA (GLfloat x, GLfloat y);
void glWindowPos2fvMESA (const GLfloat *v);
void glWindowPos2iMESA (GLint x, GLint y);
void glWindowPos2ivMESA (const GLint *v);
void glWindowPos2sMESA (GLshort x, GLshort y);
void glWindowPos2svMESA (const GLshort *v);
void glWindowPos3dMESA (GLdouble x, GLdouble y, GLdouble z);
void glWindowPos3dvMESA (const GLdouble *v);
void glWindowPos3fMESA (GLfloat x, GLfloat y, GLfloat z);
void glWindowPos3fvMESA (const GLfloat *v);
void glWindowPos3iMESA (GLint x, GLint y, GLint z);
void glWindowPos3ivMESA (const GLint *v);
void glWindowPos3sMESA (GLshort x, GLshort y, GLshort z);
void glWindowPos3svMESA (const GLshort *v);
void glWindowPos4dMESA (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glWindowPos4dvMESA (const GLdouble *v);
void glWindowPos4fMESA (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glWindowPos4fvMESA (const GLfloat *v);
void glWindowPos4iMESA (GLint x, GLint y, GLint z, GLint w);
void glWindowPos4ivMESA (const GLint *v);
void glWindowPos4sMESA (GLshort x, GLshort y, GLshort z, GLshort w);
void glWindowPos4svMESA (const GLshort *v);
/* GL_IBM_cull_vertex */
/* GL_IBM_multimode_draw_arrays */
void glMultiModeDrawArraysIBM (const GLenum *mode, const GLint *first, const GLsizei *count, GLsizei primcount, GLint modestride);
void glMultiModeDrawElementsIBM (const GLenum *mode, const GLsizei *count, GLenum type, const GLvoid **indices, GLsizei primcount, GLint modestride);
/* GL_IBM_vertex_array_lists */
void glColorPointerListIBM (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
void glSecondaryColorPointerListIBM (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
void glEdgeFlagPointerListIBM (GLint stride, const GLboolean* *pointer, GLint ptrstride);
void glFogCoordPointerListIBM (GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
void glIndexPointerListIBM (GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
void glNormalPointerListIBM (GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
void glTexCoordPointerListIBM (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
void glVertexPointerListIBM (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
/* GL_SGIX_subsample */
/* GL_SGIX_ycrcba */
/* GL_SGIX_ycrcb_subsample */
/* GL_SGIX_depth_pass_instrument */
/* GL_3DFX_texture_compression_FXT1 */
/* GL_3DFX_multisample */
/* GL_3DFX_tbuffer */
void glTbufferMask3DFX (GLuint mask);
/* GL_EXT_multisample */
void glSampleMaskEXT (GLclampf value, GLboolean invert);
void glSamplePatternEXT (GLenum pattern);
/* GL_SGIX_vertex_preclip */
/* GL_SGIX_convolution_accuracy */
/* GL_SGIX_resample */
/* GL_SGIS_point_line_texgen */
/* GL_SGIS_texture_color_mask */
void glTextureColorMaskSGIS (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
/* GL_SGIX_igloo_interface */
void glIglooInterfaceSGIX (GLenum pname, const GLvoid *params);
/* GL_EXT_texture_env_dot3 */
/* GL_ATI_texture_mirror_once */
/* GL_NV_fence */
void glDeleteFencesNV (GLsizei n, const GLuint *fences);
void glGenFencesNV (GLsizei n, GLuint *fences);
GLboolean glIsFenceNV (GLuint fence);
GLboolean glTestFenceNV (GLuint fence);
void glGetFenceivNV (GLuint fence, GLenum pname, GLint *params);
void glFinishFenceNV (GLuint fence);
void glSetFenceNV (GLuint fence, GLenum condition);
/* GL_NV_evaluators */
void glMapControlPointsNV (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, const GLvoid *points);
void glMapParameterivNV (GLenum target, GLenum pname, const GLint *params);
void glMapParameterfvNV (GLenum target, GLenum pname, const GLfloat *params);
void glGetMapControlPointsNV (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, GLvoid *points);
void glGetMapParameterivNV (GLenum target, GLenum pname, GLint *params);
void glGetMapParameterfvNV (GLenum target, GLenum pname, GLfloat *params);
void glGetMapAttribParameterivNV (GLenum target, GLuint index, GLenum pname, GLint *params);
void glGetMapAttribParameterfvNV (GLenum target, GLuint index, GLenum pname, GLfloat *params);
void glEvalMapsNV (GLenum target, GLenum mode);
/* GL_NV_packed_depth_stencil */
/* GL_NV_register_combiners2 */
void glCombinerStageParameterfvNV (GLenum stage, GLenum pname, const GLfloat *params);
void glGetCombinerStageParameterfvNV (GLenum stage, GLenum pname, GLfloat *params);
/* GL_NV_texture_compression_vtc */
/* GL_NV_texture_rectangle */
/* GL_NV_texture_shader */
/* GL_NV_texture_shader2 */
/* GL_NV_vertex_array_range2 */
/* GL_NV_vertex_program */
GLboolean glAreProgramsResidentNV (GLsizei n, const GLuint *programs, GLboolean *residences);
void glBindProgramNV (GLenum target, GLuint id);
void glDeleteProgramsNV (GLsizei n, const GLuint *programs);
void glExecuteProgramNV (GLenum target, GLuint id, const GLfloat *params);
void glGenProgramsNV (GLsizei n, GLuint *programs);
void glGetProgramParameterdvNV (GLenum target, GLuint index, GLenum pname, GLdouble *params);
void glGetProgramParameterfvNV (GLenum target, GLuint index, GLenum pname, GLfloat *params);
void glGetProgramivNV (GLuint id, GLenum pname, GLint *params);
void glGetProgramStringNV (GLuint id, GLenum pname, GLubyte *program);
void glGetTrackMatrixivNV (GLenum target, GLuint address, GLenum pname, GLint *params);
void glGetVertexAttribdvNV (GLuint index, GLenum pname, GLdouble *params);
void glGetVertexAttribfvNV (GLuint index, GLenum pname, GLfloat *params);
void glGetVertexAttribivNV (GLuint index, GLenum pname, GLint *params);
void glGetVertexAttribPointervNV (GLuint index, GLenum pname, GLvoid* *pointer);
GLboolean glIsProgramNV (GLuint id);
void glLoadProgramNV (GLenum target, GLuint id, GLsizei len, const GLubyte *program);
void glProgramParameter4dNV (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramParameter4dvNV (GLenum target, GLuint index, const GLdouble *v);
void glProgramParameter4fNV (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramParameter4fvNV (GLenum target, GLuint index, const GLfloat *v);
void glProgramParameters4dvNV (GLenum target, GLuint index, GLsizei count, const GLdouble *v);
void glProgramParameters4fvNV (GLenum target, GLuint index, GLsizei count, const GLfloat *v);
void glRequestResidentProgramsNV (GLsizei n, const GLuint *programs);
void glTrackMatrixNV (GLenum target, GLuint address, GLenum matrix, GLenum transform);
void glVertexAttribPointerNV (GLuint index, GLint fsize, GLenum type, GLsizei stride, const GLvoid *pointer);
void glVertexAttrib1dNV (GLuint index, GLdouble x);
void glVertexAttrib1dvNV (GLuint index, const GLdouble *v);
void glVertexAttrib1fNV (GLuint index, GLfloat x);
void glVertexAttrib1fvNV (GLuint index, const GLfloat *v);
void glVertexAttrib1sNV (GLuint index, GLshort x);
void glVertexAttrib1svNV (GLuint index, const GLshort *v);
void glVertexAttrib2dNV (GLuint index, GLdouble x, GLdouble y);
void glVertexAttrib2dvNV (GLuint index, const GLdouble *v);
void glVertexAttrib2fNV (GLuint index, GLfloat x, GLfloat y);
void glVertexAttrib2fvNV (GLuint index, const GLfloat *v);
void glVertexAttrib2sNV (GLuint index, GLshort x, GLshort y);
void glVertexAttrib2svNV (GLuint index, const GLshort *v);
void glVertexAttrib3dNV (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttrib3dvNV (GLuint index, const GLdouble *v);
void glVertexAttrib3fNV (GLuint index, GLfloat x, GLfloat y, GLfloat z);
void glVertexAttrib3fvNV (GLuint index, const GLfloat *v);
void glVertexAttrib3sNV (GLuint index, GLshort x, GLshort y, GLshort z);
void glVertexAttrib3svNV (GLuint index, const GLshort *v);
void glVertexAttrib4dNV (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttrib4dvNV (GLuint index, const GLdouble *v);
void glVertexAttrib4fNV (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexAttrib4fvNV (GLuint index, const GLfloat *v);
void glVertexAttrib4sNV (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
void glVertexAttrib4svNV (GLuint index, const GLshort *v);
void glVertexAttrib4ubNV (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
void glVertexAttrib4ubvNV (GLuint index, const GLubyte *v);
void glVertexAttribs1dvNV (GLuint index, GLsizei count, const GLdouble *v);
void glVertexAttribs1fvNV (GLuint index, GLsizei count, const GLfloat *v);
void glVertexAttribs1svNV (GLuint index, GLsizei count, const GLshort *v);
void glVertexAttribs2dvNV (GLuint index, GLsizei count, const GLdouble *v);
void glVertexAttribs2fvNV (GLuint index, GLsizei count, const GLfloat *v);
void glVertexAttribs2svNV (GLuint index, GLsizei count, const GLshort *v);
void glVertexAttribs3dvNV (GLuint index, GLsizei count, const GLdouble *v);
void glVertexAttribs3fvNV (GLuint index, GLsizei count, const GLfloat *v);
void glVertexAttribs3svNV (GLuint index, GLsizei count, const GLshort *v);
void glVertexAttribs4dvNV (GLuint index, GLsizei count, const GLdouble *v);
void glVertexAttribs4fvNV (GLuint index, GLsizei count, const GLfloat *v);
void glVertexAttribs4svNV (GLuint index, GLsizei count, const GLshort *v);
void glVertexAttribs4ubvNV (GLuint index, GLsizei count, const GLubyte *v);
/* GL_SGIX_texture_coordinate_clamp */
/* GL_SGIX_scalebias_hint */
/* GL_OML_interlace */
/* GL_OML_subsample */
/* GL_OML_resample */
/* GL_NV_copy_depth_to_color */
/* GL_ATI_envmap_bumpmap */
void glTexBumpParameterivATI (GLenum pname, const GLint *param);
void glTexBumpParameterfvATI (GLenum pname, const GLfloat *param);
void glGetTexBumpParameterivATI (GLenum pname, GLint *param);
void glGetTexBumpParameterfvATI (GLenum pname, GLfloat *param);
/* GL_ATI_fragment_shader */
GLuint glGenFragmentShadersATI (GLuint range);
void glBindFragmentShaderATI (GLuint id);
void glDeleteFragmentShaderATI (GLuint id);
void glBeginFragmentShaderATI ();
void glEndFragmentShaderATI ();
void glPassTexCoordATI (GLuint dst, GLuint coord, GLenum swizzle);
void glSampleMapATI (GLuint dst, GLuint interp, GLenum swizzle);
void glColorFragmentOp1ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
void glColorFragmentOp2ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
void glColorFragmentOp3ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
void glAlphaFragmentOp1ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
void glAlphaFragmentOp2ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
void glAlphaFragmentOp3ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
void glSetFragmentShaderConstantATI (GLuint dst, const GLfloat *value);
/* GL_ATI_pn_triangles */
void glPNTrianglesiATI (GLenum pname, GLint param);
void glPNTrianglesfATI (GLenum pname, GLfloat param);
/* GL_ATI_vertex_array_object */
GLuint glNewObjectBufferATI (GLsizei size, const GLvoid *pointer, GLenum usage);
GLboolean glIsObjectBufferATI (GLuint buffer);
void glUpdateObjectBufferATI (GLuint buffer, GLuint offset, GLsizei size, const GLvoid *pointer, GLenum preserve);
void glGetObjectBufferfvATI (GLuint buffer, GLenum pname, GLfloat *params);
void glGetObjectBufferivATI (GLuint buffer, GLenum pname, GLint *params);
void glFreeObjectBufferATI (GLuint buffer);
void glArrayObjectATI (GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
void glGetArrayObjectfvATI (GLenum array, GLenum pname, GLfloat *params);
void glGetArrayObjectivATI (GLenum array, GLenum pname, GLint *params);
void glVariantArrayObjectATI (GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
void glGetVariantArrayObjectfvATI (GLuint id, GLenum pname, GLfloat *params);
void glGetVariantArrayObjectivATI (GLuint id, GLenum pname, GLint *params);
/* GL_EXT_vertex_shader */
void glBeginVertexShaderEXT ();
void glEndVertexShaderEXT ();
void glBindVertexShaderEXT (GLuint id);
GLuint glGenVertexShadersEXT (GLuint range);
void glDeleteVertexShaderEXT (GLuint id);
void glShaderOp1EXT (GLenum op, GLuint res, GLuint arg1);
void glShaderOp2EXT (GLenum op, GLuint res, GLuint arg1, GLuint arg2);
void glShaderOp3EXT (GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3);
void glSwizzleEXT (GLuint res, GLuint in_, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
void glWriteMaskEXT (GLuint res, GLuint in_, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
void glInsertComponentEXT (GLuint res, GLuint src, GLuint num);
void glExtractComponentEXT (GLuint res, GLuint src, GLuint num);
GLuint glGenSymbolsEXT (GLenum datatype, GLenum storagetype, GLenum range, GLuint components);
void glSetInvariantEXT (GLuint id, GLenum type, const GLvoid *addr);
void glSetLocalConstantEXT (GLuint id, GLenum type, const GLvoid *addr);
void glVariantbvEXT (GLuint id, const GLbyte *addr);
void glVariantsvEXT (GLuint id, const GLshort *addr);
void glVariantivEXT (GLuint id, const GLint *addr);
void glVariantfvEXT (GLuint id, const GLfloat *addr);
void glVariantdvEXT (GLuint id, const GLdouble *addr);
void glVariantubvEXT (GLuint id, const GLubyte *addr);
void glVariantusvEXT (GLuint id, const GLushort *addr);
void glVariantuivEXT (GLuint id, const GLuint *addr);
void glVariantPointerEXT (GLuint id, GLenum type, GLuint stride, const GLvoid *addr);
void glEnableVariantClientStateEXT (GLuint id);
void glDisableVariantClientStateEXT (GLuint id);
GLuint glBindLightParameterEXT (GLenum light, GLenum value);
GLuint glBindMaterialParameterEXT (GLenum face, GLenum value);
GLuint glBindTexGenParameterEXT (GLenum unit, GLenum coord, GLenum value);
GLuint glBindTextureUnitParameterEXT (GLenum unit, GLenum value);
GLuint glBindParameterEXT (GLenum value);
GLboolean glIsVariantEnabledEXT (GLuint id, GLenum cap);
void glGetVariantBooleanvEXT (GLuint id, GLenum value, GLboolean *data);
void glGetVariantIntegervEXT (GLuint id, GLenum value, GLint *data);
void glGetVariantFloatvEXT (GLuint id, GLenum value, GLfloat *data);
void glGetVariantPointervEXT (GLuint id, GLenum value, GLvoid* *data);
void glGetInvariantBooleanvEXT (GLuint id, GLenum value, GLboolean *data);
void glGetInvariantIntegervEXT (GLuint id, GLenum value, GLint *data);
void glGetInvariantFloatvEXT (GLuint id, GLenum value, GLfloat *data);
void glGetLocalConstantBooleanvEXT (GLuint id, GLenum value, GLboolean *data);
void glGetLocalConstantIntegervEXT (GLuint id, GLenum value, GLint *data);
void glGetLocalConstantFloatvEXT (GLuint id, GLenum value, GLfloat *data);
/* GL_ATI_vertex_streams */
void glVertexStream1sATI (GLenum stream, GLshort x);
void glVertexStream1svATI (GLenum stream, const GLshort *coords);
void glVertexStream1iATI (GLenum stream, GLint x);
void glVertexStream1ivATI (GLenum stream, const GLint *coords);
void glVertexStream1fATI (GLenum stream, GLfloat x);
void glVertexStream1fvATI (GLenum stream, const GLfloat *coords);
void glVertexStream1dATI (GLenum stream, GLdouble x);
void glVertexStream1dvATI (GLenum stream, const GLdouble *coords);
void glVertexStream2sATI (GLenum stream, GLshort x, GLshort y);
void glVertexStream2svATI (GLenum stream, const GLshort *coords);
void glVertexStream2iATI (GLenum stream, GLint x, GLint y);
void glVertexStream2ivATI (GLenum stream, const GLint *coords);
void glVertexStream2fATI (GLenum stream, GLfloat x, GLfloat y);
void glVertexStream2fvATI (GLenum stream, const GLfloat *coords);
void glVertexStream2dATI (GLenum stream, GLdouble x, GLdouble y);
void glVertexStream2dvATI (GLenum stream, const GLdouble *coords);
void glVertexStream3sATI (GLenum stream, GLshort x, GLshort y, GLshort z);
void glVertexStream3svATI (GLenum stream, const GLshort *coords);
void glVertexStream3iATI (GLenum stream, GLint x, GLint y, GLint z);
void glVertexStream3ivATI (GLenum stream, const GLint *coords);
void glVertexStream3fATI (GLenum stream, GLfloat x, GLfloat y, GLfloat z);
void glVertexStream3fvATI (GLenum stream, const GLfloat *coords);
void glVertexStream3dATI (GLenum stream, GLdouble x, GLdouble y, GLdouble z);
void glVertexStream3dvATI (GLenum stream, const GLdouble *coords);
void glVertexStream4sATI (GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w);
void glVertexStream4svATI (GLenum stream, const GLshort *coords);
void glVertexStream4iATI (GLenum stream, GLint x, GLint y, GLint z, GLint w);
void glVertexStream4ivATI (GLenum stream, const GLint *coords);
void glVertexStream4fATI (GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexStream4fvATI (GLenum stream, const GLfloat *coords);
void glVertexStream4dATI (GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexStream4dvATI (GLenum stream, const GLdouble *coords);
void glNormalStream3bATI (GLenum stream, GLbyte nx, GLbyte ny, GLbyte nz);
void glNormalStream3bvATI (GLenum stream, const GLbyte *coords);
void glNormalStream3sATI (GLenum stream, GLshort nx, GLshort ny, GLshort nz);
void glNormalStream3svATI (GLenum stream, const GLshort *coords);
void glNormalStream3iATI (GLenum stream, GLint nx, GLint ny, GLint nz);
void glNormalStream3ivATI (GLenum stream, const GLint *coords);
void glNormalStream3fATI (GLenum stream, GLfloat nx, GLfloat ny, GLfloat nz);
void glNormalStream3fvATI (GLenum stream, const GLfloat *coords);
void glNormalStream3dATI (GLenum stream, GLdouble nx, GLdouble ny, GLdouble nz);
void glNormalStream3dvATI (GLenum stream, const GLdouble *coords);
void glClientActiveVertexStreamATI (GLenum stream);
void glVertexBlendEnviATI (GLenum pname, GLint param);
void glVertexBlendEnvfATI (GLenum pname, GLfloat param);
/* GL_ATI_element_array */
void glElementPointerATI (GLenum type, const GLvoid *pointer);
void glDrawElementArrayATI (GLenum mode, GLsizei count);
void glDrawRangeElementArrayATI (GLenum mode, GLuint start, GLuint end, GLsizei count);
/* GL_SUN_mesh_array */
void glDrawMeshArraysSUN (GLenum mode, GLint first, GLsizei count, GLsizei width);
/* GL_SUN_slice_accum */
/* GL_NV_multisample_filter_hint */
/* GL_NV_depth_clamp */
/* GL_NV_occlusion_query */
void glGenOcclusionQueriesNV (GLsizei n, GLuint *ids);
void glDeleteOcclusionQueriesNV (GLsizei n, const GLuint *ids);
GLboolean glIsOcclusionQueryNV (GLuint id);
void glBeginOcclusionQueryNV (GLuint id);
void glEndOcclusionQueryNV ();
void glGetOcclusionQueryivNV (GLuint id, GLenum pname, GLint *params);
void glGetOcclusionQueryuivNV (GLuint id, GLenum pname, GLuint *params);
/* GL_NV_point_sprite */
void glPointParameteriNV (GLenum pname, GLint param);
void glPointParameterivNV (GLenum pname, const GLint *params);
/* GL_NV_texture_shader3 */
/* GL_NV_vertex_program1_1 */
/* GL_EXT_shadow_funcs */
/* GL_EXT_stencil_two_side */
void glActiveStencilFaceEXT (GLenum face);
/* GL_ATI_text_fragment_shader */
/* GL_APPLE_client_storage */
/* GL_APPLE_element_array */
void glElementPointerAPPLE (GLenum type, const GLvoid *pointer);
void glDrawElementArrayAPPLE (GLenum mode, GLint first, GLsizei count);
void glDrawRangeElementArrayAPPLE (GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count);
void glMultiDrawElementArrayAPPLE (GLenum mode, const GLint *first, const GLsizei *count, GLsizei primcount);
void glMultiDrawRangeElementArrayAPPLE (GLenum mode, GLuint start, GLuint end, const GLint *first, const GLsizei *count, GLsizei primcount);
/* GL_APPLE_fence */
void glGenFencesAPPLE (GLsizei n, GLuint *fences);
void glDeleteFencesAPPLE (GLsizei n, const GLuint *fences);
void glSetFenceAPPLE (GLuint fence);
GLboolean glIsFenceAPPLE (GLuint fence);
GLboolean glTestFenceAPPLE (GLuint fence);
void glFinishFenceAPPLE (GLuint fence);
GLboolean glTestObjectAPPLE (GLenum object, GLuint name);
void glFinishObjectAPPLE (GLenum object, GLint name);
/* GL_APPLE_vertex_array_object */
void glBindVertexArrayAPPLE (GLuint array);
void glDeleteVertexArraysAPPLE (GLsizei n, const GLuint *arrays);
void glGenVertexArraysAPPLE (GLsizei n, GLuint *arrays);
GLboolean glIsVertexArrayAPPLE (GLuint array);
/* GL_APPLE_vertex_array_range */
void glVertexArrayRangeAPPLE (GLsizei length, GLvoid *pointer);
void glFlushVertexArrayRangeAPPLE (GLsizei length, GLvoid *pointer);
void glVertexArrayParameteriAPPLE (GLenum pname, GLint param);
/* GL_APPLE_ycbcr_422 */
/* GL_S3_s3tc */
/* GL_ATI_draw_buffers */
void glDrawBuffersATI (GLsizei n, const GLenum *bufs);
/* GL_ATI_pixel_format_float */
/* This is really a WGL extension, but defines some associated GL enums.
 * ATI does not export "GL_ATI_pixel_format_float" in the GL_EXTENSIONS string.
 */
/* GL_ATI_texture_env_combine3 */
/* GL_ATI_texture_float */
/* GL_NV_float_buffer */
/* GL_NV_fragment_program */
/* Some NV_fragment_program entry points are shared with ARB_vertex_program. */
void glProgramNamedParameter4fNV (GLuint id, GLsizei len, const GLubyte *name, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramNamedParameter4dNV (GLuint id, GLsizei len, const GLubyte *name, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramNamedParameter4fvNV (GLuint id, GLsizei len, const GLubyte *name, const GLfloat *v);
void glProgramNamedParameter4dvNV (GLuint id, GLsizei len, const GLubyte *name, const GLdouble *v);
void glGetProgramNamedParameterfvNV (GLuint id, GLsizei len, const GLubyte *name, GLfloat *params);
void glGetProgramNamedParameterdvNV (GLuint id, GLsizei len, const GLubyte *name, GLdouble *params);
/* GL_NV_half_float */
void glVertex2hNV (GLhalfNV x, GLhalfNV y);
void glVertex2hvNV (const GLhalfNV *v);
void glVertex3hNV (GLhalfNV x, GLhalfNV y, GLhalfNV z);
void glVertex3hvNV (const GLhalfNV *v);
void glVertex4hNV (GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w);
void glVertex4hvNV (const GLhalfNV *v);
void glNormal3hNV (GLhalfNV nx, GLhalfNV ny, GLhalfNV nz);
void glNormal3hvNV (const GLhalfNV *v);
void glColor3hNV (GLhalfNV red, GLhalfNV green, GLhalfNV blue);
void glColor3hvNV (const GLhalfNV *v);
void glColor4hNV (GLhalfNV red, GLhalfNV green, GLhalfNV blue, GLhalfNV alpha);
void glColor4hvNV (const GLhalfNV *v);
void glTexCoord1hNV (GLhalfNV s);
void glTexCoord1hvNV (const GLhalfNV *v);
void glTexCoord2hNV (GLhalfNV s, GLhalfNV t);
void glTexCoord2hvNV (const GLhalfNV *v);
void glTexCoord3hNV (GLhalfNV s, GLhalfNV t, GLhalfNV r);
void glTexCoord3hvNV (const GLhalfNV *v);
void glTexCoord4hNV (GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q);
void glTexCoord4hvNV (const GLhalfNV *v);
void glMultiTexCoord1hNV (GLenum target, GLhalfNV s);
void glMultiTexCoord1hvNV (GLenum target, const GLhalfNV *v);
void glMultiTexCoord2hNV (GLenum target, GLhalfNV s, GLhalfNV t);
void glMultiTexCoord2hvNV (GLenum target, const GLhalfNV *v);
void glMultiTexCoord3hNV (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r);
void glMultiTexCoord3hvNV (GLenum target, const GLhalfNV *v);
void glMultiTexCoord4hNV (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q);
void glMultiTexCoord4hvNV (GLenum target, const GLhalfNV *v);
void glFogCoordhNV (GLhalfNV fog);
void glFogCoordhvNV (const GLhalfNV *fog);
void glSecondaryColor3hNV (GLhalfNV red, GLhalfNV green, GLhalfNV blue);
void glSecondaryColor3hvNV (const GLhalfNV *v);
void glVertexWeighthNV (GLhalfNV weight);
void glVertexWeighthvNV (const GLhalfNV *weight);
void glVertexAttrib1hNV (GLuint index, GLhalfNV x);
void glVertexAttrib1hvNV (GLuint index, const GLhalfNV *v);
void glVertexAttrib2hNV (GLuint index, GLhalfNV x, GLhalfNV y);
void glVertexAttrib2hvNV (GLuint index, const GLhalfNV *v);
void glVertexAttrib3hNV (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z);
void glVertexAttrib3hvNV (GLuint index, const GLhalfNV *v);
void glVertexAttrib4hNV (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w);
void glVertexAttrib4hvNV (GLuint index, const GLhalfNV *v);
void glVertexAttribs1hvNV (GLuint index, GLsizei n, const GLhalfNV *v);
void glVertexAttribs2hvNV (GLuint index, GLsizei n, const GLhalfNV *v);
void glVertexAttribs3hvNV (GLuint index, GLsizei n, const GLhalfNV *v);
void glVertexAttribs4hvNV (GLuint index, GLsizei n, const GLhalfNV *v);
/* GL_NV_pixel_data_range */
void glPixelDataRangeNV (GLenum target, GLsizei length, const GLvoid *pointer);
void glFlushPixelDataRangeNV (GLenum target);
/* GL_NV_primitive_restart */
void glPrimitiveRestartNV ();
void glPrimitiveRestartIndexNV (GLuint index);
/* GL_NV_texture_expand_normal */
/* GL_NV_vertex_program2 */
/* GL_ATI_map_object_buffer */
GLvoid* glMapObjectBufferATI (GLuint buffer);
void glUnmapObjectBufferATI (GLuint buffer);
/* GL_ATI_separate_stencil */
void glStencilOpSeparateATI (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
void glStencilFuncSeparateATI (GLenum frontfunc, GLenum backfunc, GLint refr, GLuint mask);
/* GL_ATI_vertex_attrib_array_object */
void glVertexAttribArrayObjectATI (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset);
void glGetVertexAttribArrayObjectfvATI (GLuint index, GLenum pname, GLfloat *params);
void glGetVertexAttribArrayObjectivATI (GLuint index, GLenum pname, GLint *params);
/* GL_OES_read_format */
/* GL_EXT_depth_bounds_test */
void glDepthBoundsEXT (GLclampd zmin, GLclampd zmax);
/* GL_EXT_texture_mirror_clamp */
/* GL_EXT_blend_equation_separate */
void glBlendEquationSeparateEXT (GLenum modeRGB, GLenum modeAlpha);
/* GL_MESA_pack_invert */
/* GL_MESA_ycbcr_texture */
/* GL_EXT_pixel_buffer_object */
/* GL_NV_fragment_program_option */
/* GL_NV_fragment_program2 */
/* GL_NV_vertex_program2_option */
/* GL_NV_vertex_program3 */
/* GL_EXT_framebuffer_object */
GLboolean glIsRenderbufferEXT (GLuint renderbuffer);
void glBindRenderbufferEXT (GLenum target, GLuint renderbuffer);
void glDeleteRenderbuffersEXT (GLsizei n, const GLuint *renderbuffers);
void glGenRenderbuffersEXT (GLsizei n, GLuint *renderbuffers);
void glRenderbufferStorageEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
void glGetRenderbufferParameterivEXT (GLenum target, GLenum pname, GLint *params);
GLboolean glIsFramebufferEXT (GLuint framebuffer);
void glBindFramebufferEXT (GLenum target, GLuint framebuffer);
void glDeleteFramebuffersEXT (GLsizei n, const GLuint *framebuffers);
void glGenFramebuffersEXT (GLsizei n, GLuint *framebuffers);
GLenum glCheckFramebufferStatusEXT (GLenum target);
void glFramebufferTexture1DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture2DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture3DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
void glFramebufferRenderbufferEXT (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glGetFramebufferAttachmentParameterivEXT (GLenum target, GLenum attachment, GLenum pname, GLint *params);
void glGenerateMipmapEXT (GLenum target);
/* GL_GREMEDY_string_marker */
void glStringMarkerGREMEDY (GLsizei len, const GLvoid *string);
/* GL_EXT_packed_depth_stencil */
/* GL_EXT_stencil_clear_tag */
void glStencilClearTagEXT (GLsizei stencilTagBits, GLuint stencilClearTag);
/* GL_EXT_texture_sRGB */
/* GL_EXT_framebuffer_blit */
void glBlitFramebufferEXT (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
/* GL_EXT_framebuffer_multisample */
void glRenderbufferStorageMultisampleEXT (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
/* GL_MESAX_texture_stack */
/* GL_EXT_timer_query */
void glGetQueryObjecti64vEXT (GLuint id, GLenum pname, GLint64EXT *params);
void glGetQueryObjectui64vEXT (GLuint id, GLenum pname, GLuint64EXT *params);
/* GL_EXT_gpu_program_parameters */
void glProgramEnvParameters4fvEXT (GLenum target, GLuint index, GLsizei count, const GLfloat *params);
void glProgramLocalParameters4fvEXT (GLenum target, GLuint index, GLsizei count, const GLfloat *params);
/* GL_APPLE_flush_buffer_range */
void glBufferParameteriAPPLE (GLenum target, GLenum pname, GLint param);
void glFlushMappedBufferRangeAPPLE (GLenum target, GLintptr offset, GLsizeiptr size);
/* GL_NV_gpu_program4 */
void glProgramLocalParameterI4iNV (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
void glProgramLocalParameterI4ivNV (GLenum target, GLuint index, const GLint *params);
void glProgramLocalParametersI4ivNV (GLenum target, GLuint index, GLsizei count, const GLint *params);
void glProgramLocalParameterI4uiNV (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glProgramLocalParameterI4uivNV (GLenum target, GLuint index, const GLuint *params);
void glProgramLocalParametersI4uivNV (GLenum target, GLuint index, GLsizei count, const GLuint *params);
void glProgramEnvParameterI4iNV (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
void glProgramEnvParameterI4ivNV (GLenum target, GLuint index, const GLint *params);
void glProgramEnvParametersI4ivNV (GLenum target, GLuint index, GLsizei count, const GLint *params);
void glProgramEnvParameterI4uiNV (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glProgramEnvParameterI4uivNV (GLenum target, GLuint index, const GLuint *params);
void glProgramEnvParametersI4uivNV (GLenum target, GLuint index, GLsizei count, const GLuint *params);
void glGetProgramLocalParameterIivNV (GLenum target, GLuint index, GLint *params);
void glGetProgramLocalParameterIuivNV (GLenum target, GLuint index, GLuint *params);
void glGetProgramEnvParameterIivNV (GLenum target, GLuint index, GLint *params);
void glGetProgramEnvParameterIuivNV (GLenum target, GLuint index, GLuint *params);
/* GL_NV_geometry_program4 */
void glProgramVertexLimitNV (GLenum target, GLint limit);
void glFramebufferTextureEXT (GLenum target, GLenum attachment, GLuint texture, GLint level);
void glFramebufferTextureLayerEXT (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
void glFramebufferTextureFaceEXT (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);
/* GL_EXT_geometry_shader4 */
void glProgramParameteriEXT (GLuint program, GLenum pname, GLint value);
/* GL_NV_vertex_program4 */
void glVertexAttribI1iEXT (GLuint index, GLint x);
void glVertexAttribI2iEXT (GLuint index, GLint x, GLint y);
void glVertexAttribI3iEXT (GLuint index, GLint x, GLint y, GLint z);
void glVertexAttribI4iEXT (GLuint index, GLint x, GLint y, GLint z, GLint w);
void glVertexAttribI1uiEXT (GLuint index, GLuint x);
void glVertexAttribI2uiEXT (GLuint index, GLuint x, GLuint y);
void glVertexAttribI3uiEXT (GLuint index, GLuint x, GLuint y, GLuint z);
void glVertexAttribI4uiEXT (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glVertexAttribI1ivEXT (GLuint index, const GLint *v);
void glVertexAttribI2ivEXT (GLuint index, const GLint *v);
void glVertexAttribI3ivEXT (GLuint index, const GLint *v);
void glVertexAttribI4ivEXT (GLuint index, const GLint *v);
void glVertexAttribI1uivEXT (GLuint index, const GLuint *v);
void glVertexAttribI2uivEXT (GLuint index, const GLuint *v);
void glVertexAttribI3uivEXT (GLuint index, const GLuint *v);
void glVertexAttribI4uivEXT (GLuint index, const GLuint *v);
void glVertexAttribI4bvEXT (GLuint index, const GLbyte *v);
void glVertexAttribI4svEXT (GLuint index, const GLshort *v);
void glVertexAttribI4ubvEXT (GLuint index, const GLubyte *v);
void glVertexAttribI4usvEXT (GLuint index, const GLushort *v);
void glVertexAttribIPointerEXT (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
void glGetVertexAttribIivEXT (GLuint index, GLenum pname, GLint *params);
void glGetVertexAttribIuivEXT (GLuint index, GLenum pname, GLuint *params);
/* GL_EXT_gpu_shader4 */
void glGetUniformuivEXT (GLuint program, GLint location, GLuint *params);
void glBindFragDataLocationEXT (GLuint program, GLuint color, const GLchar *name);
GLint glGetFragDataLocationEXT (GLuint program, const GLchar *name);
void glUniform1uiEXT (GLint location, GLuint v0);
void glUniform2uiEXT (GLint location, GLuint v0, GLuint v1);
void glUniform3uiEXT (GLint location, GLuint v0, GLuint v1, GLuint v2);
void glUniform4uiEXT (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void glUniform1uivEXT (GLint location, GLsizei count, const GLuint *value);
void glUniform2uivEXT (GLint location, GLsizei count, const GLuint *value);
void glUniform3uivEXT (GLint location, GLsizei count, const GLuint *value);
void glUniform4uivEXT (GLint location, GLsizei count, const GLuint *value);
/* GL_EXT_draw_instanced */
void glDrawArraysInstancedEXT (GLenum mode, GLint start, GLsizei count, GLsizei primcount);
void glDrawElementsInstancedEXT (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLsizei primcount);
/* GL_EXT_packed_float */
/* GL_EXT_texture_array */
/* GL_EXT_texture_buffer_object */
void glTexBufferEXT (GLenum target, GLenum internalformat, GLuint buffer);
/* GL_EXT_texture_compression_latc */
/* GL_EXT_texture_compression_rgtc */
/* GL_EXT_texture_shared_exponent */
/* GL_NV_depth_buffer_float */
void glDepthRangedNV (GLdouble zNear, GLdouble zFar);
void glClearDepthdNV (GLdouble depth);
void glDepthBoundsdNV (GLdouble zmin, GLdouble zmax);
/* GL_NV_fragment_program4 */
/* GL_NV_framebuffer_multisample_coverage */
void glRenderbufferStorageMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height);
/* GL_EXT_framebuffer_sRGB */
/* GL_NV_geometry_shader4 */
/* GL_NV_parameter_buffer_object */
void glProgramBufferParametersfvNV (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLfloat *params);
void glProgramBufferParametersIivNV (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLint *params);
void glProgramBufferParametersIuivNV (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLuint *params);
/* GL_EXT_draw_buffers2 */
void glColorMaskIndexedEXT (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
void glGetBooleanIndexedvEXT (GLenum target, GLuint index, GLboolean *data);
void glGetIntegerIndexedvEXT (GLenum target, GLuint index, GLint *data);
void glEnableIndexedEXT (GLenum target, GLuint index);
void glDisableIndexedEXT (GLenum target, GLuint index);
GLboolean glIsEnabledIndexedEXT (GLenum target, GLuint index);
/* GL_NV_transform_feedback */
void glBeginTransformFeedbackNV (GLenum primitiveMode);
void glEndTransformFeedbackNV ();
void glTransformFeedbackAttribsNV (GLuint count, const GLint *attribs, GLenum bufferMode);
void glBindBufferRangeNV (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glBindBufferOffsetNV (GLenum target, GLuint index, GLuint buffer, GLintptr offset);
void glBindBufferBaseNV (GLenum target, GLuint index, GLuint buffer);
void glTransformFeedbackVaryingsNV (GLuint program, GLsizei count, const GLint *locations, GLenum bufferMode);
void glActiveVaryingNV (GLuint program, const GLchar *name);
GLint glGetVaryingLocationNV (GLuint program, const GLchar *name);
void glGetActiveVaryingNV (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name);
void glGetTransformFeedbackVaryingNV (GLuint program, GLuint index, GLint *location);
void glTransformFeedbackStreamAttribsNV (GLsizei count, const GLint *attribs, GLsizei nbuffers, const GLint *bufstreams, GLenum bufferMode);
/* GL_EXT_bindable_uniform */
void glUniformBufferEXT (GLuint program, GLint location, GLuint buffer);
GLint glGetUniformBufferSizeEXT (GLuint program, GLint location);
GLintptr glGetUniformOffsetEXT (GLuint program, GLint location);
/* GL_EXT_texture_integer */
void glTexParameterIivEXT (GLenum target, GLenum pname, const GLint *params);
void glTexParameterIuivEXT (GLenum target, GLenum pname, const GLuint *params);
void glGetTexParameterIivEXT (GLenum target, GLenum pname, GLint *params);
void glGetTexParameterIuivEXT (GLenum target, GLenum pname, GLuint *params);
void glClearColorIiEXT (GLint red, GLint green, GLint blue, GLint alpha);
void glClearColorIuiEXT (GLuint red, GLuint green, GLuint blue, GLuint alpha);
/* GL_GREMEDY_frame_terminator */
void glFrameTerminatorGREMEDY ();
/* GL_NV_conditional_render */
void glBeginConditionalRenderNV (GLuint id, GLenum mode);
void glEndConditionalRenderNV ();
/* GL_NV_present_video */
void glPresentFrameKeyedNV (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLuint key0, GLenum target1, GLuint fill1, GLuint key1);
void glPresentFrameDualFillNV (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLenum target1, GLuint fill1, GLenum target2, GLuint fill2, GLenum target3, GLuint fill3);
void glGetVideoivNV (GLuint video_slot, GLenum pname, GLint *params);
void glGetVideouivNV (GLuint video_slot, GLenum pname, GLuint *params);
void glGetVideoi64vNV (GLuint video_slot, GLenum pname, GLint64EXT *params);
void glGetVideoui64vNV (GLuint video_slot, GLenum pname, GLuint64EXT *params);
/* GL_EXT_transform_feedback */
void glBeginTransformFeedbackEXT (GLenum primitiveMode);
void glEndTransformFeedbackEXT ();
void glBindBufferRangeEXT (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glBindBufferOffsetEXT (GLenum target, GLuint index, GLuint buffer, GLintptr offset);
void glBindBufferBaseEXT (GLenum target, GLuint index, GLuint buffer);
void glTransformFeedbackVaryingsEXT (GLuint program, GLsizei count, const GLchar* *varyings, GLenum bufferMode);
void glGetTransformFeedbackVaryingEXT (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name);
/* GL_EXT_direct_state_access */
void glClientAttribDefaultEXT (GLbitfield mask);
void glPushClientAttribDefaultEXT (GLbitfield mask);
void glMatrixLoadfEXT (GLenum mode, const GLfloat *m);
void glMatrixLoaddEXT (GLenum mode, const GLdouble *m);
void glMatrixMultfEXT (GLenum mode, const GLfloat *m);
void glMatrixMultdEXT (GLenum mode, const GLdouble *m);
void glMatrixLoadIdentityEXT (GLenum mode);
void glMatrixRotatefEXT (GLenum mode, GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void glMatrixRotatedEXT (GLenum mode, GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void glMatrixScalefEXT (GLenum mode, GLfloat x, GLfloat y, GLfloat z);
void glMatrixScaledEXT (GLenum mode, GLdouble x, GLdouble y, GLdouble z);
void glMatrixTranslatefEXT (GLenum mode, GLfloat x, GLfloat y, GLfloat z);
void glMatrixTranslatedEXT (GLenum mode, GLdouble x, GLdouble y, GLdouble z);
void glMatrixFrustumEXT (GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void glMatrixOrthoEXT (GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void glMatrixPopEXT (GLenum mode);
void glMatrixPushEXT (GLenum mode);
void glMatrixLoadTransposefEXT (GLenum mode, const GLfloat *m);
void glMatrixLoadTransposedEXT (GLenum mode, const GLdouble *m);
void glMatrixMultTransposefEXT (GLenum mode, const GLfloat *m);
void glMatrixMultTransposedEXT (GLenum mode, const GLdouble *m);
void glTextureParameterfEXT (GLuint texture, GLenum target, GLenum pname, GLfloat param);
void glTextureParameterfvEXT (GLuint texture, GLenum target, GLenum pname, const GLfloat *params);
void glTextureParameteriEXT (GLuint texture, GLenum target, GLenum pname, GLint param);
void glTextureParameterivEXT (GLuint texture, GLenum target, GLenum pname, const GLint *params);
void glTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
void glTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
void glTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid *pixels);
void glTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels);
void glCopyTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glGetTextureImageEXT (GLuint texture, GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels);
void glGetTextureParameterfvEXT (GLuint texture, GLenum target, GLenum pname, GLfloat *params);
void glGetTextureParameterivEXT (GLuint texture, GLenum target, GLenum pname, GLint *params);
void glGetTextureLevelParameterfvEXT (GLuint texture, GLenum target, GLint level, GLenum pname, GLfloat *params);
void glGetTextureLevelParameterivEXT (GLuint texture, GLenum target, GLint level, GLenum pname, GLint *params);
void glTextureImage3DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
void glTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels);
void glCopyTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glMultiTexParameterfEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat param);
void glMultiTexParameterfvEXT (GLenum texunit, GLenum target, GLenum pname, const GLfloat *params);
void glMultiTexParameteriEXT (GLenum texunit, GLenum target, GLenum pname, GLint param);
void glMultiTexParameterivEXT (GLenum texunit, GLenum target, GLenum pname, const GLint *params);
void glMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
void glMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
void glMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid *pixels);
void glMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels);
void glCopyMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glGetMultiTexImageEXT (GLenum texunit, GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels);
void glGetMultiTexParameterfvEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat *params);
void glGetMultiTexParameterivEXT (GLenum texunit, GLenum target, GLenum pname, GLint *params);
void glGetMultiTexLevelParameterfvEXT (GLenum texunit, GLenum target, GLint level, GLenum pname, GLfloat *params);
void glGetMultiTexLevelParameterivEXT (GLenum texunit, GLenum target, GLint level, GLenum pname, GLint *params);
void glMultiTexImage3DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
void glMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels);
void glCopyMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glBindMultiTextureEXT (GLenum texunit, GLenum target, GLuint texture);
void glEnableClientStateIndexedEXT (GLenum array, GLuint index);
void glDisableClientStateIndexedEXT (GLenum array, GLuint index);
void glMultiTexCoordPointerEXT (GLenum texunit, GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
void glMultiTexEnvfEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat param);
void glMultiTexEnvfvEXT (GLenum texunit, GLenum target, GLenum pname, const GLfloat *params);
void glMultiTexEnviEXT (GLenum texunit, GLenum target, GLenum pname, GLint param);
void glMultiTexEnvivEXT (GLenum texunit, GLenum target, GLenum pname, const GLint *params);
void glMultiTexGendEXT (GLenum texunit, GLenum coord, GLenum pname, GLdouble param);
void glMultiTexGendvEXT (GLenum texunit, GLenum coord, GLenum pname, const GLdouble *params);
void glMultiTexGenfEXT (GLenum texunit, GLenum coord, GLenum pname, GLfloat param);
void glMultiTexGenfvEXT (GLenum texunit, GLenum coord, GLenum pname, const GLfloat *params);
void glMultiTexGeniEXT (GLenum texunit, GLenum coord, GLenum pname, GLint param);
void glMultiTexGenivEXT (GLenum texunit, GLenum coord, GLenum pname, const GLint *params);
void glGetMultiTexEnvfvEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat *params);
void glGetMultiTexEnvivEXT (GLenum texunit, GLenum target, GLenum pname, GLint *params);
void glGetMultiTexGendvEXT (GLenum texunit, GLenum coord, GLenum pname, GLdouble *params);
void glGetMultiTexGenfvEXT (GLenum texunit, GLenum coord, GLenum pname, GLfloat *params);
void glGetMultiTexGenivEXT (GLenum texunit, GLenum coord, GLenum pname, GLint *params);
void glGetFloatIndexedvEXT (GLenum target, GLuint index, GLfloat *data);
void glGetDoubleIndexedvEXT (GLenum target, GLuint index, GLdouble *data);
void glGetPointerIndexedvEXT (GLenum target, GLuint index, GLvoid* *data);
void glCompressedTextureImage3DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *bits);
void glCompressedTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *bits);
void glCompressedTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *bits);
void glCompressedTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *bits);
void glCompressedTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *bits);
void glCompressedTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *bits);
void glGetCompressedTextureImageEXT (GLuint texture, GLenum target, GLint lod, GLvoid *img);
void glCompressedMultiTexImage3DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *bits);
void glCompressedMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *bits);
void glCompressedMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *bits);
void glCompressedMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *bits);
void glCompressedMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *bits);
void glCompressedMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *bits);
void glGetCompressedMultiTexImageEXT (GLenum texunit, GLenum target, GLint lod, GLvoid *img);
void glNamedProgramStringEXT (GLuint program, GLenum target, GLenum format, GLsizei len, const GLvoid *string);
void glNamedProgramLocalParameter4dEXT (GLuint program, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glNamedProgramLocalParameter4dvEXT (GLuint program, GLenum target, GLuint index, const GLdouble *params);
void glNamedProgramLocalParameter4fEXT (GLuint program, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glNamedProgramLocalParameter4fvEXT (GLuint program, GLenum target, GLuint index, const GLfloat *params);
void glGetNamedProgramLocalParameterdvEXT (GLuint program, GLenum target, GLuint index, GLdouble *params);
void glGetNamedProgramLocalParameterfvEXT (GLuint program, GLenum target, GLuint index, GLfloat *params);
void glGetNamedProgramivEXT (GLuint program, GLenum target, GLenum pname, GLint *params);
void glGetNamedProgramStringEXT (GLuint program, GLenum target, GLenum pname, GLvoid *string);
void glNamedProgramLocalParameters4fvEXT (GLuint program, GLenum target, GLuint index, GLsizei count, const GLfloat *params);
void glNamedProgramLocalParameterI4iEXT (GLuint program, GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
void glNamedProgramLocalParameterI4ivEXT (GLuint program, GLenum target, GLuint index, const GLint *params);
void glNamedProgramLocalParametersI4ivEXT (GLuint program, GLenum target, GLuint index, GLsizei count, const GLint *params);
void glNamedProgramLocalParameterI4uiEXT (GLuint program, GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glNamedProgramLocalParameterI4uivEXT (GLuint program, GLenum target, GLuint index, const GLuint *params);
void glNamedProgramLocalParametersI4uivEXT (GLuint program, GLenum target, GLuint index, GLsizei count, const GLuint *params);
void glGetNamedProgramLocalParameterIivEXT (GLuint program, GLenum target, GLuint index, GLint *params);
void glGetNamedProgramLocalParameterIuivEXT (GLuint program, GLenum target, GLuint index, GLuint *params);
void glTextureParameterIivEXT (GLuint texture, GLenum target, GLenum pname, const GLint *params);
void glTextureParameterIuivEXT (GLuint texture, GLenum target, GLenum pname, const GLuint *params);
void glGetTextureParameterIivEXT (GLuint texture, GLenum target, GLenum pname, GLint *params);
void glGetTextureParameterIuivEXT (GLuint texture, GLenum target, GLenum pname, GLuint *params);
void glMultiTexParameterIivEXT (GLenum texunit, GLenum target, GLenum pname, const GLint *params);
void glMultiTexParameterIuivEXT (GLenum texunit, GLenum target, GLenum pname, const GLuint *params);
void glGetMultiTexParameterIivEXT (GLenum texunit, GLenum target, GLenum pname, GLint *params);
void glGetMultiTexParameterIuivEXT (GLenum texunit, GLenum target, GLenum pname, GLuint *params);
void glProgramUniform1fEXT (GLuint program, GLint location, GLfloat v0);
void glProgramUniform2fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1);
void glProgramUniform3fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void glProgramUniform4fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void glProgramUniform1iEXT (GLuint program, GLint location, GLint v0);
void glProgramUniform2iEXT (GLuint program, GLint location, GLint v0, GLint v1);
void glProgramUniform3iEXT (GLuint program, GLint location, GLint v0, GLint v1, GLint v2);
void glProgramUniform4iEXT (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void glProgramUniform1fvEXT (GLuint program, GLint location, GLsizei count, const GLfloat *value);
void glProgramUniform2fvEXT (GLuint program, GLint location, GLsizei count, const GLfloat *value);
void glProgramUniform3fvEXT (GLuint program, GLint location, GLsizei count, const GLfloat *value);
void glProgramUniform4fvEXT (GLuint program, GLint location, GLsizei count, const GLfloat *value);
void glProgramUniform1ivEXT (GLuint program, GLint location, GLsizei count, const GLint *value);
void glProgramUniform2ivEXT (GLuint program, GLint location, GLsizei count, const GLint *value);
void glProgramUniform3ivEXT (GLuint program, GLint location, GLsizei count, const GLint *value);
void glProgramUniform4ivEXT (GLuint program, GLint location, GLsizei count, const GLint *value);
void glProgramUniformMatrix2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix2x3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix3x2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix2x4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix4x2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix3x4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniformMatrix4x3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glProgramUniform1uiEXT (GLuint program, GLint location, GLuint v0);
void glProgramUniform2uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1);
void glProgramUniform3uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2);
void glProgramUniform4uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void glProgramUniform1uivEXT (GLuint program, GLint location, GLsizei count, const GLuint *value);
void glProgramUniform2uivEXT (GLuint program, GLint location, GLsizei count, const GLuint *value);
void glProgramUniform3uivEXT (GLuint program, GLint location, GLsizei count, const GLuint *value);
void glProgramUniform4uivEXT (GLuint program, GLint location, GLsizei count, const GLuint *value);
void glNamedBufferDataEXT (GLuint buffer, GLsizeiptr size, const GLvoid *data, GLenum usage);
void glNamedBufferSubDataEXT (GLuint buffer, GLintptr offset, GLsizeiptr size, const GLvoid *data);
GLvoid* glMapNamedBufferEXT (GLuint buffer, GLenum access);
GLboolean glUnmapNamedBufferEXT (GLuint buffer);
GLvoid* glMapNamedBufferRangeEXT (GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access);
void glFlushMappedNamedBufferRangeEXT (GLuint buffer, GLintptr offset, GLsizeiptr length);
void glNamedCopyBufferSubDataEXT (GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
void glGetNamedBufferParameterivEXT (GLuint buffer, GLenum pname, GLint *params);
void glGetNamedBufferPointervEXT (GLuint buffer, GLenum pname, GLvoid* *params);
void glGetNamedBufferSubDataEXT (GLuint buffer, GLintptr offset, GLsizeiptr size, GLvoid *data);
void glTextureBufferEXT (GLuint texture, GLenum target, GLenum internalformat, GLuint buffer);
void glMultiTexBufferEXT (GLenum texunit, GLenum target, GLenum internalformat, GLuint buffer);
void glNamedRenderbufferStorageEXT (GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height);
void glGetNamedRenderbufferParameterivEXT (GLuint renderbuffer, GLenum pname, GLint *params);
GLenum glCheckNamedFramebufferStatusEXT (GLuint framebuffer, GLenum target);
void glNamedFramebufferTexture1DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glNamedFramebufferTexture2DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glNamedFramebufferTexture3DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
void glNamedFramebufferRenderbufferEXT (GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glGetNamedFramebufferAttachmentParameterivEXT (GLuint framebuffer, GLenum attachment, GLenum pname, GLint *params);
void glGenerateTextureMipmapEXT (GLuint texture, GLenum target);
void glGenerateMultiTexMipmapEXT (GLenum texunit, GLenum target);
void glFramebufferDrawBufferEXT (GLuint framebuffer, GLenum mode);
void glFramebufferDrawBuffersEXT (GLuint framebuffer, GLsizei n, const GLenum *bufs);
void glFramebufferReadBufferEXT (GLuint framebuffer, GLenum mode);
void glGetFramebufferParameterivEXT (GLuint framebuffer, GLenum pname, GLint *params);
void glNamedRenderbufferStorageMultisampleEXT (GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
void glNamedRenderbufferStorageMultisampleCoverageEXT (GLuint renderbuffer, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height);
void glNamedFramebufferTextureEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level);
void glNamedFramebufferTextureLayerEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer);
void glNamedFramebufferTextureFaceEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLenum face);
void glTextureRenderbufferEXT (GLuint texture, GLenum target, GLuint renderbuffer);
void glMultiTexRenderbufferEXT (GLenum texunit, GLenum target, GLuint renderbuffer);
void glProgramUniform1dEXT (GLuint program, GLint location, GLdouble x);
void glProgramUniform2dEXT (GLuint program, GLint location, GLdouble x, GLdouble y);
void glProgramUniform3dEXT (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z);
void glProgramUniform4dEXT (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramUniform1dvEXT (GLuint program, GLint location, GLsizei count, const GLdouble *value);
void glProgramUniform2dvEXT (GLuint program, GLint location, GLsizei count, const GLdouble *value);
void glProgramUniform3dvEXT (GLuint program, GLint location, GLsizei count, const GLdouble *value);
void glProgramUniform4dvEXT (GLuint program, GLint location, GLsizei count, const GLdouble *value);
void glProgramUniformMatrix2dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix3dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix4dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix2x3dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix2x4dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix3x2dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix3x4dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix4x2dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void glProgramUniformMatrix4x3dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
/* GL_EXT_vertex_array_bgra */
/* GL_EXT_texture_swizzle */
/* GL_NV_explicit_multisample */
void glGetMultisamplefvNV (GLenum pname, GLuint index, GLfloat *val);
void glSampleMaskIndexedNV (GLuint index, GLbitfield mask);
void glTexRenderbufferNV (GLenum target, GLuint renderbuffer);
/* GL_NV_transform_feedback2 */
void glBindTransformFeedbackNV (GLenum target, GLuint id);
void glDeleteTransformFeedbacksNV (GLsizei n, const GLuint *ids);
void glGenTransformFeedbacksNV (GLsizei n, GLuint *ids);
GLboolean glIsTransformFeedbackNV (GLuint id);
void glPauseTransformFeedbackNV ();
void glResumeTransformFeedbackNV ();
void glDrawTransformFeedbackNV (GLenum mode, GLuint id);
/* GL_ATI_meminfo */
/* GL_AMD_performance_monitor */
void glGetPerfMonitorGroupsAMD (GLint *numGroups, GLsizei groupsSize, GLuint *groups);
void glGetPerfMonitorCountersAMD (GLuint group, GLint *numCounters, GLint *maxActiveCounters, GLsizei counterSize, GLuint *counters);
void glGetPerfMonitorGroupStringAMD (GLuint group, GLsizei bufSize, GLsizei *length, GLchar *groupString);
void glGetPerfMonitorCounterStringAMD (GLuint group, GLuint counter, GLsizei bufSize, GLsizei *length, GLchar *counterString);
void glGetPerfMonitorCounterInfoAMD (GLuint group, GLuint counter, GLenum pname, GLvoid *data);
void glGenPerfMonitorsAMD (GLsizei n, GLuint *monitors);
void glDeletePerfMonitorsAMD (GLsizei n, GLuint *monitors);
void glSelectPerfMonitorCountersAMD (GLuint monitor, GLboolean enable, GLuint group, GLint numCounters, GLuint *counterList);
void glBeginPerfMonitorAMD (GLuint monitor);
void glEndPerfMonitorAMD (GLuint monitor);
void glGetPerfMonitorCounterDataAMD (GLuint monitor, GLenum pname, GLsizei dataSize, GLuint *data, GLint *bytesWritten);
/* GL_AMD_texture_texture4 */
/* GL_AMD_vertex_shader_tesselator */
void glTessellationFactorAMD (GLfloat factor);
void glTessellationModeAMD (GLenum mode);
/* GL_EXT_provoking_vertex */
void glProvokingVertexEXT (GLenum mode);
/* GL_EXT_texture_snorm */
/* GL_AMD_draw_buffers_blend */
void glBlendFuncIndexedAMD (GLuint buf, GLenum src, GLenum dst);
void glBlendFuncSeparateIndexedAMD (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
void glBlendEquationIndexedAMD (GLuint buf, GLenum mode);
void glBlendEquationSeparateIndexedAMD (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
/* GL_APPLE_texture_range */
void glTextureRangeAPPLE (GLenum target, GLsizei length, const GLvoid *pointer);
void glGetTexParameterPointervAPPLE (GLenum target, GLenum pname, GLvoid* *params);
/* GL_APPLE_float_pixels */
/* GL_APPLE_vertex_program_evaluators */
void glEnableVertexAttribAPPLE (GLuint index, GLenum pname);
void glDisableVertexAttribAPPLE (GLuint index, GLenum pname);
GLboolean glIsVertexAttribEnabledAPPLE (GLuint index, GLenum pname);
void glMapVertexAttrib1dAPPLE (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points);
void glMapVertexAttrib1fAPPLE (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points);
void glMapVertexAttrib2dAPPLE (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points);
void glMapVertexAttrib2fAPPLE (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points);
/* GL_APPLE_aux_depth_stencil */
/* GL_APPLE_object_purgeable */
GLenum glObjectPurgeableAPPLE (GLenum objectType, GLuint name, GLenum option);
GLenum glObjectUnpurgeableAPPLE (GLenum objectType, GLuint name, GLenum option);
void glGetObjectParameterivAPPLE (GLenum objectType, GLuint name, GLenum pname, GLint *params);
/* GL_APPLE_row_bytes */
/* GL_APPLE_rgb_422 */
/* GL_NV_video_capture */
void glBeginVideoCaptureNV (GLuint video_capture_slot);
void glBindVideoCaptureStreamBufferNV (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLintptrARB offset);
void glBindVideoCaptureStreamTextureNV (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLenum target, GLuint texture);
void glEndVideoCaptureNV (GLuint video_capture_slot);
void glGetVideoCaptureivNV (GLuint video_capture_slot, GLenum pname, GLint *params);
void glGetVideoCaptureStreamivNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLint *params);
void glGetVideoCaptureStreamfvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat *params);
void glGetVideoCaptureStreamdvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble *params);
GLenum glVideoCaptureNV (GLuint video_capture_slot, GLuint *sequence_num, GLuint64EXT *capture_time);
void glVideoCaptureStreamParameterivNV (GLuint video_capture_slot, GLuint stream, GLenum pname, const GLint *params);
void glVideoCaptureStreamParameterfvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, const GLfloat *params);
void glVideoCaptureStreamParameterdvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, const GLdouble *params);
/* GL_NV_copy_image */
void glCopyImageSubDataNV (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth);
/* GL_EXT_separate_shader_objects */
void glUseShaderProgramEXT (GLenum type, GLuint program);
void glActiveProgramEXT (GLuint program);
GLuint glCreateShaderProgramEXT (GLenum type, const GLchar *string);
/* GL_NV_parameter_buffer_object2 */
/* GL_NV_shader_buffer_load */
void glMakeBufferResidentNV (GLenum target, GLenum access);
void glMakeBufferNonResidentNV (GLenum target);
GLboolean glIsBufferResidentNV (GLenum target);
void glMakeNamedBufferResidentNV (GLuint buffer, GLenum access);
void glMakeNamedBufferNonResidentNV (GLuint buffer);
GLboolean glIsNamedBufferResidentNV (GLuint buffer);
void glGetBufferParameterui64vNV (GLenum target, GLenum pname, GLuint64EXT *params);
void glGetNamedBufferParameterui64vNV (GLuint buffer, GLenum pname, GLuint64EXT *params);
void glGetIntegerui64vNV (GLenum value, GLuint64EXT *result);
void glUniformui64NV (GLint location, GLuint64EXT value);
void glUniformui64vNV (GLint location, GLsizei count, const GLuint64EXT *value);
void glGetUniformui64vNV (GLuint program, GLint location, GLuint64EXT *params);
void glProgramUniformui64NV (GLuint program, GLint location, GLuint64EXT value);
void glProgramUniformui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT *value);
/* GL_NV_vertex_buffer_unified_memory */
void glBufferAddressRangeNV (GLenum pname, GLuint index, GLuint64EXT address, GLsizeiptr length);
void glVertexFormatNV (GLint size, GLenum type, GLsizei stride);
void glNormalFormatNV (GLenum type, GLsizei stride);
void glColorFormatNV (GLint size, GLenum type, GLsizei stride);
void glIndexFormatNV (GLenum type, GLsizei stride);
void glTexCoordFormatNV (GLint size, GLenum type, GLsizei stride);
void glEdgeFlagFormatNV (GLsizei stride);
void glSecondaryColorFormatNV (GLint size, GLenum type, GLsizei stride);
void glFogCoordFormatNV (GLenum type, GLsizei stride);
void glVertexAttribFormatNV (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride);
void glVertexAttribIFormatNV (GLuint index, GLint size, GLenum type, GLsizei stride);
void glGetIntegerui64i_vNV (GLenum value, GLuint index, GLuint64EXT *result);
/* GL_NV_texture_barrier */
void glTextureBarrierNV ();
/* GL_AMD_shader_stencil_export */
/* GL_AMD_seamless_cubemap_per_texture */
/* GL_AMD_conservative_depth */
/* GL_EXT_shader_image_load_store */
void glBindImageTextureEXT (GLuint index, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLint format);
void glMemoryBarrierEXT (GLbitfield barriers);
/* GL_EXT_vertex_attrib_64bit */
void glVertexAttribL1dEXT (GLuint index, GLdouble x);
void glVertexAttribL2dEXT (GLuint index, GLdouble x, GLdouble y);
void glVertexAttribL3dEXT (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttribL4dEXT (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttribL1dvEXT (GLuint index, const GLdouble *v);
void glVertexAttribL2dvEXT (GLuint index, const GLdouble *v);
void glVertexAttribL3dvEXT (GLuint index, const GLdouble *v);
void glVertexAttribL4dvEXT (GLuint index, const GLdouble *v);
void glVertexAttribLPointerEXT (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
void glGetVertexAttribLdvEXT (GLuint index, GLenum pname, GLdouble *params);
void glVertexArrayVertexAttribLOffsetEXT (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset);
/* GL_NV_gpu_program5 */
void glProgramSubroutineParametersuivNV (GLenum target, GLsizei count, const GLuint *params);
void glGetProgramSubroutineParameteruivNV (GLenum target, GLuint index, GLuint *param);
/* GL_NV_gpu_shader5 */
void glUniform1i64NV (GLint location, GLint64EXT x);
void glUniform2i64NV (GLint location, GLint64EXT x, GLint64EXT y);
void glUniform3i64NV (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z);
void glUniform4i64NV (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
void glUniform1i64vNV (GLint location, GLsizei count, const GLint64EXT *value);
void glUniform2i64vNV (GLint location, GLsizei count, const GLint64EXT *value);
void glUniform3i64vNV (GLint location, GLsizei count, const GLint64EXT *value);
void glUniform4i64vNV (GLint location, GLsizei count, const GLint64EXT *value);
void glUniform1ui64NV (GLint location, GLuint64EXT x);
void glUniform2ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y);
void glUniform3ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
void glUniform4ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
void glUniform1ui64vNV (GLint location, GLsizei count, const GLuint64EXT *value);
void glUniform2ui64vNV (GLint location, GLsizei count, const GLuint64EXT *value);
void glUniform3ui64vNV (GLint location, GLsizei count, const GLuint64EXT *value);
void glUniform4ui64vNV (GLint location, GLsizei count, const GLuint64EXT *value);
void glGetUniformi64vNV (GLuint program, GLint location, GLint64EXT *params);
void glProgramUniform1i64NV (GLuint program, GLint location, GLint64EXT x);
void glProgramUniform2i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y);
void glProgramUniform3i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z);
void glProgramUniform4i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
void glProgramUniform1i64vNV (GLuint program, GLint location, GLsizei count, const GLint64EXT *value);
void glProgramUniform2i64vNV (GLuint program, GLint location, GLsizei count, const GLint64EXT *value);
void glProgramUniform3i64vNV (GLuint program, GLint location, GLsizei count, const GLint64EXT *value);
void glProgramUniform4i64vNV (GLuint program, GLint location, GLsizei count, const GLint64EXT *value);
void glProgramUniform1ui64NV (GLuint program, GLint location, GLuint64EXT x);
void glProgramUniform2ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y);
void glProgramUniform3ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
void glProgramUniform4ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
void glProgramUniform1ui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT *value);
void glProgramUniform2ui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT *value);
void glProgramUniform3ui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT *value);
void glProgramUniform4ui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT *value);
/* GL_NV_shader_buffer_store */
/* GL_NV_tessellation_program5 */
/* GL_NV_vertex_attrib_integer_64bit */
void glVertexAttribL1i64NV (GLuint index, GLint64EXT x);
void glVertexAttribL2i64NV (GLuint index, GLint64EXT x, GLint64EXT y);
void glVertexAttribL3i64NV (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z);
void glVertexAttribL4i64NV (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
void glVertexAttribL1i64vNV (GLuint index, const GLint64EXT *v);
void glVertexAttribL2i64vNV (GLuint index, const GLint64EXT *v);
void glVertexAttribL3i64vNV (GLuint index, const GLint64EXT *v);
void glVertexAttribL4i64vNV (GLuint index, const GLint64EXT *v);
void glVertexAttribL1ui64NV (GLuint index, GLuint64EXT x);
void glVertexAttribL2ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y);
void glVertexAttribL3ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
void glVertexAttribL4ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
void glVertexAttribL1ui64vNV (GLuint index, const GLuint64EXT *v);
void glVertexAttribL2ui64vNV (GLuint index, const GLuint64EXT *v);
void glVertexAttribL3ui64vNV (GLuint index, const GLuint64EXT *v);
void glVertexAttribL4ui64vNV (GLuint index, const GLuint64EXT *v);
void glGetVertexAttribLi64vNV (GLuint index, GLenum pname, GLint64EXT *params);
void glGetVertexAttribLui64vNV (GLuint index, GLenum pname, GLuint64EXT *params);
void glVertexAttribLFormatNV (GLuint index, GLint size, GLenum type, GLsizei stride);
/* GL_NV_multisample_coverage */
/* GL_AMD_name_gen_delete */
void glGenNamesAMD (GLenum identifier, GLuint num, GLuint *names);
void glDeleteNamesAMD (GLenum identifier, GLuint num, const GLuint *names);
GLboolean glIsNameAMD (GLenum identifier, GLuint name);
/* GL_AMD_debug_output */
void glDebugMessageEnableAMD (GLenum category, GLenum severity, GLsizei count, const GLuint *ids, GLboolean enabled);
void glDebugMessageInsertAMD (GLenum category, GLenum severity, GLuint id, GLsizei length, const GLchar *buf);
void glDebugMessageCallbackAMD (GLDEBUGPROCAMD callback, GLvoid *userParam);
GLuint glGetDebugMessageLogAMD (GLuint count, GLsizei bufsize, GLenum *categories, GLuint *severities, GLuint *ids, GLsizei *lengths, GLchar *message);
/* GL_NV_vdpau_interop */
void glVDPAUInitNV (const GLvoid *vdpDevice, const GLvoid *getProcAddress);
void glVDPAUFiniNV ();
GLvdpauSurfaceNV glVDPAURegisterVideoSurfaceNV (const GLvoid *vdpSurface, GLenum target, GLsizei numTextureNames, const GLuint *textureNames);
GLvdpauSurfaceNV glVDPAURegisterOutputSurfaceNV (GLvoid *vdpSurface, GLenum target, GLsizei numTextureNames, const GLuint *textureNames);
void glVDPAUIsSurfaceNV (GLvdpauSurfaceNV surface);
void glVDPAUUnregisterSurfaceNV (GLvdpauSurfaceNV surface);
void glVDPAUGetSurfaceivNV (GLvdpauSurfaceNV surface, GLenum pname, GLsizei bufSize, GLsizei *length, GLint *values);
void glVDPAUSurfaceAccessNV (GLvdpauSurfaceNV surface, GLenum access);
void glVDPAUMapSurfacesNV (GLsizei numSurfaces, const GLvdpauSurfaceNV *surfaces);
void glVDPAUUnmapSurfacesNV (GLsizei numSurface, const GLvdpauSurfaceNV *surfaces);
/* GL_AMD_transform_feedback3_lines_triangles */
/* GL_AMD_depth_clamp_separate */
/* GL_EXT_texture_sRGB_decode */
/* GL_NV_texture_multisample */
void glTexImage2DMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
void glTexImage3DMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
void glTextureImage2DMultisampleNV (GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
void glTextureImage3DMultisampleNV (GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
void glTextureImage2DMultisampleCoverageNV (GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
void glTextureImage3DMultisampleCoverageNV (GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
/* GL_AMD_blend_minmax_factor */
/* GL_AMD_sample_positions */
void glSetMultisamplefvAMD (GLenum pname, GLuint index, const GLfloat *val);
/* GL_EXT_x11_sync_object */
GLsync glImportSyncEXT (GLenum external_sync_type, GLintptr external_sync, GLbitfield flags);
/* GL_AMD_multi_draw_indirect */
void glMultiDrawArraysIndirectAMD (GLenum mode, const GLvoid *indirect, GLsizei primcount, GLsizei stride);
void glMultiDrawElementsIndirectAMD (GLenum mode, GLenum type, const GLvoid *indirect, GLsizei primcount, GLsizei stride);
/* GL_EXT_framebuffer_multisample_blit_scaled */
/* GL_NV_path_rendering */
GLuint glGenPathsNV (GLsizei range);
void glDeletePathsNV (GLuint path, GLsizei range);
GLboolean glIsPathNV (GLuint path);
void glPathCommandsNV (GLuint path, GLsizei numCommands, const GLubyte *commands, GLsizei numCoords, GLenum coordType, const GLvoid *coords);
void glPathCoordsNV (GLuint path, GLsizei numCoords, GLenum coordType, const GLvoid *coords);
void glPathSubCommandsNV (GLuint path, GLsizei commandStart, GLsizei commandsToDelete, GLsizei numCommands, const GLubyte *commands, GLsizei numCoords, GLenum coordType, const GLvoid *coords);
void glPathSubCoordsNV (GLuint path, GLsizei coordStart, GLsizei numCoords, GLenum coordType, const GLvoid *coords);
void glPathStringNV (GLuint path, GLenum format, GLsizei length, const GLvoid *pathString);
void glPathGlyphsNV (GLuint firstPathName, GLenum fontTarget, const GLvoid *fontName, GLbitfield fontStyle, GLsizei numGlyphs, GLenum type, const GLvoid *charcodes, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale);
void glPathGlyphRangeNV (GLuint firstPathName, GLenum fontTarget, const GLvoid *fontName, GLbitfield fontStyle, GLuint firstGlyph, GLsizei numGlyphs, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale);
void glWeightPathsNV (GLuint resultPath, GLsizei numPaths, const GLuint *paths, const GLfloat *weights);
void glCopyPathNV (GLuint resultPath, GLuint srcPath);
void glInterpolatePathsNV (GLuint resultPath, GLuint pathA, GLuint pathB, GLfloat weight);
void glTransformPathNV (GLuint resultPath, GLuint srcPath, GLenum transformType, const GLfloat *transformValues);
void glPathParameterivNV (GLuint path, GLenum pname, const GLint *value);
void glPathParameteriNV (GLuint path, GLenum pname, GLint value);
void glPathParameterfvNV (GLuint path, GLenum pname, const GLfloat *value);
void glPathParameterfNV (GLuint path, GLenum pname, GLfloat value);
void glPathDashArrayNV (GLuint path, GLsizei dashCount, const GLfloat *dashArray);
void glPathStencilFuncNV (GLenum func, GLint refr, GLuint mask);
void glPathStencilDepthOffsetNV (GLfloat factor, GLfloat units);
void glStencilFillPathNV (GLuint path, GLenum fillMode, GLuint mask);
void glStencilStrokePathNV (GLuint path, GLint reference, GLuint mask);
void glStencilFillPathInstancedNV (GLsizei numPaths, GLenum pathNameType, const GLvoid *paths, GLuint pathBase, GLenum fillMode, GLuint mask, GLenum transformType, const GLfloat *transformValues);
void glStencilStrokePathInstancedNV (GLsizei numPaths, GLenum pathNameType, const GLvoid *paths, GLuint pathBase, GLint reference, GLuint mask, GLenum transformType, const GLfloat *transformValues);
void glPathCoverDepthFuncNV (GLenum func);
void glPathColorGenNV (GLenum color, GLenum genMode, GLenum colorFormat, const GLfloat *coeffs);
void glPathTexGenNV (GLenum texCoordSet, GLenum genMode, GLint components, const GLfloat *coeffs);
void glPathFogGenNV (GLenum genMode);
void glCoverFillPathNV (GLuint path, GLenum coverMode);
void glCoverStrokePathNV (GLuint path, GLenum coverMode);
void glCoverFillPathInstancedNV (GLsizei numPaths, GLenum pathNameType, const GLvoid *paths, GLuint pathBase, GLenum coverMode, GLenum transformType, const GLfloat *transformValues);
void glCoverStrokePathInstancedNV (GLsizei numPaths, GLenum pathNameType, const GLvoid *paths, GLuint pathBase, GLenum coverMode, GLenum transformType, const GLfloat *transformValues);
void glGetPathParameterivNV (GLuint path, GLenum pname, GLint *value);
void glGetPathParameterfvNV (GLuint path, GLenum pname, GLfloat *value);
void glGetPathCommandsNV (GLuint path, GLubyte *commands);
void glGetPathCoordsNV (GLuint path, GLfloat *coords);
void glGetPathDashArrayNV (GLuint path, GLfloat *dashArray);
void glGetPathMetricsNV (GLbitfield metricQueryMask, GLsizei numPaths, GLenum pathNameType, const GLvoid *paths, GLuint pathBase, GLsizei stride, GLfloat *metrics);
void glGetPathMetricRangeNV (GLbitfield metricQueryMask, GLuint firstPathName, GLsizei numPaths, GLsizei stride, GLfloat *metrics);
void glGetPathSpacingNV (GLenum pathListMode, GLsizei numPaths, GLenum pathNameType, const GLvoid *paths, GLuint pathBase, GLfloat advanceScale, GLfloat kerningScale, GLenum transformType, GLfloat *returnedSpacing);
void glGetPathColorGenivNV (GLenum color, GLenum pname, GLint *value);
void glGetPathColorGenfvNV (GLenum color, GLenum pname, GLfloat *value);
void glGetPathTexGenivNV (GLenum texCoordSet, GLenum pname, GLint *value);
void glGetPathTexGenfvNV (GLenum texCoordSet, GLenum pname, GLfloat *value);
GLboolean glIsPointInFillPathNV (GLuint path, GLuint mask, GLfloat x, GLfloat y);
GLboolean glIsPointInStrokePathNV (GLuint path, GLfloat x, GLfloat y);
GLfloat glGetPathLengthNV (GLuint path, GLsizei startSegment, GLsizei numSegments);
GLboolean glPointAlongPathNV (GLuint path, GLsizei startSegment, GLsizei numSegments, GLfloat distance, GLfloat *x, GLfloat *y, GLfloat *tangentX, GLfloat *tangentY);
/* GL_AMD_pinned_memory */
/* GL_AMD_stencil_operation_extended */
void glStencilOpValueAMD (GLenum face, GLuint value);
/* GL_AMD_vertex_shader_viewport_index */
/* GL_AMD_vertex_shader_layer */
/* GL_NV_bindless_texture */
GLuint64 glGetTextureHandleNV (GLuint texture);
GLuint64 glGetTextureSamplerHandleNV (GLuint texture, GLuint sampler);
void glMakeTextureHandleResidentNV (GLuint64 handle);
void glMakeTextureHandleNonResidentNV (GLuint64 handle);
GLuint64 glGetImageHandleNV (GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format);
void glMakeImageHandleResidentNV (GLuint64 handle, GLenum access);
void glMakeImageHandleNonResidentNV (GLuint64 handle);
void glUniformHandleui64NV (GLint location, GLuint64 value);
void glUniformHandleui64vNV (GLint location, GLsizei count, const GLuint64 *value);
void glProgramUniformHandleui64NV (GLuint program, GLint location, GLuint64 value);
void glProgramUniformHandleui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64 *values);
GLboolean glIsTextureHandleResidentNV (GLuint64 handle);
GLboolean glIsImageHandleResidentNV (GLuint64 handle);
/* GL_NV_shader_atomic_float */
/* GL_AMD_query_buffer_object */
/* GL_AMD_sparse_texture */
void glTexStorageSparseAMD (GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags);
void glTextureStorageSparseAMD (GLuint texture, GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags);
