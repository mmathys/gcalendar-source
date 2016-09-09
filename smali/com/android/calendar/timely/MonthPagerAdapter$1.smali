.class Lcom/android/calendar/timely/MonthPagerAdapter$1;
.super Ljava/lang/Object;
.source "MonthPagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/MonthPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/MonthPagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/MonthPagerAdapter;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/calendar/timely/MonthPagerAdapter$1;->this$0:Lcom/android/calendar/timely/MonthPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter$1;->this$0:Lcom/android/calendar/timely/MonthPagerAdapter;

    # getter for: Lcom/android/calendar/timely/MonthPagerAdapter;->mPrimaryMonthView:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v0}, Lcom/android/calendar/timely/MonthPagerAdapter;->access$000(Lcom/android/calendar/timely/MonthPagerAdapter;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter$1;->this$0:Lcom/android/calendar/timely/MonthPagerAdapter;

    # getter for: Lcom/android/calendar/timely/MonthPagerAdapter;->mPrimaryMonthView:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v0}, Lcom/android/calendar/timely/MonthPagerAdapter;->access$000(Lcom/android/calendar/timely/MonthPagerAdapter;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/CalendarMonthView;->requestInitialAccessibilityFocus()V

    .line 33
    :cond_0
    return-void
.end method
