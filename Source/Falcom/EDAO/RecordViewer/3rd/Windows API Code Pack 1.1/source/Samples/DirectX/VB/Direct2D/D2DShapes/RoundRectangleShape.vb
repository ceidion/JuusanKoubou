' Copyright (c) Microsoft Corporation.  All rights reserved.

Imports Microsoft.VisualBasic
Imports System
Imports Microsoft.WindowsAPICodePack.DirectX.Direct2D1

Namespace D2DShapes
	Friend Class RoundRectangleShape
		Inherits DrawingShape
		Friend rect As RoundedRect

		Public Sub New(ByVal initialRenderTarget As RenderTarget, ByVal random As Random, ByVal d2DFactory As D2DFactory, ByVal bitmap As D2DBitmap)
			MyBase.New(initialRenderTarget, random, d2DFactory, bitmap)
			rect = RandomRoundedRect()
			Dim which As Double = Random.NextDouble()
			If which < 0.67 Then
				PenBrush = RandomBrush()
			End If
			If which > 0.33 Then
				FillBrush = RandomBrush()
			End If
			If CoinFlip Then
				StrokeStyle = RandomStrokeStyle()
			End If
			StrokeWidth = RandomStrokeWidth()
		End Sub

		Protected Friend Overrides Sub ChangeRenderTarget(ByVal newRenderTarget As RenderTarget)
			PenBrush = CopyBrushToRenderTarget(PenBrush, newRenderTarget)
			FillBrush = CopyBrushToRenderTarget(FillBrush, newRenderTarget)
		End Sub

		Protected Friend Overrides Sub Draw(ByVal renderTarget As RenderTarget)
			If FillBrush IsNot Nothing Then
				renderTarget.FillRoundedRectangle(rect, FillBrush)
			End If
			If PenBrush IsNot Nothing Then
				If StrokeStyle IsNot Nothing Then
					renderTarget.DrawRoundedRectangle(rect, PenBrush, StrokeWidth, StrokeStyle)
				Else
					renderTarget.DrawRoundedRectangle(rect, PenBrush, StrokeWidth)
				End If
			End If
		End Sub

		Public Overrides Function HitTest(ByVal point As Point2F) As Boolean
			Dim g As RoundedRectangleGeometry = d2DFactory.CreateRoundedRectangleGeometry(rect)
			Dim ret As Boolean = g.FillContainsPoint(point, 1)
			g.Dispose()
			Return ret
		End Function
	End Class
End Namespace
