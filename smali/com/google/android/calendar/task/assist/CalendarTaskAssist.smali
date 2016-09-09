.class public Lcom/google/android/calendar/task/assist/CalendarTaskAssist;
.super Lcom/google/android/calendar/task/assist/TaskAssistHolder;
.source "CalendarTaskAssist.java"


# direct methods
.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    .line 20
    const-string v0, "meet"

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/CalendarTaskAssist;->mAnalyticsLabel:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private getEmailStringArray([Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;)[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 55
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 56
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emailAddress:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 58
    goto :goto_0
.end method


# virtual methods
.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/CalendarTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->urlText:Ljava/lang/String;

    return-object v0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/assist/CalendarTaskAssist;->getAssistActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_event_grey600_24:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "meet"

    invoke-static {v0}, Lcom/google/android/calendar/task/assist/CalendarTaskAssist;->getAssistFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/CalendarTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    iget-object v3, v0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->title:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "description"

    iget-object v3, v0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->description:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.EMAIL"

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 45
    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/assist/CalendarTaskAssist;->getEmailStringArray([Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Lcom/google/android/calendar/task/assist/CalendarTaskAssist;->prepareToGotoAssist(Landroid/content/Context;Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/task/assist/CalendarTaskAssist;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    return-void
.end method
