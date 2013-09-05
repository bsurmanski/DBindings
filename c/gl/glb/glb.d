/*
 * glb.h
 * GLB
 * March 01, 2013
 * Brandon Surmanski
 */

module c.gl.glb.glb;

import c.gl.gl;
import c.gl.glext;

public import c.gl.glb.glb_types;
public import c.gl.glb.buffer;
public import c.gl.glb.framebuffer;
public import c.gl.glb.sampler;
public import c.gl.glb.texture;
public import c.gl.glb.shader;
public import c.gl.glb.program;


extern (C):

const(char) *glbTypeString(int type);
int glbStringType(int len, const(char) *str);
int glbTypeSizeof(int type);
int glbTypeLength(int type);
bool glbTypeIsInt(int type);
bool glbTypeIsFloat(int type);
bool glbTypeIsDouble(int type);
bool glbTypeIsUnsigned(int type);
bool glbTypeIsScalar(int type);
bool glbTypeIsVector(int type);
bool glbTypeIsMatrix(int type);
bool glbTypeIsOpaque(int type);

//specific vector types
bool glbTypeIsUIVec(int type);
bool glbTypeIsVec(int type);
bool glbTypeIsDVec(int type);
bool glbTypeIsIVec(int type);
bool glbTypeIsBVec(int type);

int glbTypeToScalar(int type);
int glbTypeToUnsigned(int type);
int glbTypeToSigned(int type);

// features
bool glbCanUseFeature(int feature);

// errors
const(char) *glbErrorString(int error);

///TODO use draw options
enum 
{
    GLB_NO_DRAW_OPTIONS = 0,
    GLB_OPTIONS_RESET   = 1,
    GLB_POLYGON_MODE    = 2,
    GLB_CULL_MODE       = 3,
    GLB_PRIMATIVE_MODE  = 4, ///< uses enum GLBPrimativeTypes
    GLB_FRONT_FACE_MODE = 5, // TODO: create enum
    GLB_LINE_WIDTH      = 6,
    GLB_POINT_SIZE      = 7,
    GLB_PROVOKING_VERTEX = 8, // TODO: create enum
};

///TODO use primative type option
enum 
{
    GLB_POINTS                      = GL_POINTS,
    GLB_LINE_STRIP                  = GL_LINE_STRIP,
    GLB_LINE_LOOP                   = GL_LINE_LOOP,
    GLB_LINES                       = GL_LINES,
    GLB_TRIANGLES                   = GL_TRIANGLES,
    GLB_TRIANGLE_STRIP              = GL_TRIANGLE_STRIP,
    GLB_TRIANGLE_FAN                = GL_TRIANGLE_FAN,
    GLB_LINES_ADJACENCY             = GL_LINES_ADJACENCY,
    GLB_LINE_STRIP_ADJACENCY        = GL_LINE_STRIP_ADJACENCY,
    GLB_TRIANGLES_ADJACENCY         = GL_TRIANGLES_ADJACENCY,
    GLB_TRIANGLE_STRIP_ADJACENCY    = GL_TRIANGLE_STRIP_ADJACENCY,
    GLB_PATCHES                     = GL_PATCHES,
};

enum 
{
    GLB_SUCCESS = 0, ///< guarenteed to be zero. A function completed without error
    GLB_FILE_NOT_FOUND, ///< a file string parameter does not refer to an existing file
    GLB_READ_ERROR,
    GLB_WRITE_ERROR,
    GLB_OUT_OF_MEMORY,
    GLB_INVALID_ARGUMENT,
    GLB_COMPILE_ERROR, ///< a GLSL shader failed to compile.
    GLB_UNKNOWN_ERROR, ///< something strange happened
    GLB_MAP_ERROR, ///< GLB was unable to correctly map or unmap a buffer, due to a GL error
    GLB_UNIMPLEMENTED, ///< a feature is currently not implemented, and may be in the future
    GLB_GL_TOO_OLD, ///< a feature depends on an OpenGL version newer than the one in use
};

enum 
{
    GLB_BOOL    = GL_BOOL,
    GLB_BYTE    = GL_BYTE,
    GLB_SHORT   = GL_SHORT,
    GLB_INT     = GL_INT,
    GLB_FLOAT   = GL_FLOAT,
    GLB_DOUBLE  = GL_DOUBLE,
    GLB_HALF_FLOAT      = GL_HALF_FLOAT,
    GLB_UNSIGNED_BYTE   = GL_UNSIGNED_BYTE,
    GLB_UNSIGNED_SHORT  = GL_UNSIGNED_SHORT,
    GLB_UNSIGNED_INT    = GL_UNSIGNED_INT,
    GLB_UBYTE   = GL_UNSIGNED_BYTE,
    GLB_USHORT  = GL_UNSIGNED_SHORT,
    GLB_UINT    = GL_UNSIGNED_INT
};

enum 
{
    GLB_VEC2    = GL_FLOAT_VEC2,
    GLB_VEC3    = GL_FLOAT_VEC3,
    GLB_VEC4    = GL_FLOAT_VEC4,
    GLB_FLOAT_VEC2    = GL_FLOAT_VEC2,
    GLB_FLOAT_VEC3    = GL_FLOAT_VEC3,
    GLB_FLOAT_VEC4    = GL_FLOAT_VEC4,

    GLB_IVEC2    = GL_INT_VEC2,
    GLB_IVEC3    = GL_INT_VEC3,
    GLB_IVEC4    = GL_INT_VEC4,
    GLB_INT_VEC2 = GL_INT_VEC2,
    GLB_INT_VEC3 = GL_INT_VEC3,
    GLB_INT_VEC4 = GL_INT_VEC4,

