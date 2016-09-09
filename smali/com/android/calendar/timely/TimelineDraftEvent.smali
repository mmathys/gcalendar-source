.class public Lcom/android/calendar/timely/TimelineDraftEvent;
.super Lcom/android/calendar/timely/TimelineEvent;
.source "TimelineDraftEvent.java"


# instance fields
.field private mAssistText:Ljava/lang/String;

.field private mDraftEventHandler:Lcom/android/calendar/timely/DraftEventHandler;

.field private mEventDescription:Ljava/lang/String;


# virtual methods
.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineDraftEvent;->mAssistText:Ljava/lang/String;

    return-object v0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 133
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 134
    const-string v0, "dtstart"

    iget-wide v4, p0, Lcom/android/calendar/timely/TimelineDraftEvent;->startMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    const-string v0, "dtend"

    iget-wide v4, p0, Lcom/android/calendar/timely/TimelineDraftEvent;->endMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    const-string v0, "title"

    iget-object v3, p0, Lcom/android/calendar/timely/TimelineDraftEvent;->title:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "description"

    iget-object v3, p0, Lcom/android/calendar/timely/TimelineDraftEvent;->mEventDescription:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v3, "eventTimezone"

    .line 139
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getDefaultCalendarId()J

    move-result-wide v4

    .line 143
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "calendar_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 147
    sget v0, Lcom/android/calendar/R$string;->creating_event:I

    invoke-static {p1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineDraftEvent;->mDraftEventHandler:Lcom/android/calendar/timely/DraftEventHandler;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineDraftEvent;->mDraftEventHandler:Lcom/android/calendar/timely/DraftEventHandler;

    invoke-interface {v0}, Lcom/android/calendar/timely/DraftEventHandler;->clearDraftEvent()V

    .line 153
    :cond_0
    return-void
.end method

.method public hasAssist()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/TimelineEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineDraftEvent;->mAssistText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return-void
.end method
