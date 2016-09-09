.class public Lcom/android/calendar/cache/InvalidateFlairsRequest;
.super Lcom/android/volley/Request;
.source "InvalidateFlairsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mFlairKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/volley/Cache;[Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 20
    iput-object p1, p0, Lcom/android/calendar/cache/InvalidateFlairsRequest;->mCache:Lcom/android/volley/Cache;

    .line 21
    iput-object p2, p0, Lcom/android/calendar/cache/InvalidateFlairsRequest;->mFlairKeys:[Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/cache/InvalidateFlairsRequest;->deliverResponse(Ljava/lang/Void;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 27
    iget-object v1, p0, Lcom/android/calendar/cache/InvalidateFlairsRequest;->mFlairKeys:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 28
    iget-object v4, p0, Lcom/android/calendar/cache/InvalidateFlairsRequest;->mCache:Lcom/android/volley/Cache;

    .line 29
    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getFlairUrlStringFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-interface {v4, v3, v5}, Lcom/android/volley/Cache;->invalidate(Ljava/lang/String;Z)V

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return v5
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method
