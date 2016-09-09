.class public Lcom/android/calendar/newapi/common/CalendarsCacheLoader;
.super Lcom/android/calendar/newapi/common/AsyncTaskLoader;
.source "CalendarsCacheLoader.java"

# interfaces
.implements Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/common/AsyncTaskLoader",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener",
        "<",
        "Lcom/android/calendar/timely/data/CalendarItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mCalendarCacheBlocker:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/calendar/newapi/common/AsyncTaskLoader;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/newapi/common/CalendarsCacheLoader;->mCalendarCacheBlocker:Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/data/CalendarsCache;->addDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onDataChanged(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/timely/data/DiffData",
            "<",
            "Lcom/android/calendar/timely/data/CalendarItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/calendar/newapi/common/CalendarsCacheLoader;->mCalendarCacheBlocker:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CalendarsCacheLoader;->mCalendarCacheBlocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic runInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/common/CalendarsCacheLoader;->runInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs runInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v1, p0, Lcom/android/calendar/newapi/common/CalendarsCacheLoader;->mCalendarCacheBlocker:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CalendarsCacheLoader;->mCalendarCacheBlocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 31
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 27
    :catch_0
    move-exception v0

    goto :goto_0
.end method
