.class public Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;
.super Lcom/android/calendar/newapi/segment/time/TimeEditSegment;
.source "GrooveTimeEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/time/TimeEditSegment",
        "<",
        "Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment$Listener;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mDateTextView:Landroid/widget/TextView;

.field private mTimeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/time/TimeEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 39
    sget v0, Lcom/android/calendar/R$id;->time_text:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->getListener()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment$Listener;->onTimeClicked()V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->date_text:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->getListener()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment$Listener;->onDateClicked()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/calendar/newapi/segment/time/TimeEditSegment;->onFinishInflate()V

    .line 49
    sget v0, Lcom/android/calendar/R$id;->time_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->mTimeTextView:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget v0, Lcom/android/calendar/R$id;->date_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->mDateTextView:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public setDateTime(Ljava/util/Calendar;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 58
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->accessibility_pick_start_time:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->getDateFormatFlags()I

    move-result v1

    .line 63
    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->accessibility_pick_start_date:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
