.class public Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;
.super Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;
.source "PlacePageOrMapRequestKey.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/timely/PlacesConstants;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mHeight:I

.field private final mLatitude:Ljava/lang/String;

.field private final mLongitude:Ljava/lang/String;

.field private final mMapsClusterId:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mMapsClusterId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mLatitude:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mLongitude:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mAddress:Ljava/lang/String;

    .line 34
    iput p5, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mWidth:I

    .line 35
    iput p6, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mHeight:I

    .line 36
    return-void
.end method


# virtual methods
.method public createFileDescriptorFactoryOrByteArrayAsync(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mUrlString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mUrlString:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->createVolleyRequest(Ljava/lang/String;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;

    invoke-direct {v0, p0, p2}, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;-><init>(Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;Lcom/android/bitmap/RequestKey$Callback;)V

    .line 62
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/bitmap/RequestKey;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public createInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;

    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    check-cast p1, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;

    .line 46
    iget v1, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mWidth:I

    iget v2, p1, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mHeight:I

    iget v2, p1, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mHeight:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mMapsClusterId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mMapsClusterId:Ljava/lang/String;

    .line 48
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mLatitude:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mLatitude:Ljava/lang/String;

    .line 49
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mLongitude:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mLongitude:Ljava/lang/String;

    .line 50
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mUrlString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mMapsClusterId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mLatitude:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mLongitude:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mAddress:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mWidth:I

    iget v5, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mHeight:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->getPlacePageOrMapsUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/calendar/timely/PlacePageOrMapUrl;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->getBestUrl()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;->mUrlString:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasOrientationExif()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method
