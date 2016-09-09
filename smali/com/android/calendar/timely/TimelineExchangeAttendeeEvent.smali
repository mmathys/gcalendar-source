.class public Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;
.super Lcom/android/calendar/timely/TimelineAttendeeEvent;
.source "TimelineExchangeAttendeeEvent.java"


# instance fields
.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineAttendeeEvent;-><init>()V

    return-void
.end method

.method private getStatusTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    sget v0, Lcom/android/calendar/R$string;->find_a_time_event_tentatively_busy:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_1
    sget v0, Lcom/android/calendar/R$string;->find_a_time_event_busy:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_2
    sget v0, Lcom/android/calendar/R$string;->find_a_time_event_out_of_office:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_3
    sget v0, Lcom/android/calendar/R$string;->find_a_time_event_no_status:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p1, p0, :cond_0

    .line 96
    :goto_0
    return v1

    .line 92
    :cond_0
    instance-of v0, p1, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;

    if-nez v0, :cond_1

    move v1, v2

    .line 93
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 95
    check-cast v0, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;

    .line 96
    invoke-super {p0, p1}, Lcom/android/calendar/timely/TimelineAttendeeEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;->mStatus:I

    iget v0, v0, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;->mStatus:I

    if-ne v3, v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getPenalty()D
    .locals 3

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 53
    iget v2, p0, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;->mStatus:I

    packed-switch v2, :pswitch_data_0

    .line 63
    const-wide/16 v0, 0x0

    :goto_0
    :pswitch_0
    return-wide v0

    .line 55
    :pswitch_1
    const-wide v0, 0x3fd3333333333333L    # 0.3

    goto :goto_0

    .line 59
    :pswitch_2
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/calendar/timely/TimelineAttendeeEvent;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/calendar/Utils;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setStatus(Landroid/content/res/Resources;I)V
    .locals 1

    .prologue
    .line 45
    iput p2, p0, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;->mStatus:I

    .line 46
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;->getStatusTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;->title:Ljava/lang/String;

    .line 47
    return-void
.end method
