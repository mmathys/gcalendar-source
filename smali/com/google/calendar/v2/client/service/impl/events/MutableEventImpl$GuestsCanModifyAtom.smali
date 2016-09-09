.class Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$GuestsCanModifyAtom;
.super Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;
.source "MutableEventImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuestsCanModifyAtom"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;Z)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$GuestsCanModifyAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    .line 72
    invoke-direct {p0, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;-><init>(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public set(Z)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$GuestsCanModifyAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->access$000(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    if-ne v0, v1, :cond_0

    .line 78
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;->set(Z)V

    .line 81
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
