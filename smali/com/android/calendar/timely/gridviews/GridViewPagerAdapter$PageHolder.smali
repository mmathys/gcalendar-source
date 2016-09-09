.class public Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;
.super Ljava/lang/Object;
.source "GridViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageHolder"
.end annotation


# instance fields
.field allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

.field allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

.field allDayScrollView:Landroid/widget/ScrollView;

.field public daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

.field public daysHeaders:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

.field daysScrollView:Lcom/android/calendar/timely/PagedScrollView;

.field firstJulianDay:I

.field public itemPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
