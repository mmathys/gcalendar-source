.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$6;
.super Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getConferenceTypeCallbacks()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$6;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    new-instance v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ConferenceTypeLoader;

    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$6;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$6;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v2}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$3600(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ConferenceTypeLoader;-><init>(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 800
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$6;->onLoadFinished(Landroid/content/Loader;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$6;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$3700(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$6;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$3800(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    iput-object p2, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedConferenceType:Ljava/lang/String;

    .line 812
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$6;->finishLoader(Landroid/content/Loader;)V

    .line 813
    return-void
.end method
