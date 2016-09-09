.class public Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;
.super Lcom/android/calendar/timely/DayPopUpFragment$DayView;
.source "DayPopUpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/DayPopUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NoDayHeaderDayView"
.end annotation


# instance fields
.field private final mChipMarginHorizontal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/OverlayFragment;)V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/OverlayFragment;)V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    sget v1, Lcom/android/calendar/R$dimen;->day_pop_up_chip_margin_horizontal:I

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;->mChipMarginHorizontal:I

    .line 157
    return-void
.end method


# virtual methods
.method protected getBottomPadding()I
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;->getDefaultPaddingHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;->getChipSpacingHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEventLayoutEndX()I
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;->getViewWidth()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;->mChipMarginHorizontal:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEventLayoutStartX()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;->mChipMarginHorizontal:I

    return v0
.end method

.method protected getNowLineMarginStart()I
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;->mChipMarginHorizontal:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;->getNowLineRadius()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
