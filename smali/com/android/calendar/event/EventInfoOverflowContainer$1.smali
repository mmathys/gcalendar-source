.class final Lcom/android/calendar/event/EventInfoOverflowContainer$1;
.super Ljava/lang/Object;
.source "EventInfoOverflowContainer.java"

# interfaces
.implements Lcom/android/calendar/event/EventInfoOverflowContainer$Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoOverflowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmailLabelIdFromModel(Lcom/android/calendar/event/CalendarEventModel;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    if-nez v1, :cond_0

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->hasGuestsToEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    sget v0, Lcom/android/calendar/R$string;->email_guests_label:I

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->hasOwnerToEmail()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    sget v0, Lcom/android/calendar/R$string;->email_owner_label:I

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->hasOrganizerToEmail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    sget v0, Lcom/android/calendar/R$string;->email_organizer_label:I

    goto :goto_0
.end method

.method public shouldShowDeleteItem(Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowEmailGuestsItem(Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoOverflowContainer$1;->getEmailLabelIdFromModel(Lcom/android/calendar/event/CalendarEventModel;)I

    move-result v0

    .line 110
    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowForwardItem(Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google"

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowLoadEventItem(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-boolean v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->isEventEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-static {p2}, Lcom/android/calendar/ExperimentalOptionsEnabler;->isNewViewEditDevelopmentEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldShowLoadGrooveItem(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-static {p2}, Lcom/android/calendar/ExperimentalOptionsEnabler;->isNewViewEditDevelopmentEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
