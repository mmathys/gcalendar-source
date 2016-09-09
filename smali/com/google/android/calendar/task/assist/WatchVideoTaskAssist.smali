.class public Lcom/google/android/calendar/task/assist/WatchVideoTaskAssist;
.super Lcom/google/android/calendar/task/assist/TaskAssistHolder;
.source "WatchVideoTaskAssist.java"


# direct methods
.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    .line 16
    const-string v0, "watchVideo"

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/WatchVideoTaskAssist;->mAnalyticsLabel:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/android/calendar/R$string;->watch_video_task_assist:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/assist/WatchVideoTaskAssist;->getAssistActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_video_youtube_grey600_24:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/WatchVideoTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/google/android/calendar/task/assist/WatchVideoTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;->videoUrl:Ljava/lang/String;

    .line 52
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    invoke-static {p1, v0}, Lcom/google/android/calendar/task/assist/WatchVideoTaskAssist;->prepareToGotoAssist(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/task/assist/WatchVideoTaskAssist;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 55
    return-void
.end method
