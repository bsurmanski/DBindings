/*
 * shader.h
 * GLB
 * March 01, 2013
 * Brandon Surmanski
 */

module c.gl.glb.shader;

import c.gl.gl;
import c.gl.glext;
import c.gl.glb.glb_types;

extern(C):

struct GLBShaderIdent;

enum 
{
    GLB_VERTEX_SHADER          = GL_VERTEX_SHADER,
    GLB_TESS_CONTROL_SHADER    = GL_TESS_CONTROL_SHADER,
    GLB_TESS_EVALUATION_SHADER = GL_TESS_EVALUATION_SHADER,
    GLB_GEOMETRY_SHADER        = GL_GEOMETRY_SHADER,
    GLB_FRAGMENT_SHADER        = GL_FRAGMENT_SHADER
};

GLBShader* glbCreateShaderWithSourceFile (  const char *filenm,
                                           int stage,
                                           int *errcode_ret);

GLBShader* glbCreateShaderWithSource (  int len,
                                       void *mem,
                                       int stage,
                                       int *errcode_ret);

void        glbDeleteShader       (GLBShader *shader);
void        glbRetainShader       (GLBShader *shader);
void        glbReleaseShader      (GLBShader *shader);
