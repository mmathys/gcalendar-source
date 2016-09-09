.class public Lcom/google/android/calendar/task/assist/WeatherTaskAssist;
.super Lcom/google/android/calendar/task/assist/TaskAssistHolder;
.source "WeatherTaskAssist.java"


# direct methods
.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    .line 18
    const-string v0, "weather"

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->mAnalyticsLabel:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastText:Ljava/lang/String;

    return-object v0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 28
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentConditionDesc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->location:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    iget v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->preferredUnit:I

    .line 32
    if-ne v0, v5, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempC:Ljava/lang/String;

    .line 35
    :goto_0
    if-eqz v0, :cond_1

    .line 36
    sget v1, Lcom/android/calendar/R$string;->weather_info_task_assist:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v4, v4, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    iget-object v4, v4, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentConditionDesc:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v0, v2, v5

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v3, v3, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    iget-object v3, v3, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->location:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_1
    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempF:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    sget v0, Lcom/android/calendar/R$string;->describe_link_icon:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->getAssistActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_public_grey600_24:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "pack"

    invoke-static {v0}, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->getAssistFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryDisplayText(Landroid/content/Context;)Landroid/text/SpannableString;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 72
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastUrl:Ljava/lang/String;

    .line 78
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    invoke-static {p1, v0}, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->prepareToGotoAssist(Landroid/content/Context;Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/task/assist/WeatherTaskAssist;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 81
    return-void
.end method
