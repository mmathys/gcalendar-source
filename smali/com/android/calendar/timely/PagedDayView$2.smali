.class Lcom/android/calendar/timely/PagedDayView$2;
.super Ljava/lang/Object;
.source "PagedDayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/PagedDayView;->postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/PagedDayView;

.field final synthetic val$data:Lcom/android/calendar/timely/MonthData;

.field final synthetic val$forceShow:Z

.field final synthetic val$julianDay:I


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/PagedDayView;ILcom/android/calendar/timely/MonthData;Z)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/calendar/timely/PagedDayView$2;->this$0:Lcom/android/calendar/timely/PagedDayView;

    iput p2, p0, Lcom/android/calendar/timely/PagedDayView$2;->val$julianDay:I

    iput-object p3, p0, Lcom/android/calendar/timely/PagedDayView$2;->val$data:Lcom/android/calendar/timely/MonthData;

    iput-boolean p4, p0, Lcom/android/calendar/timely/PagedDayView$2;->val$forceShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 208
    iget v0, p0, Lcom/android/calendar/timely/PagedDayView$2;->val$julianDay:I

    const v1, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v0, v1

    .line 209
    iget-object v1, p0, Lcom/android/calendar/timely/PagedDayView$2;->this$0:Lcom/android/calendar/timely/PagedDayView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/PagedDayView;->getTimelyDayView()Lcom/android/calendar/timely/TimelyDayView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyDayView;->getPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView$2;->this$0:Lcom/android/calendar/timely/PagedDayView;

    iget-object v1, p0, Lcom/android/calendar/timely/PagedDayView$2;->val$data:Lcom/android/calendar/timely/MonthData;

    iget v2, p0, Lcom/android/calendar/timely/PagedDayView$2;->val$julianDay:I

    iget-boolean v3, p0, Lcom/android/calendar/timely/PagedDayView$2;->val$forceShow:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/timely/PagedDayView;->onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    .line 215
    :cond_0
    return-void
.end method
