
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
