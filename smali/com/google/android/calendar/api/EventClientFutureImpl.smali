.class Lcom/google/android/calendar/api/EventClientFutureImpl;
.super Lcom/google/android/calendar/api/EventClientBase;
.source "EventClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/EventClientFutureImpl$Delete;,
        Lcom/google/android/calendar/api/EventClientFutureImpl$Update;,
        Lcom/google/android/calendar/api/EventClientFutureImpl$Read;,
        Lcom/google/android/calendar/api/EventClientFutureImpl$Create;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/api/CrudApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/Event;",
            "Lcom/google/android/calendar/api/EventModifications;",
            "Lcom/google/android/calendar/api/EventDescriptor;",
            "Lcom/google/android/calendar/api/EventFilterOptions;",
            "Lcom/google/android/calendar/api/EventUpdateOptions;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/EventClientBase;-><init>(Lcom/google/android/calendar/api/CrudApi;)V

    .line 128
    return-void
.end method


# virtual methods
.method public create(Lcom/google/android/calendar/api/EventModifications;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/EventModifications;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/EventClient$CreateResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/calendar/api/EventClientFutureImpl$Create;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/api/EventClientFutureImpl$Create;-><init>(Lcom/google/android/calendar/api/EventClientFutureImpl;Lcom/google/android/calendar/api/EventModifications;)V

    return-object v0
.end method

.method public delete(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/EventDescriptor;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/EventClient$GenericResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/google/android/calendar/api/EventClientFutureImpl$Delete;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/api/EventClientFutureImpl$Delete;-><init>(Lcom/google/android/calendar/api/EventClientFutureImpl;Lcom/google/android/calendar/api/EventDescriptor;)V

    return-object v0
.end method

.method public read(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/EventDescriptor;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/EventClient$ReadResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/google/android/calendar/api/EventClientFutureImpl$Read;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/api/EventClientFutureImpl$Read;-><init>(Lcom/google/android/calendar/api/EventClientFutureImpl;Lcom/google/android/calendar/api/EventDescriptor;)V

    return-object v0
.end method

.method public update(Lcom/google/android/calendar/api/EventModifications;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/EventModifications;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/EventClient$GenericResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/calendar/api/EventClientFutureImpl$Update;

    new-instance v1, Lcom/google/android/calendar/api/EventUpdateOptions;

    invoke-direct {v1}, Lcom/google/android/calendar/api/EventUpdateOptions;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/api/EventUpdateOptions;->setScope(I)Lcom/google/android/calendar/api/EventUpdateOptions;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/calendar/api/EventClientFutureImpl$Update;-><init>(Lcom/google/android/calendar/api/EventClientFutureImpl;Lcom/google/android/calendar/api/EventModifications;Lcom/google/android/calendar/api/EventUpdateOptions;)V

    return-object v0
.end method
