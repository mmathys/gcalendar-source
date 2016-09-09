.class public Lcom/android/calendar/timely/DayPopUpFragment$DayView;
.super Lcom/android/calendar/timely/TimelyDayView;
.source "DayPopUpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/DayPopUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DayView"
.end annotation


# instance fields
.field public final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/calendar/OverlayFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/OverlayFragment;)V
    .locals 6

    .prologue
    .line 93
    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/TimelyDayView;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/timely/OnTimelineModeChangedListener;I)V

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->mReference:Ljava/lang/ref/WeakReference;

    .line 96
    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->getJulianDay()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lcom/android/calendar/timely/TimelyDayView;->onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    .line 82
    iget-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/OverlayFragment;

    invoke-static {v0, p0}, Lcom/android/calendar/OverlayFragment;->addLayoutChangeListener(Lcom/android/calendar/OverlayFragment;Landroid/view/View;)Lcom/android/calendar/OverlayFragment$LayoutChangeListener;

    goto :goto_0
.end method

.method public onUpdate(Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->getJulianDay()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {p2}, Lcom/android/calendar/Utils;->getDateInfo(I)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->onUpdate(Ljava/util/List;[IZ)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->mDataLoaded:Z

    .line 63
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/OverlayFragment;

    invoke-static {v0, p0}, Lcom/android/calendar/OverlayFragment;->addLayoutChangeListener(Lcom/android/calendar/OverlayFragment;Landroid/view/View;)Lcom/android/calendar/OverlayFragment$LayoutChangeListener;

    goto :goto_0
.end method
