.class Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$VisibilityAtom;
.super Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;
.source "MutableEventImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibilityAtom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/Visibility;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;Lcom/google/calendar/v2/client/service/api/events/Visibility;)V
    .locals 1

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$VisibilityAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    .line 101
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    invoke-direct {p0, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;-><init>(Ljava/lang/Object;)V

    .line 102
    return-void
.end method


# virtual methods
.method public set(Lcom/google/calendar/v2/client/service/api/events/Visibility;)Z
    .locals 3

    .prologue
    .line 106
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$VisibilityAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startBatchUpdate()V

    .line 108
    invoke-super {p0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->set(Ljava/lang/Object;)Z

    move-result v0

    .line 109
    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    if-ne p1, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$VisibilityAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanModify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    invoke-static {v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->access$100(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 111
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$VisibilityAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->access$200(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/Availability;->AVAILABLE:Lcom/google/calendar/v2/client/service/api/events/Availability;

    invoke-interface {v1, v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$VisibilityAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->finishBatchUpdate()V

    .line 114
    return v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 99
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$VisibilityAtom;->set(Lcom/google/calendar/v2/client/service/api/events/Visibility;)Z

    move-result v0

    return v0
.end method
