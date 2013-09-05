/*
 * buffer.h
 * GLB
 * March 01, 2013
 * Brandon Surmanski
 */

module c.gl.glb.buffer;

import c.gl.gl;
import c.gl.glext;

import c.gl.glb.glb_types;

extern (C):

enum 
{
    GLB_STREAM_DRAW = GL_STREAM_DRAW,
    GLB_STREAM_READ = GL_STREAM_READ,
    GLB_STREAM_COPY = GL_STREAM_COPY,
    GLB_STATIC_DRAW = GL_STATIC_DRAW,
    GLB_STATIC_READ = GL_STATIC_READ,
    GLB_STATIC_COPY = GL_STATIC_COPY,
    GLB_DYNAMIC_DRAW = GL_DYNAMIC_DRAW,
    GLB_DYNAMIC_READ = GL_DYNAMIC_READ,
    GLB_DYNAMIC_COPY = GL_DYNAMIC_COPY,
};

GLBBuffer* glbCreateBuffer   (size_t nmemb, size_t sz,
                              const(void) *ptr, int usage, int *errcode_ret);
GLBBuffer* glbCreateIndexBuffer  (size_t nmemb, size_t sz, const(void) *ptr,
                                  int type, int usage, int *errcode_ret);
GLBBuffer* glbCreateVertexBuffer (size_t nmemb, size_t sz, const(void) *ptr, int ndesc,
                                  GLBVertexLayout *desc,
                                  int usage, int *errcode_ret);
void       glbDeleteBuffer   (GLBBuffer *buffer);
void       glbRetainBuffer   (GLBBuffer *buffer);
void       glbReleaseBuffer  (GLBBuffer *buffer);
int        glbWriteBuffer    (GLBBuffer *buffer, size_t offset, size_t sz, void *ptr);
int        glbReadBuffer     (GLBBuffer *buffer, size_t offset, size_t sz, void *ptr);
int        glbFillBuffer     (GLBBuffer *buffer,
                               const void *pattern,
                               size_t pattern_size,
                               size_t offset,
                               size_t size);
int        glbCopyBuffer     (GLBBuffer *src,
                               GLBBuffer *dst,
                               size_t src_offset,
                               size_t dst_offset,
                               size_t size);
void*      glbMapBuffer      (GLBBuffer *buffer, int access);
int        glbUnmapBuffer    (GLBBuffer *buffer);

int        glbVertexBufferFormat (GLBBuffer *buffer, int ndesc, GLBVertexLayout *desc);
int        glbIndexBufferFormat  (GLBBuffer *buffer, int offset, int count, int type);

int        glbBufferOption       (GLBBuffer *buffer);
