.class public Lcom/google/android/calendar/task/assist/PayBillTaskAssist;
.super Lcom/google/android/calendar/task/assist/TaskAssistHolder;
.source "PayBillTaskAssist.java"


# direct methods
.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    .line 18
    const-string v0, "payBill"

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/PayBillTaskAssist;->mAnalyticsLabel:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/PayBillTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;->payText:Ljava/lang/String;

    return-object v0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 28
    iget-object v1, p0, Lcom/google/android/calendar/task/assist/PayBillTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;->dueDate:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/google/android/calendar/task/assist/PayBillTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;->dueDate:Lcom/google/personalization/assist/annotate/api/nano/Time;

    iget-wide v2, v1, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 33
    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$plurals;->task_assist_days_left:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 33
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/assist/PayBillTaskAssist;->getAssistActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_public_grey600_24:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "pay"

    invoke-static {v0}, Lcom/google/android/calendar/task/assist/PayBillTaskAssist;->getAssistFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryDisplayText(Landroid/content/Context;)Landroid/text/SpannableString;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/assist/PayBillTaskAssist;->getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 60
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
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/google/android/calendar/task/assist/PayBillTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;->payUrl:Ljava/lang/String;

    .line 66
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    invoke-static {p1, v0}, Lcom/google/android/calendar/task/assist/PayBillTaskAssist;->prepareToGotoAssist(Landroid/content/Context;Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/task/assist/PayBillTaskAssist;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 69
    return-void
.end method
