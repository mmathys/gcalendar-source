.class public interface abstract Lcom/google/android/calendar/api/EventClient;
.super Ljava/lang/Object;
.source "EventClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/EventClient$GenericResult;,
        Lcom/google/android/calendar/api/EventClient$ListResult;,
        Lcom/google/android/calendar/api/EventClient$ReadResult;,
        Lcom/google/android/calendar/api/EventClient$CreateResult;
    }
.end annotation


# virtual methods
.method public abstract create(Lcom/google/android/calendar/api/EventModifications;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract delete(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract read(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract update(Lcom/google/android/calendar/api/EventModifications;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method
