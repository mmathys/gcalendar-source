.class Lcom/android/calendar/timely/findatime/ui/LabelsUtil;
.super Ljava/lang/Object;
.source "LabelsUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/calendar/timely/findatime/ui/LabelsUtil;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/findatime/ui/LabelsUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDateBasedTimeframeLabel(Landroid/app/Fragment;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/calendar/timely/findatime/ui/LabelsUtil;->getDateBasedTimeframeLabel(Landroid/app/Fragment;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDateBasedTimeframeLabel(Landroid/app/Fragment;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;ZZ)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 38
    if-eqz p2, :cond_0

    const/high16 v6, 0x10000

    .line 39
    :goto_0
    iget-object v1, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v2

    .line 40
    iget-object v1, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-virtual {p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeOption()I

    move-result v1

    invoke-static {v1, p3}, Lcom/android/calendar/timely/findatime/ui/LabelsUtil;->getTimeframeId(IZ)I

    move-result v8

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-wide v4, v2

    .line 43
    invoke-static/range {v1 .. v7}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 41
    invoke-virtual {p0, v8, v9}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v6, v0

    .line 38
    goto :goto_0
.end method

.method static getDurationLabel(Landroid/app/Fragment;IZ)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    div-int/lit8 v0, p1, 0x3c

    .line 116
    rem-int/lit8 v2, p1, 0x3c

    .line 117
    if-eqz v0, :cond_0

    .line 118
    if-eqz p2, :cond_3

    .line 119
    sget v3, Lcom/android/calendar/R$string;->find_time_duration_hour_label_abbrev:I

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {p0, v3, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    if-eqz v2, :cond_0

    .line 123
    sget v0, Lcom/android/calendar/R$string;->find_time_duration_hour_minute_word_break:I

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_0
    if-eqz p1, :cond_1

    if-eqz v2, :cond_2

    .line 127
    :cond_1
    if-eqz p2, :cond_4

    .line 128
    sget v0, Lcom/android/calendar/R$string;->find_time_duration_minute_label_abbrev:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-virtual {p0, v0, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$plurals;->find_time_duration_hour_label:I

    new-array v5, v8, [Ljava/lang/Object;

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 120
    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$plurals;->find_time_duration_minute_label:I

    new-array v4, v8, [Ljava/lang/Object;

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 129
    invoke-virtual {v0, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static getTimeframeDurationLabel(Landroid/app/Fragment;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->isDateBasedTimeframe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0, p1, v6, v5}, Lcom/android/calendar/timely/findatime/ui/LabelsUtil;->getDateBasedTimeframeLabel(Landroid/app/Fragment;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    iget v1, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    invoke-static {p0, v1, p2}, Lcom/android/calendar/timely/findatime/ui/LabelsUtil;->getDurationLabel(Landroid/app/Fragment;IZ)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->find_a_time_duration_timeframe_filter_format:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getSelectedTimeframeLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getTimeframeId(IZ)I
    .locals 3

    .prologue
    .line 20
    packed-switch p0, :pswitch_data_0

    .line 30
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/LabelsUtil;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected type of timeframe received!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 31
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 22
    :pswitch_0
    if-eqz p1, :cond_0

    .line 23
    sget v0, Lcom/android/calendar/R$string;->find_time_timeframe_picker_within_a_date_label:I

    goto :goto_0

    .line 24
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->find_a_time_duration_timeframe_filter_around_custom:I

    goto :goto_0

    .line 26
    :pswitch_1
    if-eqz p1, :cond_1

    .line 27
    sget v0, Lcom/android/calendar/R$string;->find_time_timeframe_picker_on_a_date_label:I

    goto :goto_0

    .line 28
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->find_a_time_duration_timeframe_filter_on_custom:I

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
