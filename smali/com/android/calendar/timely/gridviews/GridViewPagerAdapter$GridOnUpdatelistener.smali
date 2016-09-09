.class public Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;
.super Ljava/lang/Object;
.source "GridViewPagerAdapter.java"

# interfaces
.implements Lcom/android/calendar/timely/DataFactory$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridOnUpdatelistener"
.end annotation


# instance fields
.field private final mAllDayView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

.field private final mContext:Landroid/content/Context;

.field private final mDayView:Lcom/android/calendar/timely/gridviews/GridDayView;

.field private final mNumDays:I

.field private mTag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/calendar/timely/gridviews/GridDayView;Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mContext:Landroid/content/Context;

    .line 392
    iput p2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mTag:I

    .line 393
    iput p3, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mNumDays:I

    .line 394
    iput-object p4, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mDayView:Lcom/android/calendar/timely/gridviews/GridDayView;

    .line 395
    iput-object p5, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mAllDayView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    .line 396
    return-void
.end method


# virtual methods
.method public getListenerTag()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mTag:I

    return v0
.end method

.method public getListenerTagType()I
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x5

    return v0
.end method

.method public onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mDayView:Lcom/android/calendar/timely/gridviews/GridDayView;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mNumDays:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/calendar/timely/gridviews/GridDayView;->onUpdate(Lcom/android/calendar/timely/MonthData;II)V

    .line 401
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mAllDayView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mNumDays:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->onUpdate(Lcom/android/calendar/timely/MonthData;II)V

    .line 402
    return-void
.end method

.method public postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mDayView:Lcom/android/calendar/timely/gridviews/GridDayView;

    new-instance v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener$1;-><init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;Lcom/android/calendar/timely/MonthData;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/GridDayView;->post(Ljava/lang/Runnable;)Z

    .line 412
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "WeekPagerAdapter postUpdate"

    .line 415
    invoke-interface {v0, v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 417
    :cond_0
    return-void
.end method

.method public setListenerTag(I)V
    .locals 0

    .prologue
    .line 421
    iput p1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;->mTag:I

    .line 422
    return-void
.end method
