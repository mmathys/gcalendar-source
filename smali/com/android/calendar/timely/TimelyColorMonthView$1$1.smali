.class Lcom/android/calendar/timely/TimelyColorMonthView$1$1;
.super Ljava/lang/Object;
.source "TimelyColorMonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyColorMonthView$1;->postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/timely/TimelyColorMonthView$1;

.field final synthetic val$data:Lcom/android/calendar/timely/MonthData;

.field final synthetic val$forceShow:Z

.field final synthetic val$julianDay:I


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyColorMonthView$1;ILcom/android/calendar/timely/MonthData;Z)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1$1;->this$1:Lcom/android/calendar/timely/TimelyColorMonthView$1;

    iput p2, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1$1;->val$julianDay:I

    iput-object p3, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1$1;->val$data:Lcom/android/calendar/timely/MonthData;

    iput-boolean p4, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1$1;->val$forceShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 306
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1$1;->val$julianDay:I

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1$1;->this$1:Lcom/android/calendar/timely/TimelyColorMonthView$1;

    iget-object v1, v1, Lcom/android/calendar/timely/TimelyColorMonthView$1;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mFirstJulianDay:I
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$000(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1$1;->this$1:Lcom/android/calendar/timely/TimelyColorMonthView$1;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1$1;->val$data:Lcom/android/calendar/timely/MonthData;

    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1$1;->val$julianDay:I

    iget-boolean v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1$1;->val$forceShow:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/timely/TimelyColorMonthView$1;->onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    .line 309
    :cond_0
    return-void
.end method
