/**
 * glb_types.h
 * GLB
 * March 18, 2013
 * Brandon Surmanski
 *
 * Forward declarations of all public types and typedefs.
 * To see definitions of opaque types, look in glb_private.h
 */

module c.gl.glb.glb_types;

extern (C):

struct GLBVertexLayout
{
    uint size;
    uint type;
    uint normalized;
    uint stride;
    uint offset;
};

struct GLBBuffer;
struct GLBFramebuffer;
struct GLBProgram;
struct GLBSampler;
struct GLBShader;
struct GLBTexture;

/*
typedef struct GLBBuffer GLBBuffer;
typedef struct GLBFramebuffer GLBFramebuffer;
typedef struct GLBProgram GLBProgram;
typedef struct GLBSampler GLBSampler;
typedef struct GLBShader GLBShader;
typedef struct GLBTexture GLBTexture;
typedef struct GLBVertexLayout GLBVertexLayout;
*/
