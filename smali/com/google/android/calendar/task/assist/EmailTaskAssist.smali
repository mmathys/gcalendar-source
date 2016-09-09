.class public Lcom/google/android/calendar/task/assist/EmailTaskAssist;
.super Lcom/google/android/calendar/task/assist/TaskAssistHolder;
.source "EmailTaskAssist.java"


# direct methods
.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    .line 16
    const-string v0, "email"

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/EmailTaskAssist;->mAnalyticsLabel:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/android/calendar/R$string;->email_task_assist:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/EmailTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/android/calendar/R$string;->describe_email_icon:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/assist/EmailTaskAssist;->getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_email_grey600_24:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "email"

    invoke-static {v0}, Lcom/google/android/calendar/task/assist/EmailTaskAssist;->getAssistFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    iget-object v3, p0, Lcom/google/android/calendar/task/assist/EmailTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v3, v3, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    iget-object v3, v3, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emailAddress:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    invoke-static {p1, v0}, Lcom/google/android/calendar/task/assist/EmailTaskAssist;->prepareToGotoAssist(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/task/assist/EmailTaskAssist;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 55
    return-void
.end method
