.class public Lcom/android/calendar/timely/gridviews/WeekFragment$WeekViewPageAdapter;
.super Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;
.source "WeekFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/gridviews/WeekFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeekViewPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/gridviews/WeekFragment;Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$WeekViewPageAdapter;->this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;

    .line 350
    const/4 v0, 0x7

    sget v1, Lcom/android/calendar/R$layout;->week_view:I

    # getter for: Lcom/android/calendar/timely/gridviews/WeekFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;
    invoke-static {p1}, Lcom/android/calendar/timely/gridviews/WeekFragment;->access$300(Lcom/android/calendar/timely/gridviews/WeekFragment;)Lcom/android/calendar/timely/ChipRecycler;

    move-result-object v2

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;-><init>(Landroid/app/Activity;IILcom/android/calendar/timely/ChipRecycler;)V

    .line 351
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 360
    const/16 v0, 0xda9

    return v0
.end method

.method public getFirstJulianDayOfItem(I)I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$WeekViewPageAdapter;->mActivity:Landroid/app/Activity;

    .line 355
    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsTime(Landroid/content/Context;)I

    move-result v0

    .line 354
    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getJulianFirstDayFromWeeksSinceEpoch(II)I

    move-result v0

    return v0
.end method
