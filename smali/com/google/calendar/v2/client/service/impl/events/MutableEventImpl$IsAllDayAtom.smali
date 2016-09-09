.class Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;
.super Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;
.source "MutableEventImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsAllDayAtom"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;Z)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    .line 120
    invoke-direct {p0, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;-><init>(Z)V

    .line 121
    return-void
.end method


# virtual methods
.method public matchingAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    if-ne v0, v1, :cond_0

    .line 133
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Availability;->AVAILABLE:Lcom/google/calendar/v2/client/service/api/events/Availability;

    .line 138
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Availability;->AVAILABLE:Lcom/google/calendar/v2/client/service/api/events/Availability;

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Availability;->BUSY:Lcom/google/calendar/v2/client/service/api/events/Availability;

    goto :goto_0
.end method

.method public set(Z)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startBatchUpdate()V

    .line 126
    invoke-super {p0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;->set(Z)V

    .line 127
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->access$200(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;->matchingAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->finishBatchUpdate()V

    .line 129
    return-void
.end method
