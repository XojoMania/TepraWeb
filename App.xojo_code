#tag Class
Protected Class App
Inherits WebApplication
	#tag Event
		Function HandleURL(Request As WebRequest) As Boolean
		  if Request.Path = "print" then
		    Dim tepra as Tepra = new Tepra
		    Dim data()  as String = Request.GetParameter("data").Split(",")
		    tepra.addData(data)
		    
		    Dim tapeWidth as Integer = Val(Request.GetParameter("width"))
		    
		    Dim tpePath as string = Request.GetParameter("tpe")
		    tepra.tpePath = tpePath
		    
		    tepra.printOut()
		  end if
		End Function
	#tag EndEvent


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
