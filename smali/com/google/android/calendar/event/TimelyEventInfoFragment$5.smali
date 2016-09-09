.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$5;
.super Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getContactInfoCallbacks()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/calendar/timely/ContactInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$5;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

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
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/ContactInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 772
    new-instance v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ContactInfoFixer;

    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$5;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$5;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v2}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$3200(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ContactInfoFixer;-><init>(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 768
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$5;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/ContactInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 778
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$5;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$3300(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$5;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$3400(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    iget-object v3, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    .line 780
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 781
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/ContactInfo;

    .line 782
    iget-object v1, v0, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v1, v0, Lcom/android/calendar/timely/ContactInfo;->mPrimaryEmail:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 784
    if-eqz v1, :cond_0

    .line 785
    iget-object v4, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$5;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v4}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$3500(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v4

    new-instance v5, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 786
    invoke-virtual {v1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getStatus()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getRelationship()I

    move-result v1

    invoke-direct {v5, v0, v6, v1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Lcom/android/calendar/timely/ContactInfo;II)V

    .line 785
    invoke-virtual {v4, v5}, Lcom/android/calendar/event/CalendarEventModel;->addAttendee(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V

    .line 780
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 790
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$5;->finishLoader(Landroid/content/Loader;)V

    .line 791
    return-void
.end method
