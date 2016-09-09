.class public Lcom/android/calendar/CalendarApplication;
.super Landroid/app/Application;
.source "CalendarApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityDestroyedRunnable:Ljava/lang/Runnable;

.field private final mActivityStoppedRunnable:Ljava/lang/Runnable;

.field private mAliveActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mAliveActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCalendarLoaderManager:Lcom/android/calendar/timely/data/CalendarLoaderManager;

.field private final mHandler:Landroid/os/Handler;

.field private mLastLocale:Ljava/util/Locale;

.field private final mRunningActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/calendar/CalendarApplication;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarApplication;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarApplication;->mRunningActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarApplication;->mAliveActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarApplication;->mAliveActivities:Ljava/util/Set;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarApplication;->mLastLocale:Ljava/util/Locale;

    .line 78
    new-instance v0, Lcom/android/calendar/CalendarApplication$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarApplication$1;-><init>(Lcom/android/calendar/CalendarApplication;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarApplication;->mActivityStoppedRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Lcom/android/calendar/CalendarApplication$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarApplication$2;-><init>(Lcom/android/calendar/CalendarApplication;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarApplication;->mActivityDestroyedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarApplication;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication;->mRunningActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/CalendarApplication;)Lcom/android/calendar/timely/data/CalendarLoaderManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication;->mCalendarLoaderManager:Lcom/android/calendar/timely/data/CalendarLoaderManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/CalendarApplication;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication;->mAliveActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private initializeOrReinitializeFlairs()V
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CalendarApplication;->mLastLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->initializeFlairs(Landroid/content/Context;)V

    .line 274
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarApplication;->mLastLocale:Ljava/util/Locale;

    .line 276
    :cond_0
    return-void
.end method

.method private registerCalendarPropertiesListeners()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 167
    :goto_0
    invoke-static {p0}, Lcom/android/calendar/widgetmonth/MonthViewWidgetProvider;->registerCalendarPropertyChangeListenerIfEnabled(Landroid/content/Context;)V

    .line 168
    return-void

    .line 164
    :cond_0
    sget-object v0, Lcom/android/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    const-string v1, "DateTimeService is not initialized, not registered as a listener."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 264
    invoke-static {p0}, Lcom/android/calendar/CalendarMultidex;->install(Landroid/content/Context;)V

    .line 265
    return-void
.end method

.method public initializeMandatoryPermissionBasedComponents()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication;->mCalendarLoaderManager:Lcom/android/calendar/timely/data/CalendarLoaderManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarLoaderManager;->startLoaders()V

    .line 225
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getPrimaryAccountSelector(Landroid/content/Context;)Lcom/android/calendar/timely/PrimaryAccountSelector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/PrimaryAccountSelector;->initialize(Landroid/content/Context;)V

    .line 226
    return-void
.end method

.method public isActivityAlive(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication;->mAliveActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication;->mAliveActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 200
    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication;->mCalendarLoaderManager:Lcom/android/calendar/timely/data/CalendarLoaderManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarLoaderManager;->createLoaders()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication;->mAliveActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication;->mAliveActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/CalendarApplication;->mActivityDestroyedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/calendar/CalendarApplication;->initializeOrReinitializeFlairs()V

    .line 231
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication;->mRunningActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 211
    if-nez v0, :cond_1

    .line 213
    invoke-static {p1}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/calendar/CalendarApplication;->initializeMandatoryPermissionBasedComponents()V

    .line 217
    :cond_0
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged()V

    .line 219
    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 241
    instance-of v0, p1, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/CalendarApplication;->mActivityStoppedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 108
    const-string v0, "StartApplication"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 109
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 111
    invoke-static {p0}, Lcom/google/android/calendar/Accounts;->initializeCaching(Landroid/content/Context;)V

    .line 113
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeService;->initialize(Landroid/content/Context;)V

    .line 114
    invoke-static {p0}, Lcom/android/calendar/DateTimeFormatHelper;->initialize(Landroid/content/Context;)V

    .line 115
    invoke-static {p0}, Lcom/google/android/calendar/PerformanceMetricCollector;->start(Landroid/content/Context;)V

    .line 116
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 117
    invoke-direct {p0}, Lcom/android/calendar/CalendarApplication;->initializeOrReinitializeFlairs()V

    .line 119
    invoke-static {p0}, Lcom/google/android/calendar/HSVSnapshotHelper;->registerHsv(Landroid/app/Application;)V

    .line 122
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getPrefService(Landroid/content/Context;)Lcom/android/calendar/prefs/PrefService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/prefs/PrefService;->onStart()V

    .line 123
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/calendar/UnifiedExtensions;->onApplicationStart(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->getInstance()Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->build()Lcom/android/calendar/timely/data/CalendarLoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarApplication;->mCalendarLoaderManager:Lcom/android/calendar/timely/data/CalendarLoaderManager;

    .line 127
    invoke-virtual {p0}, Lcom/android/calendar/CalendarApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->initialize(Landroid/content/Context;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/calendar/CalendarApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/timely/data/AccountsSettingsCache;->initialize(Landroid/content/Context;)V

    .line 131
    invoke-static {p0}, Lcom/android/calendar/cache/VolleyQueueHolder;->initialize(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/calendar/CalendarApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/cache/FlairsInvalidator;->invalidateIfNeeded(Landroid/content/Context;)V

    .line 135
    invoke-static {p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->initialize(Landroid/content/Context;)V

    .line 136
    invoke-direct {p0}, Lcom/android/calendar/CalendarApplication;->registerCalendarPropertiesListeners()V

    .line 139
    invoke-virtual {p0}, Lcom/android/calendar/CalendarApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/CalendarApi;->initialize(Landroid/content/Context;)V

    .line 142
    invoke-virtual {p0, p0}, Lcom/android/calendar/CalendarApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 145
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->initialize(Landroid/content/Context;)V

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.calendar.intent.action.GROOVE_REQUEST_UPSYNCED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v1, "com.google.android.calendar.intent.action.GROOVE_SYNCED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "com.google.android.calendar.intent.action.TRACKING_SYNC_INITIATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "com.google.android.calendar.intent.action.REFRESH_GROOVE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/alerts/GrooveAlertReceiver;

    invoke-direct {v2}, Lcom/android/calendar/alerts/GrooveAlertReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 152
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 153
    return-void
.end method

.method public startSearch(Lcom/android/calendar/search/Query;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/android/calendar/search/Query;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    .line 177
    invoke-static {p0}, Lcom/android/calendar/Utils;->getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 179
    invoke-virtual {p1}, Lcom/android/calendar/search/Query;->getWhat()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    const-string v0, "search"

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 184
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/calendar/SearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 187
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    const-string v2, "query"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 190
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 192
    return-void
.end method
