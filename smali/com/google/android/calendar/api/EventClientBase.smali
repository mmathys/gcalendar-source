.class abstract Lcom/google/android/calendar/api/EventClientBase;
.super Ljava/lang/Object;
.source "EventClientBase.java"

# interfaces
.implements Lcom/google/android/calendar/api/EventClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/EventClientBase$Result;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mApi:Lcom/google/android/calendar/api/CrudApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/Event;",
            "Lcom/google/android/calendar/api/EventModifications;",
            "Lcom/google/android/calendar/api/EventDescriptor;",
            "Lcom/google/android/calendar/api/EventFilterOptions;",
            "Lcom/google/android/calendar/api/EventUpdateOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/calendar/api/EventClientBase;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/api/EventClientBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/calendar/api/CrudApi;)V
    .locals 1
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
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/CrudApi;

    iput-object v0, p0, Lcom/google/android/calendar/api/EventClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    .line 86
    return-void
.end method


# virtual methods
.method protected synchronousCreate(Lcom/google/android/calendar/api/EventModifications;)Lcom/google/android/calendar/api/EventClient$CreateResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/android/calendar/api/EventClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/calendar/api/EventDescriptor;

    .line 90
    new-instance v0, Lcom/google/android/calendar/api/EventClientBase$Result;

    if-eqz v3, :cond_1

    move v1, v2

    :goto_0
    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/api/EventClientBase$Result;-><init>(IILcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/Event;[Lcom/google/android/calendar/api/Event;Lcom/google/android/calendar/api/EventClientBase$1;)V

    return-object v0

    :cond_1
    const/16 v1, 0xd

    goto :goto_0
.end method

.method protected synchronousDelete(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/calendar/api/EventClient$GenericResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 112
    iget-object v0, p0, Lcom/google/android/calendar/api/EventClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->delete(Ljava/lang/Object;)Z

    move-result v2

    .line 113
    new-instance v0, Lcom/google/android/calendar/api/EventClientBase$Result;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/api/EventClientBase$Result;-><init>(IILcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/Event;[Lcom/google/android/calendar/api/Event;Lcom/google/android/calendar/api/EventClientBase$1;)V

    return-object v0

    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method protected synchronousRead(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/calendar/api/EventClient$ReadResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/google/android/calendar/api/EventClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/calendar/api/Event;

    .line 96
    new-instance v0, Lcom/google/android/calendar/api/EventClientBase$Result;

    if-eqz v4, :cond_1

    move v1, v2

    :goto_0
    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/api/EventClientBase$Result;-><init>(IILcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/Event;[Lcom/google/android/calendar/api/Event;Lcom/google/android/calendar/api/EventClientBase$1;)V

    return-object v0

    :cond_1
    const/16 v1, 0xd

    goto :goto_0
.end method

.method protected synchronousUpdate(Lcom/google/android/calendar/api/EventModifications;Lcom/google/android/calendar/api/EventUpdateOptions;)Lcom/google/android/calendar/api/EventClient$GenericResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 102
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getOriginal()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/google/android/calendar/api/EventClientBase$Result;

    const/16 v1, 0xd

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/api/EventClientBase$Result;-><init>(IILcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/Event;[Lcom/google/android/calendar/api/Event;Lcom/google/android/calendar/api/EventClientBase$1;)V

    .line 107
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1, p2}, Lcom/google/android/calendar/api/CrudApi;->update(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 107
    new-instance v4, Lcom/google/android/calendar/api/EventClientBase$Result;

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v5, v2

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/calendar/api/EventClientBase$Result;-><init>(IILcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/Event;[Lcom/google/android/calendar/api/Event;Lcom/google/android/calendar/api/EventClientBase$1;)V

    move-object v0, v4

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_1
.end method
