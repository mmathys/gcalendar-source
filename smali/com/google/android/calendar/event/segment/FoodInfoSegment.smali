.class public Lcom/google/android/calendar/event/segment/FoodInfoSegment;
.super Lcom/google/android/calendar/event/segment/SmartInfoSegment;
.source "FoodInfoSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$OnTimezoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/segment/FoodInfoSegment$FoodInfoProvider;
    }
.end annotation


# instance fields
.field private final mReservationTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/FoodInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/FoodInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget v0, Lcom/android/calendar/R$id;->reservation_time:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/FoodInfoSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/FoodInfoSegment;->mReservationTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    .line 44
    return-void
.end method


# virtual methods
.method protected getLabelId()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/android/calendar/R$id;->place_name:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/calendar/R$layout;->segment_food_info:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    return-void
.end method

.method public onRefreshModel()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FoodInfoSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/FoodInfoSegment$FoodInfoProvider;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FoodInfoSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/FoodInfoSegment$FoodInfoProvider;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/FoodInfoSegment;->getLabelId()I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/FoodInfoSegment$FoodInfoProvider;->getPlaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/calendar/event/segment/FoodInfoSegment;->showText(ILjava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/google/android/calendar/event/segment/FoodInfoSegment;->mReservationTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/FoodInfoSegment$FoodInfoProvider;->getStartTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->setTime(Lcom/google/api/services/calendar/model/Time;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/FoodInfoSegment;->hide()V

    goto :goto_0
.end method
