.class public Lcom/android/calendar/timely/DelayedUpdateHelper;
.super Ljava/lang/Object;
.source "DelayedUpdateHelper.java"

# interfaces
.implements Lcom/android/calendar/timely/OnTimelineGestureListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChipsSwiped:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/calendar/timely/TimelyChip;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayedUpdate:Ljava/lang/Runnable;

.field private mOnTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

.field private final mOnUpdateListener:Lcom/android/calendar/timely/DataFactory$OnUpdateListener;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/calendar/timely/DelayedUpdateHelper;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/DelayedUpdateHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/calendar/timely/DataFactory$OnUpdateListener;Lcom/android/calendar/timely/OnTimelineGestureListener;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mChipsSwiped:Ljava/util/HashSet;

    .line 37
    iput-object p1, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mView:Landroid/view/View;

    .line 38
    iput-object p2, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mOnUpdateListener:Lcom/android/calendar/timely/DataFactory$OnUpdateListener;

    .line 39
    iput-object p3, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mOnTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/DelayedUpdateHelper;)Lcom/android/calendar/timely/DataFactory$OnUpdateListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mOnUpdateListener:Lcom/android/calendar/timely/DataFactory$OnUpdateListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/calendar/timely/DelayedUpdateHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mDelayedUpdate:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/DelayedUpdateHelper;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/calendar/timely/DelayedUpdateHelper;->updateIfIdleAndNeeded()V

    return-void
.end method

.method private updateIfIdleAndNeeded()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mDelayedUpdate:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/DelayedUpdateHelper;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mDelayedUpdate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mDelayedUpdate:Ljava/lang/Runnable;

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public isIdle()Z
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mChipsSwiped:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwipeGestureEnd(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mChipsSwiped:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/android/calendar/timely/DelayedUpdateHelper;->TAG:Ljava/lang/String;

    const-string v1, "Swipe end without start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mOnTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mOnTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    invoke-interface {v0, p1}, Lcom/android/calendar/timely/OnTimelineGestureListener;->onSwipeGestureEnd(Lcom/android/calendar/timely/TimelyChip;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/calendar/timely/DelayedUpdateHelper$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/DelayedUpdateHelper$3;-><init>(Lcom/android/calendar/timely/DelayedUpdateHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSwipeGestureStart(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mChipsSwiped:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    sget-object v0, Lcom/android/calendar/timely/DelayedUpdateHelper;->TAG:Ljava/lang/String;

    const-string v1, "Duplicate swipe start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mOnTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mOnTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    invoke-interface {v0, p1}, Lcom/android/calendar/timely/OnTimelineGestureListener;->onSwipeGestureStart(Lcom/android/calendar/timely/TimelyChip;)V

    goto :goto_0
.end method

.method public onWeekDividerTap(Lcom/android/calendar/timely/TimelyDayView;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mOnTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mOnTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    invoke-interface {v0, p1}, Lcom/android/calendar/timely/OnTimelineGestureListener;->onWeekDividerTap(Lcom/android/calendar/timely/TimelyDayView;)V

    .line 63
    :cond_0
    return-void
.end method

.method public postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/android/calendar/timely/DelayedUpdateHelper$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/calendar/timely/DelayedUpdateHelper$1;-><init>(Lcom/android/calendar/timely/DelayedUpdateHelper;Lcom/android/calendar/timely/MonthData;IZ)V

    .line 49
    iget-object v1, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mView:Landroid/view/View;

    new-instance v2, Lcom/android/calendar/timely/DelayedUpdateHelper$2;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/timely/DelayedUpdateHelper$2;-><init>(Lcom/android/calendar/timely/DelayedUpdateHelper;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method

.method public setOnTimelineGestureListener(Lcom/android/calendar/timely/OnTimelineGestureListener;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/calendar/timely/DelayedUpdateHelper;->mOnTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    .line 115
    return-void
.end method
