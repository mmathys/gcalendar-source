.class Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener$1;
.super Ljava/lang/Object;
.source "GuestEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;->onChange(Lcom/google/calendar/v2/client/service/common/CollectionDelta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;

.field final synthetic val$changeData:Lcom/google/calendar/v2/client/service/common/CollectionDelta;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;Lcom/google/calendar/v2/client/service/common/CollectionDelta;)V
    .locals 0

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener$1;->this$1:Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;

    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener$1;->val$changeData:Lcom/google/calendar/v2/client/service/common/CollectionDelta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener$1;->val$changeData:Lcom/google/calendar/v2/client/service/common/CollectionDelta;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/CollectionDelta;->getChanges()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;

    .line 1089
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    .line 1090
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener$1;->this$1:Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;

    iget-object v4, v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;->getElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v2

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->isImplicit(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Z
    invoke-static {v4, v2}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1800(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1093
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;->getType()Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    move-result-object v2

    sget-object v4, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->ADD:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    if-ne v2, v4, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener$1;->this$1:Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;

    iget-object v0, v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->addContactChipToModel(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$2200(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V

    goto :goto_0

    .line 1095
    :cond_1
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;->getType()Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    move-result-object v0

    sget-object v2, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->REMOVE:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    if-ne v0, v2, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener$1;->this$1:Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;

    iget-object v0, v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->removeContactChipFromModel(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$2300(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V

    goto :goto_0

    .line 1099
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener$1;->this$1:Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;

    iget-object v0, v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateToggleButtonVisibility()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1400(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    .line 1100
    return-void
.end method
