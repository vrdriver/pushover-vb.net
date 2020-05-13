Pushover-vb.net
============

I have updated this to work with Visual Basic (VB.NET). Forked and modified from @makah.

VB.net pushover module for https://pushover.net/api.

Usage
=====
```vb.net
    Sub Example1()
        Dim myApp As String, theGroup As String
 
        myApp = "my_application_token"
        theGroup = "my_Group_or_user_token"

        pushover.Post(app:=myApp, group:=theGroup, message:="Hello my PushoOver-VBA Helper")

    End Sub

    Sub Example2()
        Dim myApp As String, theGroup As String

        myApp = "my_application_token"
        theGroup = "my_Group_or_user_token"
 
        Dim ok As Boolean = pushover.Post(myApp, theGroup, "Hello my PushoOver-VBA Helper 2")

        If ok = True Then
            Debug.WriteLine("Pushover worked")
        Else
            MsgBox("There was a pushover Error")
        End If

    End Sub

    Sub Example3()
        Dim myApp As String, theGroup As String, Message As String

        myApp = "my_application_token"
        theGroup = "my_Group_or_user_token"
 
        Message = "Hello my PushoOver-VBA Helper 3"

        Debug.WriteLine(pushover.PostOp(myApp, theGroup, Message, "sound", "cosmic", "title", "My new Title"))
    End Sub
```
   
This library has two diferent ways to post. Post() that is very simple and only returns true or false, and PostOp(), a function that returns the JSON response and allow user to add optional parameters.

Dependencies
============
* None

Copyright notice
============

This software is published under MIT license 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
