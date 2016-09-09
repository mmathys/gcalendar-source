.class public abstract Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;
.super Ljava/lang/Object;
.source "CalendarMonthView.java"

# interfaces
.implements Lcom/android/calendar/timely/DataFactory$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/CalendarMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "OnMonthlyUpdateListener"
.end annotation


# instance fields
.field private mDataListenerTag:I

.field private mDisabled:Z

.field final synthetic this$0:Lcom/android/calendar/timely/CalendarMonthView;


# direct methods
.method protected constructor <init>(Lcom/android/calendar/timely/CalendarMonthView;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;->this$0:Lcom/android/calendar/timely/CalendarMonthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;->mDisabled:Z

    .line 480
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;->mDisabled:Z

    .line 476
    return-void
.end method

.method public getListenerTag()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;->mDataListenerTag:I

    return v0
.end method

.method public onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 3

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;->mDisabled:Z

    if-eqz v0, :cond_0

    .line 485
    # getter for: Lcom/android/calendar/timely/CalendarMonthView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/CalendarMonthView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUpdate called after unregistering"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 489
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;->this$0:Lcom/android/calendar/timely/CalendarMonthView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/calendar/timely/CalendarMonthView;->onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    goto :goto_0
.end method

.method public postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;->this$0:Lcom/android/calendar/timely/CalendarMonthView;

    new-instance v1, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener$1;-><init>(Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;Lcom/android/calendar/timely/MonthData;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/CalendarMonthView;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method public setListenerTag(I)V
    .locals 0

    .prologue
    .line 503
    iput p1, p0, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;->mDataListenerTag:I

    .line 504
    return-void
.end method
