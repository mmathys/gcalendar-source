.class public Lcom/android/calendar/widget/WidgetRow$GrooveChip;
.super Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GrooveChip"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    .line 820
    return-void
.end method


# virtual methods
.method public updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;I)V
    .locals 1

    .prologue
    .line 824
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_flag_white_18:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/calendar/widget/WidgetRow$GrooveChip;->updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;II)V

    .line 825
    return-void
.end method

.method protected updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;II)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 830
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$GrooveChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 831
    iget-object v1, p0, Lcom/android/calendar/widget/WidgetRow$GrooveChip;->mTimeString:Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$GrooveChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    iget-boolean v0, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$GrooveChip;->mTimeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/calendar/widget/WidgetRow$GrooveChip;->getStrikeThroughString(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 834
    invoke-virtual {p0, v4}, Lcom/android/calendar/widget/WidgetRow$GrooveChip;->getStrikeThroughString(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    move-object v7, v0

    .line 837
    :goto_0
    sget v2, Lcom/android/calendar/R$id;->title:I

    move-object v0, p0

    move-object v1, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/widget/WidgetRow$GrooveChip;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/CharSequence;II)V

    .line 838
    sget v2, Lcom/android/calendar/R$id;->when:I

    move-object v0, p0

    move-object v1, p2

    move-object v4, v7

    move v5, p3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/widget/WidgetRow$GrooveChip;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/CharSequence;II)V

    .line 839
    return-void

    :cond_0
    move-object v7, v1

    goto :goto_0
.end method
