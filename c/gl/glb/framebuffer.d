/*
 * framebuffer.h
 * GLB
 * March 18, 2013
 * Brandon Surmanski
 */

module c.gl.glb.framebuffer;

import c.gl.glb.glb_types;

extern (C):

const GLB_FRAMEBUFFER_COLORS_MAX = 16;

GLBFramebuffer *glbCreateFramebuffer(int *errcode_ret);
void            glbDeleteFramebuffer(GLBFramebuffer *framebuffer);
void            glbRetainFramebuffer(GLBFramebuffer *framebuffer);
void            glbReleaseFramebuffer(GLBFramebuffer *framebuffer);

int             glbFramebufferTexture(GLBFramebuffer *framebuffer, GLBTexture *texture);
int             glbFramebufferColor(GLBFramebuffer *framebuffer, int i, GLBTexture *texture);
int             glbFramebufferDepth(GLBFramebuffer *framebuffer, GLBTexture *depth);
int             glbFramebufferStencil(GLBFramebuffer *framebuffer, GLBTexture *stencil);
int             glbFramebufferDepthStencil(GLBFramebuffer *framebuffer, GLBTexture *depth_stencil);

GLBTexture     *glbGetFramebufferColor(GLBFramebuffer *framebuffer, int i);
GLBTexture     *glbGetFramebufferDepth(GLBFramebuffer *framebuffer);
GLBTexture     *glbGetFramebufferStencil(GLBFramebuffer *framebuffer);
