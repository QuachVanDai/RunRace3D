Shader "Unitycoder/gradientBarSurfaceShader" {
	Properties {
		_TopLine ("Top Line Y", Float) = 0
		_BottomLine ("Bottom Line Y", Float) = 0
		_OverTopColor ("OverTheTopColor", Vector) = (1,1,1,1)
		_GradientTopColor ("GradientTopColor", Vector) = (1,0,0,1)
		_GradientBottomColor ("GradientBottomColor", Vector) = (0,1,0,0)
		_BelowBottomColor ("BelowTheBottomColor", Vector) = (0,0,0,0)
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
	Fallback "Diffuse"
}