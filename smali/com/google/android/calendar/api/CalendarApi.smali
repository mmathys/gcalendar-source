.class public Lcom/google/android/calendar/api/CalendarApi;
.super Ljava/lang/Object;
.source "CalendarApi.java"


# static fields
.field public static final CalendarList:Lcom/google/android/calendar/api/calendarlist/CalendarListClient;

.field public static final ColorFactory:Lcom/google/android/calendar/api/ColorFactory;

.field public static final Colors:Lcom/google/android/calendar/api/ColorClient;

.field public static final EventFactory:Lcom/google/android/calendar/api/EventFactory;

.field public static final Events:Lcom/google/android/calendar/api/EventClient;

.field public static final HabitFactory:Lcom/google/android/calendar/api/HabitFactory;

.field public static final Habits:Lcom/google/android/calendar/api/HabitClient;

.field private static final INITIALIZATION_LOCK:Ljava/lang/Object;

.field private static sApiAppContext:Landroid/content/Context;

.field private static sApiContentResolver:Landroid/content/ContentResolver;

.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/google/android/calendar/api/HabitClientFutureImpl;

    new-instance v1, Lcom/google/android/calendar/api/HabitApiStoreImpl;

    invoke-direct {v1}, Lcom/google/android/calendar/api/HabitApiStoreImpl;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/HabitClientFutureImpl;-><init>(Lcom/google/android/calendar/api/CrudApi;)V

    sput-object v0, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    .line 20
    new-instance v0, Lcom/google/android/calendar/api/EventClientFutureImpl;

    new-instance v1, Lcom/google/android/calendar/api/EventApiStoreImpl;

    invoke-direct {v1}, Lcom/google/android/calendar/api/EventApiStoreImpl;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/EventClientFutureImpl;-><init>(Lcom/google/android/calendar/api/CrudApi;)V

    sput-object v0, Lcom/google/android/calendar/api/CalendarApi;->Events:Lcom/google/android/calendar/api/EventClient;

    .line 23
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl;

    new-instance v1, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;

    invoke-direct {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl;-><init>(Lcom/google/android/calendar/api/CrudApi;)V

    sput-object v0, Lcom/google/android/calendar/api/CalendarApi;->CalendarList:Lcom/google/android/calendar/api/calendarlist/CalendarListClient;

    .line 27
    new-instance v0, Lcom/google/android/calendar/api/ColorClientFutureImpl;

    new-instance v1, Lcom/google/android/calendar/api/ColorApiStoreImpl;

    new-instance v2, Lcom/google/android/calendar/api/GoogleColorTranslator;

    invoke-direct {v2}, Lcom/google/android/calendar/api/GoogleColorTranslator;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/android/calendar/api/ColorApiStoreImpl;-><init>(Lcom/google/android/calendar/api/ColorTranslator;)V

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/ColorClientFutureImpl;-><init>(Lcom/google/android/calendar/api/CrudApi;)V

    sput-object v0, Lcom/google/android/calendar/api/CalendarApi;->Colors:Lcom/google/android/calendar/api/ColorClient;

    .line 30
    new-instance v0, Lcom/google/android/calendar/api/HabitFactoryImpl;

    invoke-direct {v0}, Lcom/google/android/calendar/api/HabitFactoryImpl;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/CalendarApi;->HabitFactory:Lcom/google/android/calendar/api/HabitFactory;

    .line 32
    new-instance v0, Lcom/google/android/calendar/api/EventFactoryImpl;

    invoke-direct {v0}, Lcom/google/android/calendar/api/EventFactoryImpl;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/CalendarApi;->EventFactory:Lcom/google/android/calendar/api/EventFactory;

    .line 34
    new-instance v0, Lcom/google/android/calendar/api/ColorFactory;

    invoke-direct {v0}, Lcom/google/android/calendar/api/ColorFactory;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/CalendarApi;->ColorFactory:Lcom/google/android/calendar/api/ColorFactory;

    .line 36
    sput-object v3, Lcom/google/android/calendar/api/CalendarApi;->sApiContentResolver:Landroid/content/ContentResolver;

    .line 37
    sput-object v3, Lcom/google/android/calendar/api/CalendarApi;->sApiAppContext:Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/calendar/api/CalendarApi;->sInitialized:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/CalendarApi;->INITIALIZATION_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public static getApiAppContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 66
    sget-object v1, Lcom/google/android/calendar/api/CalendarApi;->INITIALIZATION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-boolean v0, Lcom/google/android/calendar/api/CalendarApi;->sInitialized:Z

    const-string v2, "You have to call initialize(Context) first"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->sApiAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getApiContentResolver()Landroid/content/ContentResolver;
    .locals 3

    .prologue
    .line 56
    sget-object v1, Lcom/google/android/calendar/api/CalendarApi;->INITIALIZATION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-boolean v0, Lcom/google/android/calendar/api/CalendarApi;->sInitialized:Z

    const-string v2, "You have to call initialize(Context) first"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->sApiContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    sget-object v1, Lcom/google/android/calendar/api/CalendarApi;->INITIALIZATION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-boolean v0, Lcom/google/android/calendar/api/CalendarApi;->sInitialized:Z

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/api/CalendarApi;->sApiAppContext:Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->sApiAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/api/CalendarApi;->sApiContentResolver:Landroid/content/ContentResolver;

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/calendar/api/CalendarApi;->sInitialized:Z

    .line 49
    :cond_0
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
