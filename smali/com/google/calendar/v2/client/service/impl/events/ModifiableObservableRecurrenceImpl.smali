.class public Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;
.super Ljava/lang/Object;
.source "ModifiableObservableRecurrenceImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;


# instance fields
.field private final atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 18
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 34
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 45
    return-void
.end method

.method public get()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;->get()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance()Lcom/google/calendar/v2/client/service/api/events/MutableRecurrenceData;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;->newInstance()Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;-><init>()V

    return-object v0
.end method

.method public removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 40
    return-void
.end method

.method public set(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;->set(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)Z

    move-result v0

    return v0
.end method
