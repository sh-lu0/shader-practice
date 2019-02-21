﻿Shader "Custom/tex" {
	Properties{
		// テクスチャ格納用の変数を宣言
		_MainTex("Texture", 2D) = "white"{}
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200

		CGPROGRAM
		#pragma surface surf Standard fullforwardshadows
		#pragma target 3.0

		struct Input {
			float2 uv_MainTex;
		};

		sampler2D _MainTex;

		void surf (Input IN, inout SurfaceOutputStandard o) {
			o.Albedo = tex2D(_MainTex, IN.uv_MainTex);
		}
		ENDCG
	}
	FallBack "Diffuse"
}
