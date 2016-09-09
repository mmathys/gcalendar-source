.class public Lcom/google/android/calendar/task/assist/CallOrganizationTaskAssist;
.super Lcom/google/android/calendar/task/assist/CallTaskAssist;
.source "CallOrganizationTaskAssist.java"


# direct methods
.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/assist/CallTaskAssist;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    .line 23
    const-string v0, "callOrganization"

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/CallOrganizationTaskAssist;->mAnalyticsLabel:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private getAdditionalInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/CallOrganizationTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    .line 34
    if-eqz v0, :cond_0

    .line 35
    new-instance v1, Lcom/google/android/calendar/task/ParsedOpeningHours;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/task/ParsedOpeningHours;-><init>(Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;)V

    .line 36
    invoke-virtual {v1}, Lcom/google/android/calendar/task/ParsedOpeningHours;->isValidSchedule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/google/android/calendar/task/ParsedOpeningHours;->getOpenState(J)Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;

    move-result-object v0

    .line 39
    sget-object v4, Lcom/google/android/calendar/task/assist/CallOrganizationTaskAssist$1;->$SwitchMap$com$google$android$calendar$task$ParsedOpeningHours$OpenState:[I

    invoke-virtual {v0}, Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    sget v0, Lcom/android/calendar/R$string;->call_organization_additional_open:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-virtual {v1, v2, v3}, Lcom/google/android/calendar/task/ParsedOpeningHours;->getNextTimeChange(J)J

    move-result-wide v2

    .line 46
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v2, v3, v2, v3}, Lcom/android/calendar/DateTimeFormatHelper;->getTimeRangeText(JJ)Ljava/lang/String;

    move-result-object v1

    .line 48
    sget-object v2, Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;->OPEN:Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;

    if-ne v0, v2, :cond_1

    .line 49
    sget v0, Lcom/android/calendar/R$string;->call_organization_additional_open:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_1
    sget v2, Lcom/android/calendar/R$string;->call_organization_additional_info_task_assist:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->call_organization_additional_closed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/android/calendar/task/assist/CallOrganizationTaskAssist;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/calendar/task/assist/CallOrganizationTaskAssist;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneNumber()Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/CallOrganizationTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    return-object v0
.end method

.method public getSecondaryDisplayText(Landroid/content/Context;)Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/assist/CallOrganizationTaskAssist;->getAdditionalInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 74
    if-nez v3, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 79
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->call_organization_additional_open:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    sget v0, Lcom/android/calendar/R$string;->call_organization_additional_open:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 84
    :goto_1
    if-eqz v1, :cond_2

    sget v0, Lcom/android/calendar/R$color;->google_green:I

    .line 86
    :goto_2
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v0, 0x0

    .line 88
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x21

    .line 87
    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v1

    .line 90
    goto :goto_0

    .line 83
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->call_organization_additional_closed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 84
    :cond_2
    sget v0, Lcom/android/calendar/R$color;->google_red:I

    goto :goto_2
.end method
