.class public abstract Lcom/android/calendar/timely/data/DataCache;
.super Ljava/lang/Object;
.source "DataCache.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;,
        Lcom/android/calendar/timely/data/DataCache$ProviderItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/calendar/timely/data/DataCache$ProviderItem",
        "<TI;>;I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/calendar/content/ObjectCursor",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCursorCreator:Lcom/android/calendar/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/content/CursorCreator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mDiffData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/calendar/timely/data/DiffData",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mProjection:[Ljava/lang/String;

.field private final mProviderId:I

.field private final mUri:Landroid/net/Uri;

.field private final mVersion:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/calendar/content/CursorCreator;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/calendar/content/CursorCreator",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mData:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mDiffData:Ljava/util/HashMap;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/android/calendar/timely/data/DataCache;->mUri:Landroid/net/Uri;

    .line 61
    iput-object p4, p0, Lcom/android/calendar/timely/data/DataCache;->mProjection:[Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/android/calendar/timely/data/DataCache;->mCursorCreator:Lcom/android/calendar/content/CursorCreator;

    .line 63
    iput p6, p0, Lcom/android/calendar/timely/data/DataCache;->mProviderId:I

    .line 64
    invoke-virtual {p2, p0}, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->addCallbacks(Landroid/app/LoaderManager$LoaderCallbacks;)I

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mListeners:Ljava/util/HashSet;

    .line 67
    return-void
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/calendar/timely/data/DataCache;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 168
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/timely/data/DataCache;->mListeners:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    .line 172
    iget v2, p0, Lcom/android/calendar/timely/data/DataCache;->mProviderId:I

    iget-object v3, p0, Lcom/android/calendar/timely/data/DataCache;->mDiffData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;->onDataChanged(ILjava/util/Collection;)V

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public addDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/calendar/timely/data/DataCache;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getData(Ljava/lang/Object;)Lcom/android/calendar/timely/data/DataCache$ProviderItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TT;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    return-object v0
.end method

.method public getData()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/calendar/timely/data/DataCache;->mData:Ljava/util/HashMap;

    monitor-enter v1

    .line 134
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/timely/data/DataCache;->mData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSafeData(Ljava/lang/Object;)Lcom/android/calendar/timely/data/DataCache$ProviderItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TT;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/calendar/timely/data/DataCache;->mData:Ljava/util/HashMap;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    monitor-exit v1

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasLoaded()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/content/ObjectCursor",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mProjection:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/calendar/content/ObjectCursorLoader;

    iget-object v1, p0, Lcom/android/calendar/timely/data/DataCache;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/timely/data/DataCache;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/calendar/timely/data/DataCache;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/timely/data/DataCache;->mCursorCreator:Lcom/android/calendar/content/CursorCreator;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/calendar/content/CursorCreator;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/calendar/content/ObjectCursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/content/ObjectCursor",
            "<TT;>;>;",
            "Lcom/android/calendar/content/ObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mDiffData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 83
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    .line 84
    invoke-interface {v0}, Lcom/android/calendar/timely/data/DataCache$ProviderItem;->getId()Ljava/lang/Object;

    move-result-object v2

    .line 85
    iget-object v3, p0, Lcom/android/calendar/timely/data/DataCache;->mDiffData:Ljava/util/HashMap;

    new-instance v4, Lcom/android/calendar/timely/data/DiffData;

    invoke-direct {v4, v2, v0, v5}, Lcom/android/calendar/timely/data/DiffData;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/calendar/content/ObjectCursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    :cond_1
    invoke-virtual {p2}, Lcom/android/calendar/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    .line 93
    if-nez v1, :cond_3

    .line 104
    :goto_1
    invoke-virtual {p2}, Lcom/android/calendar/content/ObjectCursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/timely/data/DataCache;->mData:Ljava/util/HashMap;

    monitor-enter v2

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mDiffData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/data/DiffData;

    invoke-virtual {v1}, Lcom/android/calendar/timely/data/DiffData;->getNewData()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 112
    iget-object v1, p0, Lcom/android/calendar/timely/data/DataCache;->mData:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mDiffData:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/android/calendar/timely/data/DataCache$ProviderItem;->getId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mDiffData:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/android/calendar/timely/data/DataCache$ProviderItem;->getId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/DiffData;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/data/DiffData;->setNewData(Ljava/lang/Object;)V

    goto :goto_1

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mDiffData:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/android/calendar/timely/data/DataCache$ProviderItem;->getId()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/timely/data/DiffData;

    invoke-interface {v1}, Lcom/android/calendar/timely/data/DataCache$ProviderItem;->getId()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4, v5, v1}, Lcom/android/calendar/timely/data/DiffData;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 115
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/calendar/timely/data/DataCache;->mData:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/DiffData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/DiffData;->getNewData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 118
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 124
    invoke-direct {p0}, Lcom/android/calendar/timely/data/DataCache;->notifyListeners()V

    .line 125
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p2, Lcom/android/calendar/content/ObjectCursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/data/DataCache;->onLoadFinished(Landroid/content/Loader;Lcom/android/calendar/content/ObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/content/ObjectCursor",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method public removeDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/calendar/timely/data/DataCache;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/data/DataCache;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 185
    monitor-exit v1

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
