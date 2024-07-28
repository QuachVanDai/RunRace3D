Shader "BOXOPHOBIC/Polyverse/Skies - Mobile" {
	Properties {
		[Header(Sky Gradient)] _SkyColor ("Sky Color", Vector) = (0.4980392,0.7450981,1,1)
		_EquatorColor ("Equator Color", Vector) = (1,0.747,0,1)
		_GroundColor ("Ground Color", Vector) = (0.4980392,0.497,0,1)
		_EquatorHeight ("Equator Height", Range(0, 1)) = 0.5
		_EquatorSmoothness ("Equator Smoothness", Range(0.01, 1)) = 0.5
		[Header(Stars)] [Toggle] _EnableStars ("Enable Stars", Float) = 0
		[NoScaleOffset] _StarsCubemap ("Stars Cubemap", Cube) = "white" {}
		_StarsSize ("Stars Size", Range(0, 0.99)) = 0.5
		_StarsIntensity ("Stars Intensity", Range(0, 5)) = 2
		_StarsHeightMask ("Stars Height Mask", Range(0, 1)) = 0
		[Header(Sun)] [Toggle] _EnableSun ("Enable Sun", Float) = 0
		[NoScaleOffset] _SunTexture ("Sun Texture", 2D) = "black" {}
		_SunSize ("Sun Size", Range(0.1, 1)) = 0.5
		_SunColor ("Sun Color", Vector) = (1,1,1,1)
		_SunIntensity ("Sun Intensity", Range(1, 10)) = 1
		[Header(Clouds)] [Toggle] _EnableClouds ("Enable Clouds", Float) = 0
		[NoScaleOffset] _CloudsCubemap ("Clouds Cubemap", Cube) = "black" {}
		_CloudsHeight ("Clouds Height", Range(-0.5, 0.5)) = 0
		_CloudsLightColor ("Clouds Light Color", Vector) = (1,1,1,1)
		_CloudsShadowColor ("Clouds Shadow Color", Vector) = (0.4980392,0.7450981,1,1)
		[Header(Builtin Fog)] [Toggle] _EnableBuiltinFog ("Enable Fog", Float) = 0
		_FogHeight ("Fog Height", Range(0, 1)) = 0
		_FogSmoothness ("Fog Smoothness", Range(0.01, 1)) = 0
		_FogFill ("Fog Fill", Range(0, 1)) = 0
		[HideInInspector] __dirty ("", Float) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
}