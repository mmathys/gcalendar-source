.class Lcom/android/calendar/timely/TimelyColorMonthView$1;
.super Ljava/lang/Object;
.source "TimelyColorMonthView.java"

# interfaces
.implements Lcom/android/calendar/timely/DataFactory$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyColorMonthView;->setMonthParams(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyColorMonthView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyColorMonthView;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListenerTag()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mListenerTag:I
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$100(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v0

    return v0
.end method

.method public getListenerTagType()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x7

    return v0
.end method

.method public onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyColorMonthView;->onUpdateData(Lcom/android/calendar/timely/MonthData;)V

    .line 294
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->invalidate()V

    .line 295
    return-void
.end method

.method public postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    new-instance v1, Lcom/android/calendar/timely/TimelyColorMonthView$1$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/calendar/timely/TimelyColorMonthView$1$1;-><init>(Lcom/android/calendar/timely/TimelyColorMonthView$1;ILcom/android/calendar/timely/MonthData;Z)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyColorMonthView;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method public setListenerTag(I)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$1;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # setter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mListenerTag:I
    invoke-static {v0, p1}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$102(Lcom/android/calendar/timely/TimelyColorMonthView;I)I

    .line 316
    return-void
.end method
