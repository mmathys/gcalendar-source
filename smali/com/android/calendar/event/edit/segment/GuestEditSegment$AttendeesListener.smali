.class Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;
.super Ljava/lang/Object;
.source "GuestEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttendeesListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V
    .locals 0

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/common/CollectionDelta;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateFindATimeButton()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1500(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    .line 1056
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->beginIgnoreChipChanges()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1600(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    .line 1058
    :try_start_0
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/common/CollectionDelta;->getChanges()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;

    .line 1059
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 1064
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;->getType()Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    move-result-object v3

    sget-object v4, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->ADD:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    .line 1065
    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1700(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    .line 1066
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v4

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->isImplicit(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Z
    invoke-static {v3, v4}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1800(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1700(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->createChipForAttendee(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;
    invoke-static {v3, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1900(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->appendChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1073
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->endIgnoreChipChanges()V
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$2000(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    throw v0

    .line 1068
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;->getType()Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    move-result-object v0

    sget-object v3, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->REMOVE:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    if-ne v0, v3, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1700(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->removeChipByKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->endIgnoreChipChanges()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$2000(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    .line 1075
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateToggleButtonVisibility()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1400(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    .line 1076
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1051
    check-cast p1, Lcom/google/calendar/v2/client/service/common/CollectionDelta;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;->onChange(Lcom/google/calendar/v2/client/service/common/CollectionDelta;)V

    return-void
.end method
