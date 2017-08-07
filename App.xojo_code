#tag Class
Protected Class App
Inherits WebApplication
	#tag Event
		Function HandleSpecialURL(Request As WebRequest) As Boolean
		  if Request.Path == "/print" then
		    Dim tepra as Tepra
		    tepra.addData(Request.GetParameter("data"))
		    
		    tepra.printOut()
		  end if
		End Function
	#tag EndEvent


End Class
#tag EndClass
