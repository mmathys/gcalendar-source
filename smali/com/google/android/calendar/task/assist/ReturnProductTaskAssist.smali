.class public Lcom/google/android/calendar/task/assist/ReturnProductTaskAssist;
.super Lcom/google/android/calendar/task/assist/UrlTaskAssist;
.source "ReturnProductTaskAssist.java"


# instance fields
.field private final returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;


# direct methods
.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V
    .locals 1

    .prologue
    .line 20
    const-string v0, "shipment"

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/calendar/task/assist/UrlTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;ILjava/lang/String;)V

    .line 21
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/ReturnProductTaskAssist;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    .line 22
    return-void
.end method


# virtual methods
.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xc

    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 26
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/ReturnProductTaskAssist;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    iget-boolean v0, v0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->alwaysReturnable:Z

    if-eqz v0, :cond_0

    .line 27
    sget v0, Lcom/android/calendar/R$string;->return_task_assist_no_deadline:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/ReturnProductTaskAssist;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDeadline:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_2

    .line 30
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 32
    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 33
    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 34
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 36
    iget-object v1, p0, Lcom/google/android/calendar/task/assist/ReturnProductTaskAssist;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDeadline:Lcom/google/personalization/assist/annotate/api/nano/Time;

    iget-wide v4, v1, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 37
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 38
    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 39
    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 40
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 42
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v0, v2

    .line 43
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 44
    if-lez v0, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$plurals;->return_task_assist_days_left:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 45
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->return_task_assist_passed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/assist/ReturnProductTaskAssist;->getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    sget v0, Lcom/android/calendar/R$string;->describe_shopping_cart_icon:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_shopping_cart_grey600_24:I

    return v0
.end method
