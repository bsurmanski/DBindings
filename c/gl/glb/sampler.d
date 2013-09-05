/*
 * sampler.h
 * GLB
 * March 02, 2013
 * Brandon Surmanski
 */

module c.gl.glb.sampler;

import c.gl.gl;
import c.gl.glext;
import c.gl.glb.glb_types;

extern(C):

enum 
{
    GLB_NEAREST = GL_NEAREST,
    GLB_LINEAR  = GL_LINEAR,
    GLB_NEAREST_MIPMAP_NEAREST  = GL_NEAREST_MIPMAP_NEAREST,
    GLB_LINEAR_MIPMAP_NEAREST   = GL_LINEAR_MIPMAP_NEAREST,
    GLB_NEAREST_MIPMAP_LINEAR   = GL_NEAREST_MIPMAP_LINEAR,
    GLB_LINEAR_MIPMAP_LINEAR    = GL_LINEAR_MIPMAP_LINEAR
};

enum 
{
    GLB_CLAMP_TO_EDGE   = GL_CLAMP_TO_EDGE,
    GLB_CLAMP           = GL_CLAMP_TO_EDGE,
    GLB_MIRRORED_REPEAT = GL_MIRRORED_REPEAT,
    GLB_MIRRORED        = GL_MIRRORED_REPEAT,
    GLB_REPEAT          = GL_REPEAT,
    GLB_CLAMP_TO_BORDER = GL_CLAMP_TO_BORDER
};

enum 
{
    GLB_COMPARE_REF_TO_TEXTURE = GL_COMPARE_REF_TO_TEXTURE,
    GLB_NONE                   = GL_NONE
};

enum 
{
    GLB_LEQUAL   = GL_LEQUAL,
    GLB_GEQUAL   = GL_GEQUAL,
    GLB_LESS     = GL_LESS,
    GLB_GREATER  = GL_GREATER,
    GLB_EQUAL    = GL_EQUAL,
    GLB_NOTEQUAL = GL_NOTEQUAL,
    GLB_ALWAYS   = GL_ALWAYS,
    GLB_NEVER    = GL_NEVER,
};

GLBSampler* glbCreateSampler (int *errcode_ret);
void        glbDeleteSampler (GLBSampler *sampler);
void        glbRetainSampler (GLBSampler *sampler);
void        glbReleaseSampler(GLBSampler *sampler);
void glbSamplerFilter (GLBSampler *sampler, int min, int mag);
void glbSamplerLOD    (GLBSampler *sampler, float minlod, float maxlod);
void glbSamplerWrap   (GLBSampler *sampler,
                          int s,
                          int t,
                          int r);
void glbSamplerCompare(GLBSampler *sampler,
                          int m,
                          int f);
