Shader "FXV/FXVShieldEffectMobile" {
	Properties {
		_Color ("Color", Vector) = (1,1,1,1)
		_ColorRimMin ("ColorRimMin", Range(-2, 1)) = 0.6
		_ColorRimMax ("ColorRimMax", Range(0, 4)) = 1
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_TextureColor ("Color", Vector) = (1,1,1,1)
		_TextureScale ("TextureScale", Range(0.01, 100)) = 1
		_TexturePower ("TexturePower", Range(0, 4)) = 1
		_TextureRimMin ("TextureRimMin", Range(-2, 1)) = 0.6
		_TextureRimMax ("TextureRimMax", Range(0, 4)) = 1
		_TextureScrollX ("TextureScrollX", Range(-4, 4)) = 0
		_TextureScrollY ("TextureScrollY", Range(-4, 4)) = 0
		_DistortTex ("Albedo (RGB)", 2D) = "black" {}
		_DistortionFactor ("DistortionFactor", Range(0, 5)) = 0.2
		_PatternTex ("Albedo (RGB)", 2D) = "black" {}
		_PatternColor ("Color", Vector) = (1,1,1,1)
		_PatternScale ("PatternScale", Range(0.01, 100)) = 1
		_PatternPower ("PatternPower", Range(0, 4)) = 1
		_PatternRimMin ("PatternRimMin", Range(-2, 1)) = 0.6
		_PatternRimMax ("PatternRimMax", Range(0, 4)) = 1
		_DirectionVisibility ("DirectionVisibility", Range(-2, 2)) = 0
		_ActivationTex ("Albedo (RGB)", 2D) = "black" {}
		_ActivationRim ("ActivationRim", Range(0, 1)) = 0
		_ActivationTime ("ActivationTime", Range(0, 1)) = 1
		_ShieldDirection ("ShieldDirection", Vector) = (1,0,0,0)
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

		sampler2D _MainTex;
		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	Fallback "Diffuse"
	//CustomEditor "FXVShieldMaterialEditor"
}