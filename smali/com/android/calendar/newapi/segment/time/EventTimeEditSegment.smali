.class public Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;
.super Lcom/android/calendar/newapi/segment/time/TimeEditSegment;
.source "EventTimeEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/time/TimeEditSegment",
        "<",
        "Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mAllDaySwitch:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

.field private mEndDateTextView:Landroid/widget/TextView;

.field private mEndTimeTextView:Landroid/widget/TextView;

.field private mStartDateTextView:Landroid/widget/TextView;

.field private mStartTimeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/time/TimeEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;Z)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->onSwitchToggled(Z)V

    return-void
.end method

.method private onSwitchToggled(Z)V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getListener()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;

    invoke-interface {v0, p1}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;->onAllDayToggled(Z)V

    .line 93
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 78
    sget v0, Lcom/android/calendar/R$id;->start_time_text:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getListener()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;->onStartTimeClicked()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->start_date_text:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getListener()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;->onStartDateClicked()V

    goto :goto_0

    .line 82
    :cond_2
    sget v0, Lcom/android/calendar/R$id;->end_time_text:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getListener()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;->onEndTimeClicked()V

    goto :goto_0

    .line 84
    :cond_3
    sget v0, Lcom/android/calendar/R$id;->end_date_text:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 85
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getListener()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;->onEndDateClicked()V

    goto :goto_0

    .line 86
    :cond_4
    sget v0, Lcom/android/calendar/R$id;->all_day_tile:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mAllDaySwitch:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->toggle()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/calendar/newapi/segment/time/TimeEditSegment;->onFinishInflate()V

    .line 57
    sget v0, Lcom/android/calendar/R$id;->start_time_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mStartTimeTextView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mStartTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget v0, Lcom/android/calendar/R$id;->start_date_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mStartDateTextView:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mStartDateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v0, Lcom/android/calendar/R$id;->end_time_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mEndTimeTextView:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mEndTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcom/android/calendar/R$id;->end_date_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mEndDateTextView:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mEndDateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget v0, Lcom/android/calendar/R$id;->switch_view:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mAllDaySwitch:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    .line 67
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mAllDaySwitch:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    new-instance v1, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$1;-><init>(Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    sget v0, Lcom/android/calendar/R$id;->all_day_tile:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public setDateTime(Ljava/util/Calendar;Ljava/util/Calendar;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mAllDaySwitch:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    invoke-virtual {v0, p3}, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->setCheckedStealthily(Z)V

    .line 99
    iget-object v3, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mStartTimeTextView:Landroid/widget/TextView;

    if-nez p3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 100
    iget-object v3, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mEndTimeTextView:Landroid/widget/TextView;

    if-nez p3, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 103
    if-nez p3, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 107
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 108
    iget-object v4, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mStartTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v4, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mStartTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/calendar/R$string;->accessibility_pick_start_time:I

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v3, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mEndTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v3, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mEndTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$string;->accessibility_pick_end_time:I

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 119
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getDateFormatFlags()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-static {v0, v4, v5, v3, v6}, Lcom/android/calendar/Utils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v3, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mStartDateTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mStartDateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$string;->accessibility_pick_start_date:I

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 125
    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/android/calendar/time/CalendarUtils;->isMidnight(Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 131
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getDateFormatFlags()I

    move-result v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/calendar/Utils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    iget-object v4, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mEndDateTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v4, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mEndDateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/calendar/R$string;->accessibility_pick_end_date:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {p1, v0, p3}, Lcom/android/calendar/Utils;->isValidEventTime(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v0

    .line 138
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 139
    sget v0, Lcom/android/calendar/R$color;->edit_text_dark:I

    .line 138
    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mStartDateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->mStartTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    return-void

    :cond_2
    move v0, v2

    .line 99
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 100
    goto/16 :goto_1

    .line 139
    :cond_4
    sget v0, Lcom/android/calendar/R$color;->edit_edit_text_error_color:I

    goto :goto_2
.end method
