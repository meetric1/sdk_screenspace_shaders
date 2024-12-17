// common data shared among all screenspace shaders

// up to four textures available for sampling
sampler TexBase : register( s0 ); // $basetexture
sampler Tex1    : register( s1 ); // $texture1
sampler Tex2    : register( s2 ); // $texture2
sampler Tex3    : register( s3 ); // $texture3

// normalized dimensions for each texture above
// (x = 1.0 / width, y = 1.0 / height)
float2 TexBaseSize : register( c4 );
float2 Tex1Size    : register( c5 );
float2 Tex2Size    : register( c6 );
float2 Tex3Size    : register( c7 );

// customizable parameters $c0, $c1, $c2, $c3
const float4 Constants0 : register( c0 );
const float4 Constants1 : register( c1 );
const float4 Constants2 : register( c2 );
const float4 Constants3 : register( c3 );

// interpolated vertex data for the shader, do not change
struct PS_INPUT
{
	float2 baseTexCoord : TEXCOORD0;
};