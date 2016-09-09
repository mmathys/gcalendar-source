.class public Lcom/android/calendar/widget/CalendarAppWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "CalendarAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;
    }
.end annotation


# static fields
.field static final sCurrentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field static sRowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/widget/WidgetRow$Row;",
            ">;"
        }
    .end annotation
.end field

.field static final sRowListLock:Ljava/lang/Object;

.field private static sWidgetLoaderManager:Lcom/android/calendar/widget/WidgetLoaderManager;

.field private static final sWidgetLoaderManagerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sCurrentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sWidgetLoaderManagerLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sRowListLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method

.method public static discardLoaderManager()V
    .locals 2

    .prologue
    .line 297
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService;->sWidgetLoaderManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sWidgetLoaderManager:Lcom/android/calendar/widget/WidgetLoaderManager;

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sWidgetLoaderManager:Lcom/android/calendar/widget/WidgetLoaderManager;

    iget-object v0, v0, Lcom/android/calendar/widget/WidgetLoaderManager;->mWidgetEventLoader:Lcom/android/calendar/widget/WidgetEventLoader;

    invoke-virtual {v0}, Lcom/android/calendar/widget/WidgetEventLoader;->unregisterOnDataChangedListener()V

    .line 300
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sWidgetLoaderManager:Lcom/android/calendar/widget/WidgetLoaderManager;

    .line 302
    :cond_0
    monitor-exit v1

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getLoaderManager(Landroid/content/Context;)Lcom/android/calendar/widget/WidgetLoaderManager;
    .locals 2

    .prologue
    .line 288
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService;->sWidgetLoaderManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sWidgetLoaderManager:Lcom/android/calendar/widget/WidgetLoaderManager;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lcom/android/calendar/widget/WidgetLoaderManager;

    invoke-direct {v0, p0}, Lcom/android/calendar/widget/WidgetLoaderManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sWidgetLoaderManager:Lcom/android/calendar/widget/WidgetLoaderManager;

    .line 292
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sWidgetLoaderManager:Lcom/android/calendar/widget/WidgetLoaderManager;

    return-object v0

    .line 292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 270
    invoke-super {p0}, Landroid/widget/RemoteViewsService;->onCreate()V

    .line 271
    const-string v0, "CalendarWidget"

    const-string v1, "Service.onCreate"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 272
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sCurrentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sWidgetLoaderManager:Lcom/android/calendar/widget/WidgetLoaderManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sRowList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 273
    :cond_0
    const-string v1, "CalendarWidget"

    const-string v2, "Service.onCreate:RowList=%d LoaderManager=%s Version=%d"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sRowList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 274
    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    sget-object v4, Lcom/android/calendar/widget/CalendarAppWidgetService;->sWidgetLoaderManager:Lcom/android/calendar/widget/WidgetLoaderManager;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    sget-object v4, Lcom/android/calendar/widget/CalendarAppWidgetService;->sCurrentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 276
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 273
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 277
    const-string v0, "CalendarWidget"

    const-string v1, "Service.onCreate:startQueryRefresh"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 278
    invoke-virtual {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->startQueryRefresh(Landroid/content/Context;)V

    .line 280
    :cond_1
    return-void

    .line 274
    :cond_2
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sRowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 261
    const-string v0, "CalendarWidget"

    const-string v1, "Service.onDestroy:"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 262
    invoke-super {p0}, Landroid/widget/RemoteViewsService;->onDestroy()V

    .line 263
    return-void
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 307
    const-string v0, "CalendarWidget"

    const-string v1, "onGetViewFactory:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "appWidgetId"

    .line 308
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 307
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 311
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-virtual {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
