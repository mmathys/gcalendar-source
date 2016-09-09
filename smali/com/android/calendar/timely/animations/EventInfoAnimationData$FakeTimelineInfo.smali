.class Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;
.super Ljava/lang/Object;
.source "EventInfoAnimationData.java"

# interfaces
.implements Lcom/android/calendar/timely/TimelineInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/animations/EventInfoAnimationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FakeTimelineInfo"
.end annotation


# instance fields
.field private final gridModeRatio:F

.field private final inGridMode:Z


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;->gridModeRatio:F

    .line 112
    iput-boolean p2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;->inGridMode:Z

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;)F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;->gridModeRatio:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;->inGridMode:Z

    return v0
.end method


# virtual methods
.method public canDrawBackgroundImage()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public getGridModeRatio()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;->gridModeRatio:F

    return v0
.end method

.method public inGridMode()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;->inGridMode:Z

    return v0
.end method

.method public inListView()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isChipClickable()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public isSingleDayOnly()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public setAgendaScrollOffsetToNow(I)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public shouldDrawDayHeader()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawExtraHeaders()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawMonthHeader(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 188
    sget v0, Lcom/android/calendar/R$bool;->show_timeline_month_header_images:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public shouldDrawMonthInDayHeader()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawNoEventsView()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawNowLine()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawYearHeader()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSwipe()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method
