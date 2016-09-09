.class public Lcom/android/calendar/BitmapCacheHolder;
.super Ljava/lang/Object;
.source "BitmapCacheHolder.java"


# static fields
.field private static sAttachmentChipCache:Lcom/android/bitmap/BitmapCache;

.field private static sAttachmentIconCache:Lcom/android/bitmap/BitmapCache;

.field private static sBackgroundImageCache:Lcom/android/bitmap/BitmapCache;

.field private static sContactPhotoCache:Lcom/android/bitmap/BitmapCache;

.field private static sEventImageCacheSingleton:Lcom/android/calendar/timely/EventImageCache;

.field private static sMonthHeaderBitmapCache:Lcom/android/bitmap/BitmapCache;


# direct methods
.method public static declared-synchronized getAttachmentChipCache()Lcom/android/bitmap/BitmapCache;
    .locals 5

    .prologue
    .line 41
    const-class v1, Lcom/android/calendar/BitmapCacheHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/BitmapCacheHolder;->sAttachmentChipCache:Lcom/android/bitmap/BitmapCache;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/bitmap/UnrefedBitmapCache;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/bitmap/UnrefedBitmapCache;-><init>(IFI)V

    sput-object v0, Lcom/android/calendar/BitmapCacheHolder;->sAttachmentChipCache:Lcom/android/bitmap/BitmapCache;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/calendar/BitmapCacheHolder;->sAttachmentChipCache:Lcom/android/bitmap/BitmapCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getAttachmentIconCache()Lcom/android/bitmap/BitmapCache;
    .locals 5

    .prologue
    .line 33
    const-class v1, Lcom/android/calendar/BitmapCacheHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/BitmapCacheHolder;->sAttachmentIconCache:Lcom/android/bitmap/BitmapCache;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/android/bitmap/UnrefedBitmapCache;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/bitmap/UnrefedBitmapCache;-><init>(IFI)V

    sput-object v0, Lcom/android/calendar/BitmapCacheHolder;->sAttachmentIconCache:Lcom/android/bitmap/BitmapCache;

    .line 37
    :cond_0
    sget-object v0, Lcom/android/calendar/BitmapCacheHolder;->sAttachmentIconCache:Lcom/android/bitmap/BitmapCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getBackgroundImageCache()Lcom/android/bitmap/BitmapCache;
    .locals 5

    .prologue
    .line 74
    const-class v1, Lcom/android/calendar/BitmapCacheHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/BitmapCacheHolder;->sBackgroundImageCache:Lcom/android/bitmap/BitmapCache;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/android/bitmap/UnrefedBitmapCache;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/bitmap/UnrefedBitmapCache;-><init>(IFI)V

    sput-object v0, Lcom/android/calendar/BitmapCacheHolder;->sBackgroundImageCache:Lcom/android/bitmap/BitmapCache;

    .line 78
    :cond_0
    sget-object v0, Lcom/android/calendar/BitmapCacheHolder;->sBackgroundImageCache:Lcom/android/bitmap/BitmapCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getContactPhotoCache()Lcom/android/bitmap/BitmapCache;
    .locals 5

    .prologue
    .line 25
    const-class v1, Lcom/android/calendar/BitmapCacheHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/BitmapCacheHolder;->sContactPhotoCache:Lcom/android/bitmap/BitmapCache;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/android/bitmap/UnrefedBitmapCache;

    const/high16 v2, 0x100000

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {v0, v2, v3, v4}, Lcom/android/bitmap/UnrefedBitmapCache;-><init>(IFI)V

    sput-object v0, Lcom/android/calendar/BitmapCacheHolder;->sContactPhotoCache:Lcom/android/bitmap/BitmapCache;

    .line 29
    :cond_0
    sget-object v0, Lcom/android/calendar/BitmapCacheHolder;->sContactPhotoCache:Lcom/android/bitmap/BitmapCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getEventImageCache()Lcom/android/calendar/timely/EventImageCache;
    .locals 5

    .prologue
    .line 50
    const-class v1, Lcom/android/calendar/BitmapCacheHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/BitmapCacheHolder;->sEventImageCacheSingleton:Lcom/android/calendar/timely/EventImageCache;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/calendar/timely/EventImageCache;

    const/high16 v2, 0x500000

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/calendar/timely/EventImageCache;-><init>(IFI)V

    sput-object v0, Lcom/android/calendar/BitmapCacheHolder;->sEventImageCacheSingleton:Lcom/android/calendar/timely/EventImageCache;

    .line 57
    :cond_0
    sget-object v0, Lcom/android/calendar/BitmapCacheHolder;->sEventImageCacheSingleton:Lcom/android/calendar/timely/EventImageCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMonthHeaderBitmapCache()Lcom/android/bitmap/BitmapCache;
    .locals 5

    .prologue
    .line 66
    const-class v1, Lcom/android/calendar/BitmapCacheHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/BitmapCacheHolder;->sMonthHeaderBitmapCache:Lcom/android/bitmap/BitmapCache;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/bitmap/UnrefedBitmapCache;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/bitmap/UnrefedBitmapCache;-><init>(IFI)V

    sput-object v0, Lcom/android/calendar/BitmapCacheHolder;->sMonthHeaderBitmapCache:Lcom/android/bitmap/BitmapCache;

    .line 70
    :cond_0
    sget-object v0, Lcom/android/calendar/BitmapCacheHolder;->sMonthHeaderBitmapCache:Lcom/android/bitmap/BitmapCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
