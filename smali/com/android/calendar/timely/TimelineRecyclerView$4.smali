.class Lcom/android/calendar/timely/TimelineRecyclerView$4;
.super Ljava/lang/Object;
.source "TimelineRecyclerView.java"

# interfaces
.implements Lcom/android/calendar/timely/DataFactory$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelineRecyclerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mTag:I

.field final synthetic this$0:Lcom/android/calendar/timely/TimelineRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelineRecyclerView;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$4;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListenerTag()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$4;->mTag:I

    return v0
.end method

.method public getListenerTagType()I
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView$4;->getListenerTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView$4;->getListenerTagType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/calendar/timely/MonthData;->unregisterListener(II)Z

    .line 252
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$4;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    # invokes: Lcom/android/calendar/timely/TimelineRecyclerView;->onDataReady()V
    invoke-static {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->access$300(Lcom/android/calendar/timely/TimelineRecyclerView;)V

    .line 254
    :cond_0
    return-void
.end method

.method public postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView$4;->getListenerTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView$4;->getListenerTagType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/calendar/timely/MonthData;->unregisterListener(II)Z

    .line 262
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$4;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    new-instance v1, Lcom/android/calendar/timely/TimelineRecyclerView$4$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/TimelineRecyclerView$4$1;-><init>(Lcom/android/calendar/timely/TimelineRecyclerView$4;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 269
    :cond_0
    return-void
.end method

.method public setListenerTag(I)V
    .locals 0

    .prologue
    .line 273
    iput p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$4;->mTag:I

    .line 274
    return-void
.end method
