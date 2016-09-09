.class Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$2;
.super Ljava/lang/Object;
.source "GridViewPagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->requestInitialAccessibilityFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

.field final synthetic val$daysHeaders:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$2;->this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    iput-object p2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$2;->val$daysHeaders:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$2;->val$daysHeaders:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->requestFocus()Z

    .line 272
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$2;->val$daysHeaders:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    invoke-static {v0}, Lcom/android/calendar/Utils;->requestAccessibilityFocus(Landroid/view/View;)V

    .line 273
    return-void
.end method
