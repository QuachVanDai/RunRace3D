Shader "FXV/FXVShieldHitRefract" {
	Properties {
		_Color ("Color", Vector) = (1,1,1,1)
		_PatternTex ("Albedo (RGB)", 2D) = "black" {}
		_PatternScale ("PatternScale", Range(0.01, 100)) = 1
		_RippleTex ("Albedo (RGB)", 2D) = "black" {}
		_RippleScale ("RippleScale", Range(0.1, 10)) = 1
		_RippleDistortion ("RippleDistortion", Range(0.01, 1)) = 1
		_HitAttenuation ("HitAttenuation", Range(0.01, 100)) = 1
		_HitPower ("HitPower", Range(0.01, 20)) = 1
		_HitRadius ("HitRadius", Range(0.01, 20)) = 0.25
		_RefractionScale ("RefractionScale", Range(0.001, 1)) = 0.05
		_HitPos ("HitPos", Vector) = (0,0,-0.5,1)
		_HitTan1 ("HitTan1", Vector) = (0,1,0,1)
		_HitTan2 ("HitTan2", Vector) = (1,0,0,1)
		_WorldScale ("WorldScale", Vector) = (1,1,1,1)
		_BlendSrcMode ("BlendSrcMode", Float) = 0
		_BlendDstMode ("BlendDstMode", Float) = 0
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = _Color.rgb;
			o.Alpha = _Color.a;
		}
		ENDCG
	}
	Fallback "Diffuse"
	//CustomEditor "FXVShieldHitMaterialEditor"
}