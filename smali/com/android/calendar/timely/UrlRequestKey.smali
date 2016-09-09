.class public Lcom/android/calendar/timely/UrlRequestKey;
.super Lcom/android/calendar/cache/VolleyRequestKey;
.source "UrlRequestKey.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/calendar/timely/UrlRequestKey;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/UrlRequestKey;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/calendar/cache/VolleyRequestKey;-><init>()V

    .line 44
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Lcom/android/calendar/timely/UrlRequestKey;->mUrl:Ljava/net/URL;

    .line 45
    return-void
.end method

.method public static fromUrlString(Landroid/content/Context;Ljava/lang/String;)Lcom/android/calendar/timely/UrlRequestKey;
    .locals 5

    .prologue
    .line 52
    :try_start_0
    new-instance v1, Lcom/android/calendar/timely/UrlRequestKey;

    new-instance v2, Ljava/net/URL;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/timely/UrlRequestKey;-><init>(Landroid/content/Context;Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 55
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    sget-object v1, Lcom/android/calendar/timely/UrlRequestKey;->TAG:Ljava/lang/String;

    const-string v2, "Invalid icon URL: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createFileDescriptorFactoryOrByteArrayAsync(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/calendar/timely/UrlRequestKey;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/calendar/timely/UrlRequestKey;->createVolleyRequest(Ljava/lang/String;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public createInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 81
    if-ne p0, p1, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    .line 84
    :cond_0
    instance-of v0, p1, Lcom/android/calendar/timely/UrlRequestKey;

    if-nez v0, :cond_1

    .line 85
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_1
    check-cast p1, Lcom/android/calendar/timely/UrlRequestKey;

    .line 89
    iget-object v0, p0, Lcom/android/calendar/timely/UrlRequestKey;->mUrl:Ljava/net/URL;

    iget-object v1, p1, Lcom/android/calendar/timely/UrlRequestKey;->mUrl:Ljava/net/URL;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

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
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/calendar/timely/UrlRequestKey;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    return v0
.end method
