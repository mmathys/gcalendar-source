.class public abstract Lcom/android/calendar/cache/VolleyRequestKey;
.super Ljava/lang/Object;
.source "VolleyRequestKey.java"

# interfaces
.implements Lcom/android/bitmap/RequestKey;
.implements Lcom/android/bitmap/RequestKey$Cancelable;
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/bitmap/RequestKey;",
        "Lcom/android/bitmap/RequestKey$Cancelable;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<[B>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCallback:Lcom/android/bitmap/RequestKey$Callback;

.field private mLastRequest:Lcom/android/calendar/cache/ByteArrayRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/calendar/cache/VolleyRequestKey;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/cache/VolleyRequestKey;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/android/bitmap/RequestKey$Callback;->NONE:Lcom/android/bitmap/RequestKey$Callback;

    iput-object v0, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mLastRequest:Lcom/android/calendar/cache/ByteArrayRequest;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mLastRequest:Lcom/android/calendar/cache/ByteArrayRequest;

    invoke-virtual {v0}, Lcom/android/calendar/cache/ByteArrayRequest;->cancel()V

    .line 64
    iget-object v0, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/bitmap/RequestKey$Callback;->byteArrayCreated(Lcom/android/bitmap/RequestKey;[B)V

    .line 65
    sget-object v0, Lcom/android/bitmap/RequestKey$Callback;->NONE:Lcom/android/bitmap/RequestKey$Callback;

    iput-object v0, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    .line 67
    :cond_0
    return-void
.end method

.method protected createVolleyRequest(Ljava/lang/String;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;
    .locals 2

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    const/4 p0, 0x0

    .line 36
    :goto_0
    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/cache/VolleyRequestKey;->cancel()V

    .line 32
    iput-object p2, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    .line 33
    new-instance v0, Lcom/android/calendar/cache/ByteArrayRequest;

    invoke-direct {v0, p1, p0, p0}, Lcom/android/calendar/cache/ByteArrayRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v0, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mLastRequest:Lcom/android/calendar/cache/ByteArrayRequest;

    .line 34
    iget-object v0, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mLastRequest:Lcom/android/calendar/cache/ByteArrayRequest;

    const-string v1, "calendar_volley_request"

    invoke-virtual {v0, v1}, Lcom/android/calendar/cache/ByteArrayRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 35
    invoke-static {}, Lcom/android/calendar/cache/VolleyQueueHolder;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mLastRequest:Lcom/android/calendar/cache/ByteArrayRequest;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/bitmap/RequestKey$Callback;->byteArrayCreated(Lcom/android/bitmap/RequestKey;[B)V

    .line 54
    sget-object v0, Lcom/android/calendar/cache/VolleyRequestKey;->TAG:Ljava/lang/String;

    const-string v1, "Failed to perform Volley request"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    sget-object v0, Lcom/android/bitmap/RequestKey$Callback;->NONE:Lcom/android/bitmap/RequestKey$Callback;

    iput-object v0, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    .line 58
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/calendar/cache/VolleyRequestKey;->onResponse([B)V

    return-void
.end method

.method public onResponse([B)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    invoke-interface {v0, p0, p1}, Lcom/android/bitmap/RequestKey$Callback;->byteArrayCreated(Lcom/android/bitmap/RequestKey;[B)V

    .line 48
    sget-object v0, Lcom/android/bitmap/RequestKey$Callback;->NONE:Lcom/android/bitmap/RequestKey$Callback;

    iput-object v0, p0, Lcom/android/calendar/cache/VolleyRequestKey;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    .line 49
    return-void
.end method
