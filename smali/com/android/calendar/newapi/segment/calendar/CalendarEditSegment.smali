.class public Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;
.super Lcom/android/calendar/newapi/segment/common/EditSegment;
.source "CalendarEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/EditSegment",
        "<",
        "Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment$Listener;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mTextView:Lcom/android/calendar/newapi/view/TextTileView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment$Listener;->onCalendarClicked()V

    .line 40
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/android/calendar/newapi/segment/common/EditSegment;->onFinishInflate()V

    .line 33
    sget v0, Lcom/android/calendar/R$id;->calendar_tile:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/view/TextTileView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;->mTextView:Lcom/android/calendar/newapi/view/TextTileView;

    .line 34
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;->mTextView:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/view/TextTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method public setCalendar(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;->mTextView:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 44
    return-void
.end method
