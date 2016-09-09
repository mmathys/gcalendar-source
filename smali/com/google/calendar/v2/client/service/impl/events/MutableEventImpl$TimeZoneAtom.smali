.class Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;
.super Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;
.source "MutableEventImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneAtom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl",
        "<",
        "Lcom/google/calendar/v2/client/service/api/time/TimeZone;",
        ">;"
    }
.end annotation


# instance fields
.field mDateTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;Lcom/google/calendar/v2/client/service/api/time/TimeZone;Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/api/time/TimeZone;",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    .line 149
    invoke-direct {p0, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;-><init>(Ljava/lang/Object;)V

    .line 150
    iput-object p3, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;->mDateTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 151
    return-void
.end method


# virtual methods
.method public set(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Z
    .locals 2

    .prologue
    .line 155
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;->mDateTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;->this$0:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->isAllDay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;->mDateTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;->mDateTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTimeZoneRetainFields(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    invoke-super {p0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 144
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;->set(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Z

    move-result v0

    return v0
.end method
