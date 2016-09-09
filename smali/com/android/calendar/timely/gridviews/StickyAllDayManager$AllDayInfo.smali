.class public Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;
.super Ljava/lang/Object;
.source "StickyAllDayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/gridviews/StickyAllDayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AllDayInfo"
.end annotation


# instance fields
.field allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

.field allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

.field allDayScrollView:Landroid/widget/ScrollView;

.field collapseButton:Landroid/view/View;

.field countOfChips:I

.field daysScrollView:Lcom/android/calendar/timely/PagedScrollView;

.field parentView:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
