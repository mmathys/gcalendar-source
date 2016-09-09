.class Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$AvailabilityAtom;
.super Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;
.source "MutableEventImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailabilityAtom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/Availability;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;Lcom/google/calendar/v2/client/service/api/events/Availability;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$AvailabilityAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    .line 86
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Availability;

    invoke-direct {p0, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;-><init>(Ljava/lang/Object;)V

    .line 87
    return-void
.end method


# virtual methods
.method public set(Lcom/google/calendar/v2/client/service/api/events/Availability;)Z
    .locals 2

    .prologue
    .line 91
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$AvailabilityAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->access$000(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    if-ne v0, v1, :cond_0

    .line 93
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Availability;->AVAILABLE:Lcom/google/calendar/v2/client/service/api/events/Availability;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 84
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/Availability;

    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$AvailabilityAtom;->set(Lcom/google/calendar/v2/client/service/api/events/Availability;)Z

    move-result v0

    return v0
.end method
