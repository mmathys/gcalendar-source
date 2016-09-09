.class public Lcom/google/android/calendar/task/assist/FinanceTaskAssist;
.super Lcom/google/android/calendar/task/assist/TaskAssistHolder;
.source "FinanceTaskAssist.java"


# direct methods
.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    .line 16
    const-string v0, "finance"

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/FinanceTaskAssist;->mAnalyticsLabel:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/FinanceTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->actionText:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/assist/FinanceTaskAssist;->getAssistActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/android/calendar/task/assist/FinanceTaskAssist;->isTrendingUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_trending_up_grey600_24:I

    .line 41
    :goto_0
    return v0

    .line 43
    :cond_0
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_trending_down_grey600_24:I

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/android/calendar/task/assist/FinanceTaskAssist;->isTrendingUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "stock_up"

    .line 48
    :goto_0
    invoke-static {v0}, Lcom/google/android/calendar/task/assist/FinanceTaskAssist;->getAssistFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "stock_down"

    goto :goto_0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/google/android/calendar/task/assist/FinanceTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->financeUrl:Ljava/lang/String;

    .line 55
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 56
    invoke-static {p1, v0}, Lcom/google/android/calendar/task/assist/FinanceTaskAssist;->prepareToGotoAssist(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/task/assist/FinanceTaskAssist;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method protected isTrendingUp()Z
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/FinanceTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    iget-wide v0, v0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changeDbl:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
