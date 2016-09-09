.class Lcom/android/calendar/event/edit/EditDetailsFragment$3;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$3;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$3;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$3;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$3;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->getEditorTypeId()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$500(Lcom/android/calendar/event/edit/EditDetailsFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$3;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->getAccountName()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$600(Lcom/android/calendar/event/edit/EditDetailsFragment;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->getOrderedSegments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    invoke-static {v1, v2, v3}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$700(Lcom/android/calendar/event/edit/EditDetailsFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    # setter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$402(Lcom/android/calendar/event/edit/EditDetailsFragment;Ljava/util/Collection;)Ljava/util/Collection;

    .line 268
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$3;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$3;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$400(Lcom/android/calendar/event/edit/EditDetailsFragment;)Ljava/util/Collection;

    move-result-object v1

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->redrawSegmentsInView(Ljava/util/Collection;)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$800(Lcom/android/calendar/event/edit/EditDetailsFragment;Ljava/util/Collection;)V

    .line 269
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 264
    check-cast p1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/EditDetailsFragment$3;->onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    return-void
.end method
