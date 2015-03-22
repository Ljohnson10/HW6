
Partial Class Details
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim deletedRec As String = e.Values("recName").ToString()
        lbl_deletedRec.text = deletedRec & " has been removed from the database."
        Response.AddHeader("REFRESH", "3;URL=./Home.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./Home.aspx")
    End Sub
End Class
