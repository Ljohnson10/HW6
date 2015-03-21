
Partial Class newRec
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

        Response.Redirect("~/Home.aspx")

    End Sub
End Class
