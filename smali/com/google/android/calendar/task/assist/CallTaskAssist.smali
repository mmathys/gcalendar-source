.class public Lcom/google/android/calendar/task/assist/CallTaskAssist;
.super Lcom/google/android/calendar/task/assist/TaskAssistHolder;
.source "CallTaskAssist.java"


# direct methods
.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    .line 18
    const-string v0, "call"

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/CallTaskAssist;->mAnalyticsLabel:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private createIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    .line 93
    invoke-virtual {p0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 92
    return-object v0
.end method


# virtual methods
.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->createIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->canGoToAssist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget v0, Lcom/android/calendar/R$string;->call_task_assist:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/android/calendar/R$string;->describe_phone_icon:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/android/calendar/R$string;->call:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_call_grey600_24:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "call"

    invoke-static {v0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->getAssistFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneNumber()Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/CallTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected final getPhoneNumberString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->getPhoneNumber()Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    move-result-object v0

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    invoke-static {p1, v0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->prepareToGotoAssist(Landroid/content/Context;Landroid/content/Intent;)V

    .line 73
    invoke-static {p1, v0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->canGoToAssist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isClickable(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->createIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/calendar/task/assist/CallTaskAssist;->canGoToAssist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
