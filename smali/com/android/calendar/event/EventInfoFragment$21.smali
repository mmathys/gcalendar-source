.class Lcom/android/calendar/event/EventInfoFragment$21;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 2593
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$21;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$21;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->timezoneUpdate()V
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$4200(Lcom/android/calendar/event/EventInfoFragment;)V

    .line 2597
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$21;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout;

    .line 2598
    instance-of v2, v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$OnTimezoneListener;

    if-eqz v2, :cond_0

    .line 2599
    invoke-virtual {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->onRefreshModel()V

    goto :goto_0

    .line 2602
    :cond_1
    return-void
.end method
