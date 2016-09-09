.class Lcom/android/calendar/event/EventInfoFragment$33;
.super Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->getGrooveCallback()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
        "<",
        "Lcom/android/calendar/groove/TimelineGroove;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 4647
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$33;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4651
    new-instance v1, Lcom/android/calendar/groove/GrooveLoader;

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$33;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$33;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/groove/GrooveLoader;-><init>(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;)V

    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/calendar/groove/TimelineGroove;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ">;",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4656
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$33;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iput-object p2, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 4657
    invoke-virtual {p2}, Lcom/android/calendar/groove/TimelineGroove;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4658
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$33;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {p2, v0}, Lcom/android/calendar/groove/TimelineGroove;->addPreinstanceReminderToCEM(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 4660
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$33;->finishLoader(Landroid/content/Loader;)V

    .line 4661
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4647
    check-cast p2, Lcom/android/calendar/groove/TimelineGroove;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/EventInfoFragment$33;->onLoadFinished(Landroid/content/Loader;Lcom/android/calendar/groove/TimelineGroove;)V

    return-void
.end method
