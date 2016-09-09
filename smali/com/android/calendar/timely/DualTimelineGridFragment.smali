.class public Lcom/android/calendar/timely/DualTimelineGridFragment;
.super Lcom/android/calendar/timely/AbstractTimelineGridFragment;
.source "DualTimelineGridFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/calendar/timely/DualTimelineGridFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/DualTimelineGridFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/android/calendar/R$layout;->dual_timeline_grid_fragment:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;-><init>(I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/calendar/timely/DualTimelineGridFragment;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1DayView"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ScheduleView"

    goto :goto_0
.end method

.method public hasMinimonth()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public hasTimegrid()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public hasTimeline()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public isMiniMonthDraggable(Z)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/calendar/timely/DualTimelineGridFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiniMonthToggleable(Z)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/calendar/timely/DualTimelineGridFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/DualTimelineGridFragment;->isTargetingGridMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
