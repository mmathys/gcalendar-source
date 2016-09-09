.class public Lcom/android/calendar/timely/EventImageRequestKey;
.super Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;
.source "EventImageRequestKey.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/timely/PlacesConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCalendarId:J

.field private final mContext:Landroid/content/Context;

.field private final mEventId:Ljava/lang/Object;

.field private mEventImage:Lcom/google/android/calendar/timely/EventImage;

.field private final mEventTitle:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private final mExtrasProvider:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/google/android/calendar/event/EventExtrasImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeight:I

.field private mImageType:I

.field private mImageUrlLoader:Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;

.field private final mLocation:Ljava/lang/String;

.field private final mStaticUri:Z

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/EventImageRequestKey;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 10

    .prologue
    .line 130
    const/4 v4, 0x1

    const-string v5, ""

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/calendar/timely/EventImageRequestKey;-><init>(Landroid/content/Context;IIZLjava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p4, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mUrlString:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 143
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/calendar/timely/EventImageRequestKey;-><init>(Landroid/content/Context;IIZLjava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIZLjava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mImageType:I

    .line 71
    iput-object v1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventImage:Lcom/google/android/calendar/timely/EventImage;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mContext:Landroid/content/Context;

    .line 101
    iput p2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mWidth:I

    .line 102
    iput p3, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mHeight:I

    .line 104
    iput-boolean p4, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mStaticUri:Z

    .line 106
    iput-object p5, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventTitle:Ljava/lang/String;

    .line 107
    iput-wide p6, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mCalendarId:J

    .line 108
    iput-object p8, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventId:Ljava/lang/Object;

    .line 109
    iput-object p9, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mLocation:Ljava/lang/String;

    .line 111
    iget-boolean v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mStaticUri:Z

    if-eqz v0, :cond_0

    .line 112
    iput-object v1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mExtrasProvider:Ljava/util/concurrent/Callable;

    .line 122
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/android/calendar/timely/EventImageRequestKey$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/EventImageRequestKey$1;-><init>(Lcom/android/calendar/timely/EventImageRequestKey;)V

    iput-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mExtrasProvider:Ljava/util/concurrent/Callable;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/EventImageRequestKey;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/EventImageRequestKey;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventId:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/EventImageRequestKey;)J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mCalendarId:J

    return-wide v0
.end method

.method private getEventImage()Lcom/google/android/calendar/timely/EventImage;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 325
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mUrlString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Lcom/google/android/calendar/timely/EventImage;

    iget-object v1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mUrlString:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/timely/EventImage;-><init>(Lcom/android/calendar/timely/EventImageRequestKey;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Lcom/google/android/calendar/timely/EventImage;->getImageType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/EventImageRequestKey;->setImageType(I)V

    .line 352
    :goto_0
    return-object v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mImageUrlLoader:Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mImageUrlLoader:Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;

    invoke-interface {v0}, Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;->getImageType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/EventImageRequestKey;->setImageType(I)V

    .line 332
    new-instance v0, Lcom/google/android/calendar/timely/EventImage;

    iget-object v1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mImageUrlLoader:Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;

    invoke-interface {v1}, Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;->loadImageUrlAsync()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/timely/EventImage;-><init>(Lcom/android/calendar/timely/EventImageRequestKey;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mExtrasProvider:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/EventExtrasImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    sget-object v2, Lcom/android/calendar/timely/EventImageRequestKey;->TAG:Ljava/lang/String;

    const-string v3, "Calendar id: %s, Event Id: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mCalendarId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventId:Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 343
    if-eqz v0, :cond_3

    .line 344
    monitor-enter p0

    .line 345
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/android/calendar/event/EventExtrasImpl;->getEventImage(Lcom/android/calendar/timely/EventImageRequestKey;)Lcom/google/android/calendar/timely/EventImage;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {v0}, Lcom/google/android/calendar/timely/EventImage;->getImageType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/EventImageRequestKey;->setImageType(I)V

    .line 349
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    sget-object v2, Lcom/android/calendar/timely/EventImageRequestKey;->TAG:Ljava/lang/String;

    const-string v3, "Error fetching extras"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 339
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 352
    goto :goto_0
.end method

.method private getStreamFromLocalResource(I)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyFromRequestKey(Lcom/android/bitmap/RequestKey;)V
    .locals 1

    .prologue
    .line 301
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/calendar/timely/EventImageRequestKey;

    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    check-cast p1, Lcom/android/calendar/timely/EventImageRequestKey;

    .line 305
    iget v0, p1, Lcom/android/calendar/timely/EventImageRequestKey;->mImageType:I

    iput v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mImageType:I

    goto :goto_0
.end method

.method public createFileDescriptorFactoryOrByteArrayAsync(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventImageRequestKey;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventImageRequestKey;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->isFlairUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/EventImageRequestKey;->setImageType(I)V

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventImageRequestKey;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/calendar/timely/EventImageRequestKey;->createVolleyRequest(Ljava/lang/String;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    .line 250
    :cond_1
    new-instance v0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;

    invoke-direct {v0, p0, p2}, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;-><init>(Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;Lcom/android/bitmap/RequestKey$Callback;)V

    .line 251
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
    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventImage:Lcom/google/android/calendar/timely/EventImage;

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/android/calendar/timely/EventImageRequestKey;->getEventImage()Lcom/google/android/calendar/timely/EventImage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventImage:Lcom/google/android/calendar/timely/EventImage;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventImage:Lcom/google/android/calendar/timely/EventImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventImage:Lcom/google/android/calendar/timely/EventImage;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/EventImage;->getFlairId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/EventImageRequestKey;->setImageType(I)V

    .line 279
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventImage:Lcom/google/android/calendar/timely/EventImage;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/EventImage;->getFlairId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/EventImageRequestKey;->getStreamFromLocalResource(I)Ljava/io/InputStream;

    move-result-object v0

    monitor-exit p0

    .line 283
    :goto_0
    return-object v0

    .line 281
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/EventImageRequestKey;->setImageType(I)V

    .line 283
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/calendar/timely/EventImageRequestKey;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 207
    :cond_1
    :goto_0
    return v0

    .line 196
    :cond_2
    check-cast p1, Lcom/android/calendar/timely/EventImageRequestKey;

    .line 197
    iget v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mWidth:I

    iget v3, p1, Lcom/android/calendar/timely/EventImageRequestKey;->mWidth:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mHeight:I

    iget v3, p1, Lcom/android/calendar/timely/EventImageRequestKey;->mHeight:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mStaticUri:Z

    iget-boolean v3, p1, Lcom/android/calendar/timely/EventImageRequestKey;->mStaticUri:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mImageUrlLoader:Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;

    iget-object v3, p1, Lcom/android/calendar/timely/EventImageRequestKey;->mImageUrlLoader:Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;

    .line 198
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 199
    goto :goto_0

    .line 201
    :cond_4
    iget-boolean v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mStaticUri:Z

    if-eqz v2, :cond_5

    .line 202
    invoke-virtual {p1}, Lcom/android/calendar/timely/EventImageRequestKey;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/EventImageRequestKey;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 204
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mImageUrlLoader:Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;

    if-nez v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventId:Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/calendar/timely/EventImageRequestKey;->mEventId:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mLocation:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/timely/EventImageRequestKey;->mLocation:Ljava/lang/String;

    .line 208
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/timely/EventImageRequestKey;->mEventTitle:Ljava/lang/String;

    .line 209
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEventTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mExtras:Landroid/os/Bundle;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mHeight:I

    return v0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mImageType:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mUrlString:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/calendar/timely/EventImageRequestKey;->getEventImage()Lcom/google/android/calendar/timely/EventImage;

    move-result-object v0

    .line 258
    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/calendar/timely/EventImage;->getImageUrlString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mWidth:I

    return v0
.end method

.method public hasOrientationExif()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    iget v1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mHeight:I

    .line 217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 218
    iget-boolean v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mStaticUri:Z

    if-eqz v2, :cond_1

    .line 219
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/android/calendar/timely/EventImageRequestKey;->getUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    add-int/2addr v0, v1

    .line 227
    :goto_1
    return v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventImageRequestKey;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mImageUrlLoader:Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;

    if-eqz v2, :cond_2

    .line 221
    mul-int/lit8 v0, v1, 0x1f

    iget-object v1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mImageUrlLoader:Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 223
    :cond_2
    mul-int/lit8 v2, v1, 0x1f

    iget-object v1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventId:Ljava/lang/Object;

    if-nez v1, :cond_3

    move v1, v0

    :goto_2
    add-int/2addr v1, v2

    .line 224
    mul-int/lit8 v2, v1, 0x1f

    iget-object v1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mLocation:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v0

    :goto_3
    add-int/2addr v1, v2

    .line 225
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventTitle:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_4
    add-int/2addr v0, v1

    goto :goto_1

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventId:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    .line 224
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mLocation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4
.end method

.method public setAsyncImageUrlLoader(Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;)V
    .locals 1

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mImageUrlLoader:Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;

    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-interface {p1}, Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;->getImageType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/EventImageRequestKey;->setImageType(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public setImageType(I)V
    .locals 0

    .prologue
    .line 314
    iput p1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mImageType:I

    .line 315
    return-void
.end method

.method public setUrlString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mUrlString:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mStaticUri:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mUrlString:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 233
    :cond_0
    const-string v1, "(%s, %d): %s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventId:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mEventId:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-wide v4, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mCalendarId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/android/calendar/timely/EventImageRequestKey;->mUrlString:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 233
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_1
    const-string v0, "null"

    goto :goto_1
.end method
