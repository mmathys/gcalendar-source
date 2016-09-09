.class public Lcom/android/calendar/newapi/common/EventLoader;
.super Lcom/android/calendar/newapi/common/AsyncTaskLoader;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/common/AsyncTaskLoader",
        "<",
        "Lcom/google/android/calendar/api/Event;",
        ">;"
    }
.end annotation


# instance fields
.field public mEventClient:Lcom/google/android/calendar/api/EventClient;

.field private mEventDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

.field private mReadResult:Lcom/google/android/calendar/api/EventClient$ReadResult;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/api/EventDescriptor;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/calendar/newapi/common/AsyncTaskLoader;-><init>()V

    .line 17
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Events:Lcom/google/android/calendar/api/EventClient;

    iput-object v0, p0, Lcom/android/calendar/newapi/common/EventLoader;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    .line 23
    iput-object p1, p0, Lcom/android/calendar/newapi/common/EventLoader;->mEventDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs runInBackground([Ljava/lang/Void;)Lcom/google/android/calendar/api/Event;
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/google/android/calendar/api/ColorCache;->initialize()V

    .line 30
    iget-object v0, p0, Lcom/android/calendar/newapi/common/EventLoader;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    iget-object v1, p0, Lcom/android/calendar/newapi/common/EventLoader;->mEventDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/EventClient;->read(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventClient$ReadResult;

    iput-object v0, p0, Lcom/android/calendar/newapi/common/EventLoader;->mReadResult:Lcom/google/android/calendar/api/EventClient$ReadResult;

    .line 31
    iget-object v0, p0, Lcom/android/calendar/newapi/common/EventLoader;->mReadResult:Lcom/google/android/calendar/api/EventClient$ReadResult;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventClient$ReadResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/EventLoader;->loadingFailure()V

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/common/EventLoader;->mReadResult:Lcom/google/android/calendar/api/EventClient$ReadResult;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventClient$ReadResult;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic runInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/common/EventLoader;->runInBackground([Ljava/lang/Void;)Lcom/google/android/calendar/api/Event;

    move-result-object v0

    return-object v0
.end method
