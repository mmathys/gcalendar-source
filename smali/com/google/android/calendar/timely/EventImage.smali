.class public Lcom/google/android/calendar/timely/EventImage;
.super Ljava/lang/Object;
.source "EventImage.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCache:Lcom/android/volley/Cache;

.field private mContext:Landroid/content/Context;

.field protected mFlairId:I

.field private mImageType:I

.field protected mImageUrlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/android/calendar/timely/EventImage;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/EventImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/timely/EventImageRequestKey;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v2, p0, Lcom/google/android/calendar/timely/EventImage;->mImageType:I

    .line 59
    invoke-virtual {p1}, Lcom/android/calendar/timely/EventImageRequestKey;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/EventImage;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {}, Lcom/android/calendar/cache/VolleyQueueHolder;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/EventImage;->mCache:Lcom/android/volley/Cache;

    .line 62
    iget-object v0, p0, Lcom/google/android/calendar/timely/EventImage;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/timely/EventImage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 64
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/google/android/calendar/timely/EventImage;->isAvailable(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/calendar/timely/EventImage;->setImageType(I)V

    .line 67
    sget-object v0, Lcom/google/android/calendar/timely/EventImage;->TAG:Ljava/lang/String;

    const-string v3, "g+ background url: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 62
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/timely/EventImageRequestKey;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/calendar/timely/EventImageRequestKey;->getHeight()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getSmartMailImageUrl(II)Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;

    move-result-object v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    invoke-virtual {v3}, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    .line 80
    invoke-virtual {v3}, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->getFlairResourceId()I

    move-result v4

    iput v4, p0, Lcom/google/android/calendar/timely/EventImage;->mFlairId:I

    .line 81
    iget-object v4, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/google/android/calendar/timely/EventImage;->isAvailable(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/EventImage;->setImageType(I)V

    .line 83
    sget-object v0, Lcom/google/android/calendar/timely/EventImage;->TAG:Ljava/lang/String;

    const-string v3, "smart mail image url: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 85
    :cond_2
    iget v4, p0, Lcom/google/android/calendar/timely/EventImage;->mFlairId:I

    if-eqz v4, :cond_3

    .line 87
    invoke-virtual {p0, v6}, Lcom/google/android/calendar/timely/EventImage;->setImageType(I)V

    .line 88
    iput-object v8, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/google/android/calendar/timely/EventImage;->TAG:Ljava/lang/String;

    const-string v1, "smart mail flair over address"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->getStaticMapUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/google/android/calendar/timely/EventImage;->isAvailable(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    invoke-virtual {p0, v7}, Lcom/google/android/calendar/timely/EventImage;->setImageType(I)V

    .line 95
    sget-object v0, Lcom/google/android/calendar/timely/EventImage;->TAG:Ljava/lang/String;

    const-string v3, "smart mail map url: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getFirstEventLocation()Lcom/google/api/services/calendar/model/EventLocation;

    move-result-object v3

    .line 108
    invoke-virtual {p1}, Lcom/android/calendar/timely/EventImageRequestKey;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/calendar/timely/EventImageRequestKey;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->getPlacePageOrMapsUrl(Lcom/google/api/services/calendar/model/EventLocation;II)Lcom/google/android/calendar/timely/PlacePageOrMapUrl;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->getPlacePageImageUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    .line 110
    iget-object v4, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/google/android/calendar/timely/EventImage;->isAvailable(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 111
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/EventImage;->setImageType(I)V

    .line 112
    sget-object v0, Lcom/google/android/calendar/timely/EventImage;->TAG:Ljava/lang/String;

    const-string v3, "place page image url: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 116
    :cond_5
    invoke-virtual {p1}, Lcom/android/calendar/timely/EventImageRequestKey;->getEventTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/google/android/calendar/timely/EventImage;->isAvailable(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 118
    invoke-virtual {p0, v6}, Lcom/google/android/calendar/timely/EventImage;->setImageType(I)V

    .line 119
    sget-object v0, Lcom/google/android/calendar/timely/EventImage;->TAG:Ljava/lang/String;

    const-string v3, "flair image url: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 123
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->getStaticMapUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    .line 124
    iget-object v3, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/google/android/calendar/timely/EventImage;->isAvailable(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    invoke-virtual {p0, v7}, Lcom/google/android/calendar/timely/EventImage;->setImageType(I)V

    .line 126
    sget-object v0, Lcom/google/android/calendar/timely/EventImage;->TAG:Ljava/lang/String;

    const-string v3, "static maps image url: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 132
    :cond_7
    iput-object v8, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/google/android/calendar/timely/EventImage;->TAG:Ljava/lang/String;

    const-string v1, "null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1
.end method

.method public constructor <init>(Lcom/android/calendar/timely/EventImageRequestKey;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/google/android/calendar/timely/EventImage;->mImageType:I

    .line 44
    invoke-virtual {p1}, Lcom/android/calendar/timely/EventImageRequestKey;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/timely/EventImage;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/android/calendar/cache/VolleyQueueHolder;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/timely/EventImage;->mCache:Lcom/android/volley/Cache;

    .line 46
    iget-object v1, p0, Lcom/google/android/calendar/timely/EventImage;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/timely/EventImage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/Utils;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 47
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/google/android/calendar/timely/EventImage;->isAvailable(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iput-object p2, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->isFlairUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/EventImage;->setImageType(I)V

    .line 51
    :cond_1
    return-void

    .line 47
    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private isAvailable(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    if-eqz p2, :cond_2

    move v0, v1

    .line 147
    goto :goto_0

    .line 150
    :cond_2
    iget-object v2, p0, Lcom/google/android/calendar/timely/EventImage;->mCache:Lcom/android/volley/Cache;

    invoke-interface {v2, p1}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v2

    .line 151
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/volley/Cache$Entry;->isExpired()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 153
    goto :goto_0
.end method


# virtual methods
.method public getFlairId()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/google/android/calendar/timely/EventImage;->mFlairId:I

    return v0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/google/android/calendar/timely/EventImage;->mImageType:I

    return v0
.end method

.method public getImageUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    return-object v0
.end method

.method public setImageType(I)V
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lcom/google/android/calendar/timely/EventImage;->mImageType:I

    .line 170
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    const-string v1, "%s %d"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/timely/EventImage;->mImageUrlString:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Lcom/google/android/calendar/timely/EventImage;->mFlairId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