    GLB_UIVEC2    = GL_UNSIGNED_INT_VEC2,
    GLB_UIVEC3    = GL_UNSIGNED_INT_VEC3,
    GLB_UIVEC4    = GL_UNSIGNED_INT_VEC4,
    GLB_UNSIGNED_INT_VEC2 = GL_UNSIGNED_INT_VEC2,
    GLB_UNSIGNED_INT_VEC3 = GL_UNSIGNED_INT_VEC3,
    GLB_UNSIGNED_INT_VEC4 = GL_UNSIGNED_INT_VEC4,

    GLB_DVEC2   = GL_DOUBLE_VEC2,
    GLB_DVEC3   = GL_DOUBLE_VEC3,
    GLB_DVEC4   = GL_DOUBLE_VEC4,
    GLB_DOUBLE_VEC2   = GL_DOUBLE_VEC2,
    GLB_DOUBLE_VEC3   = GL_DOUBLE_VEC3,
    GLB_DOUBLE_VEC4   = GL_DOUBLE_VEC4,

    GLB_BVEC2 = GL_BOOL_VEC2,
    GLB_BVEC3 = GL_BOOL_VEC3,
    GLB_BVEC4 = GL_BOOL_VEC4,
    GLB_BOOL_VEC2 = GL_BOOL_VEC2,
    GLB_BOOL_VEC3 = GL_BOOL_VEC3,
    GLB_BOOL_VEC4 = GL_BOOL_VEC4,
};

enum 
{
    GLB_MAT2    = GL_FLOAT_MAT2,
    GLB_MAT3    = GL_FLOAT_MAT3,
    GLB_MAT4    = GL_FLOAT_MAT4,
    GLB_FLOAT_MAT2    = GL_FLOAT_MAT2,
    GLB_FLOAT_MAT3    = GL_FLOAT_MAT3,
    GLB_FLOAT_MAT4    = GL_FLOAT_MAT4,
    GLB_MAT2x3  = GL_FLOAT_MAT2x3,
    GLB_MAT2x4  = GL_FLOAT_MAT2x4,
    GLB_MAT3x2  = GL_FLOAT_MAT3x2,
    GLB_MAT3x4  = GL_FLOAT_MAT3x4,
    GLB_MAT4x2  = GL_FLOAT_MAT4x2,
    GLB_MAT4x3  = GL_FLOAT_MAT4x3,
    GLB_FLOAT_MAT2x3  = GL_FLOAT_MAT2x3,
    GLB_FLOAT_MAT2x4  = GL_FLOAT_MAT2x4,
    GLB_FLOAT_MAT3x2  = GL_FLOAT_MAT3x2,
    GLB_FLOAT_MAT3x4  = GL_FLOAT_MAT3x4,
    GLB_FLOAT_MAT4x2  = GL_FLOAT_MAT4x2,
    GLB_FLOAT_MAT4x3  = GL_FLOAT_MAT4x3,
};

///TODO: add all opaque types from GLSL to GLBOpaque enum
enum 
{
    GLB_SAMPLER_1D = GL_SAMPLER_1D,
    GLB_SAMPLER_2D = GL_SAMPLER_2D,
    GLB_SAMPLER_3D = GL_SAMPLER_3D,
    GLB_SAMPLER_1D_ARRAY = GL_SAMPLER_1D_ARRAY,
    GLB_SAMPLER_2D_ARRAY = GL_SAMPLER_2D_ARRAY,
    GLB_SAMPLER_CUBE = GL_SAMPLER_CUBE,
    GLB_SAMPLER_1D_SHADOW = GL_SAMPLER_1D_SHADOW,
    GLB_SAMPLER_2D_SHADOW = GL_SAMPLER_2D_SHADOW,
    GLB_SAMPLER_CUBE_SHADOW = GL_SAMPLER_CUBE_SHADOW,
};

enum 
{
    // buffer object features
    GLB_BUFFER_OBJECT_FEATURE,
    GLB_ARRAY_BUFFER_FEATURE,
    GLB_ATOMIC_COUNTER_BUFFER_FEATURE,
    GLB_COPY_READ_BUFFER_FEATURE,
    GLB_COPY_WRITE_BUFFER_FEATURE,
    GLB_DRAW_INDIRECT_BUFFER_FEATURE,
    GLB_DISPATCH_INDIRECT_BUFFER_FEATURE,
    GLB_ELEMENT_ARRAY_BUFFER_FEATURE,
    GLB_PIXEL_PACK_BUFFER_FEATURE,
    GLB_PIXEL_UNPACK_BUFFER_FEATURE,
    GLB_SHADER_STORAGE_BUFFER_FEATURE,
    GLB_TEXTURE_BUFFER_FEATURE,
    GLB_TRANSFORM_FEEDBACK_BUFFER_FEATURE,
    GLB_UNIFORM_BUFFER_FEATURE,

    // shader object features
    GLB_SHADER_OBJECT_FEATURE,
    GLB_VERTEX_SHADER_FEATURE = GL_VERTEX_SHADER,
    GLB_TESS_CONTROL_SHADER_FEATURE = GL_TESS_CONTROL_SHADER,
    GLB_TESS_EVALUATION_SHADER_FEATURE = GL_TESS_EVALUATION_SHADER,
    GLB_GEOMETRY_SHADER_FEATURE = GL_GEOMETRY_SHADER,
    GLB_FRAGMENT_SHADER_FEATURE = GL_FRAGMENT_SHADER,
};
