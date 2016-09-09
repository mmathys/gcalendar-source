.class public Lcom/android/calendar/timely/EventImageCache;
.super Lcom/android/bitmap/UnrefedBitmapCache;
.source "EventImageCache.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEventImageRequestKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/bitmap/RequestKey;",
            "Lcom/android/calendar/timely/EventImageRequestKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/calendar/timely/EventImageCache;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/EventImageCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bitmap/UnrefedBitmapCache;-><init>(IFI)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/EventImageCache;->mEventImageRequestKeyMap:Ljava/util/Map;

    .line 42
    return-void
.end method


# virtual methods
.method public getKey(Lcom/android/bitmap/RequestKey;)Lcom/android/calendar/timely/EventImageRequestKey;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageCache;->mEventImageRequestKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/EventImageRequestKey;

    return-object v0
.end method

.method public bridge synthetic offer(Lcom/android/bitmap/Poolable;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/EventImageCache;->offer(Lcom/android/bitmap/ReusableBitmap;)V

    return-void
.end method

.method public offer(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/bitmap/UnrefedBitmapCache;->offer(Lcom/android/bitmap/ReusableBitmap;)V

    .line 81
    return-void
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/EventImageCache;->offer(Lcom/android/bitmap/ReusableBitmap;)V

    return-void
.end method

.method public bridge synthetic poll()Lcom/android/bitmap/Poolable;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventImageCache;->poll()Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lcom/android/bitmap/ReusableBitmap;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/bitmap/UnrefedBitmapCache;->poll()Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventImageCache;->poll()Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Lcom/android/bitmap/Poolable;)Lcom/android/bitmap/Poolable;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/android/bitmap/RequestKey;

    check-cast p2, Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/EventImageCache;->put(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)Lcom/android/bitmap/ReusableBitmap;
    .locals 2

    .prologue
    .line 56
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/timely/EventImageRequestKey;

    .line 63
    iget-object v1, p0, Lcom/android/calendar/timely/EventImageCache;->mEventImageRequestKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/bitmap/UnrefedBitmapCache;->put(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/android/bitmap/RequestKey;

    check-cast p2, Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/EventImageCache;->put(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method
