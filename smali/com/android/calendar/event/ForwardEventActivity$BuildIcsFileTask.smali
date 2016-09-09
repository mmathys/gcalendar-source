.class Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;
.super Landroid/os/AsyncTask;
.source "ForwardEventActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/ForwardEventActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuildIcsFileTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/calendar/event/CalendarEventModel;",
        "Ljava/lang/Void;",
        "Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mEventIcsBuilder:Lcom/android/calendar/event/EventIcsBuilder;

.field final synthetic this$0:Lcom/android/calendar/event/ForwardEventActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/ForwardEventActivity;)V
    .locals 1

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->this$0:Lcom/android/calendar/event/ForwardEventActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 94
    new-instance v0, Lcom/android/calendar/event/EventIcsBuilder;

    invoke-direct {v0, p1}, Lcom/android/calendar/event/EventIcsBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->mEventIcsBuilder:Lcom/android/calendar/event/EventIcsBuilder;

    .line 95
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;
    .locals 13

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p1

    if-lt v0, v10, :cond_0

    aget-object v0, p1, v12

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-object v5

    .line 112
    :cond_1
    aget-object v9, p1, v12

    .line 113
    iget-object v0, v9, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 118
    const-string v1, "com.google.android.gm.exchange"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 119
    iget-object v0, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->this$0:Lcom/android/calendar/event/ForwardEventActivity;

    invoke-virtual {v0}, Lcom/android/calendar/event/ForwardEventActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id AS _id"

    aput-object v3, v2, v12

    const-string v3, "sync_data2 AS uid"

    aput-object v3, v2, v10

    const-string v3, "_sync_id AS serverItemId"

    aput-object v3, v2, v4

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    iget-wide v6, v9, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 133
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    .line 120
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_7

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 139
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 141
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 145
    :goto_1
    if-eqz v1, :cond_2

    .line 146
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_2
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_sync_id AS serverCollectionId"

    aput-object v3, v2, v12

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    iget-wide v10, v9, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 157
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    .line 151
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 166
    :goto_2
    if-eqz v1, :cond_5

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v4, v8

    .line 173
    :goto_3
    invoke-virtual {p0}, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;

    iget-object v1, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->mEventIcsBuilder:Lcom/android/calendar/event/EventIcsBuilder;

    .line 178
    invoke-virtual {v1, v9}, Lcom/android/calendar/event/EventIcsBuilder;->generateEventFile(Lcom/android/calendar/event/CalendarEventModel;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v9, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;-><init>(Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    .line 177
    goto/16 :goto_0

    .line 145
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 146
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 166
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_4

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    move-object v4, v8

    goto :goto_3

    :cond_6
    move-object v6, v5

    goto :goto_2

    :cond_7
    move-object v7, v5

    move-object v8, v5

    goto :goto_1

    :cond_8
    move-object v6, v5

    move-object v7, v5

    move-object v4, v5

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    check-cast p1, [Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->doInBackground([Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;)V
    .locals 10

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->this$0:Lcom/android/calendar/event/ForwardEventActivity;

    invoke-virtual {v0}, Lcom/android/calendar/event/ForwardEventActivity;->finish()V

    .line 202
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->this$0:Lcom/android/calendar/event/ForwardEventActivity;

    iget-object v1, p1, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->mEventIcsBuilder:Lcom/android/calendar/event/EventIcsBuilder;

    .line 195
    invoke-virtual {v2}, Lcom/android/calendar/event/EventIcsBuilder;->getEventFileType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->subject:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->uid:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->ownerEmail:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->serverCollectionId:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;->serverItemId:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->this$0:Lcom/android/calendar/event/ForwardEventActivity;

    iget-object v9, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->this$0:Lcom/android/calendar/event/ForwardEventActivity;

    .line 201
    # getter for: Lcom/android/calendar/event/ForwardEventActivity;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v9}, Lcom/android/calendar/event/ForwardEventActivity;->access$000(Lcom/android/calendar/event/ForwardEventActivity;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v9

    # invokes: Lcom/android/calendar/event/ForwardEventActivity;->getEventForwardMessageBody(Lcom/android/calendar/event/CalendarEventModel;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/calendar/event/ForwardEventActivity;->access$100(Lcom/android/calendar/event/ForwardEventActivity;Lcom/android/calendar/event/CalendarEventModel;)Ljava/lang/String;

    move-result-object v8

    .line 193
    # invokes: Lcom/android/calendar/event/ForwardEventActivity;->sendIntentWithAttachment(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v8}, Lcom/android/calendar/event/ForwardEventActivity;->access$200(Lcom/android/calendar/event/ForwardEventActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    check-cast p1, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->onPostExecute(Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask$Result;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 100
    iget-object v0, p0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->this$0:Lcom/android/calendar/event/ForwardEventActivity;

    sget v1, Lcom/android/calendar/R$string;->forward_event_toast_title:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    return-void
.end method
