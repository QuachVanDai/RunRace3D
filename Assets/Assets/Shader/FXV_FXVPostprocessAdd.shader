Shader "FXV/FXVPostprocessAdd" {
	Properties {
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_BlurTex ("Albedo (RGB)", 2D) = "white" {}
		_ColorMultiplier ("ColorMultiplier", Range(0, 5)) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	Fallback "Diffuse"
}