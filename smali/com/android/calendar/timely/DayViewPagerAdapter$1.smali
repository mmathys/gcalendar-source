.class Lcom/android/calendar/timely/DayViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "DayViewPagerAdapter.java"

# interfaces
.implements Lcom/android/calendar/timely/TimelineInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/DayViewPagerAdapter;->initialize(Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/OnTimelineModeChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/DayViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$1;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrawBackgroundImage()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public getGridModeRatio()F
    .locals 1

    .prologue
    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public inGridMode()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public inListView()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public isChipClickable()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public isSingleDayOnly()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public setAgendaScrollOffsetToNow(I)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public shouldDrawDayHeader()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawExtraHeaders()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawMonthHeader(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 171
    sget v0, Lcom/android/calendar/R$bool;->show_timeline_month_header_images:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public shouldDrawMonthInDayHeader()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawNoEventsView()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawNowLine()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDrawYearHeader()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSwipe()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method
