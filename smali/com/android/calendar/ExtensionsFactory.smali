.class public Lcom/android/calendar/ExtensionsFactory;
.super Ljava/lang/Object;
.source "ExtensionsFactory.java"


# static fields
.field private static final ANALYTICS_LOGGER_LOCK:Ljava/lang/Object;

.field private static final FEEDBACK_HELPER_LOCK:Ljava/lang/Object;

.field private static final LATENCY_LOGGER_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static mFlairInitializer:Lcom/android/calendar/event/data/FlairInitializer;

.field private static sAccountPhotoFactory:Lcom/android/calendar/AccountPhotoFactory;

.field private static sAccountsSettingsProviderHelper:Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;

.field private static sActivationLogger:Lcom/android/calendar/ActivationLogger;

.field private static sAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

.field private static sBirthdayManager:Lcom/android/calendar/BirthdayManagerInterface;

.field private static sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

.field private static sCalendarClientLogger:Lcom/android/calendar/CalendarClientLogger;

.field private static sDrawerExtensions:Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;

.field private static sEventInfoFragmentFactory:Lcom/android/calendar/event/EventInfoFragmentFactory;

.field private static sExtensions:Lcom/android/calendar/UnifiedExtensions;

.field private static sFeedbackHelper:Lcom/android/calendar/timely/FeedbackHelper;

.field private static sLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

.field private static sPrefService:Lcom/android/calendar/prefs/PrefService;

.field private static sPreferencesFactory:Lcom/android/calendar/timely/settings/PreferencesFactory;

.field private static sPrimaryAccountSelector:Lcom/android/calendar/timely/PrimaryAccountSelector;

.field private static sRecentAndDefaultNotificationsFactory:Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;

.field private static sRefreshUIManager:Lcom/android/calendar/RefreshUIManagerInterface;

.field private static sSelectedCalendarsHelper:Lcom/android/calendar/calendarlist/SelectCalendarsHelper;

.field private static sSuggestionFetcher:Lcom/android/calendar/timely/SuggestionFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/timely/SuggestionFetcher",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation
.end field

.field private static sSyncFactory:Lcom/android/calendar/timely/settings/SyncFactory;

.field private static sTaskDataFactory:Lcom/android/calendar/task/BaseTaskDataFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const-class v0, Lcom/android/calendar/ExtensionsFactory;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->TAG:Ljava/lang/String;

    .line 65
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sEventInfoFragmentFactory:Lcom/android/calendar/event/EventInfoFragmentFactory;

    .line 66
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sDrawerExtensions:Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->ANALYTICS_LOGGER_LOCK:Ljava/lang/Object;

    .line 68
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    .line 69
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sCalendarClientLogger:Lcom/android/calendar/CalendarClientLogger;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->LATENCY_LOGGER_LOCK:Ljava/lang/Object;

    .line 71
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    .line 72
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sActivationLogger:Lcom/android/calendar/ActivationLogger;

    .line 73
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sPreferencesFactory:Lcom/android/calendar/timely/settings/PreferencesFactory;

    .line 74
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sSuggestionFetcher:Lcom/android/calendar/timely/SuggestionFetcher;

    .line 75
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sSyncFactory:Lcom/android/calendar/timely/settings/SyncFactory;

    .line 77
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sRecentAndDefaultNotificationsFactory:Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;

    .line 78
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sRefreshUIManager:Lcom/android/calendar/RefreshUIManagerInterface;

    .line 79
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sSelectedCalendarsHelper:Lcom/android/calendar/calendarlist/SelectCalendarsHelper;

    .line 80
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

    .line 81
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sBirthdayManager:Lcom/android/calendar/BirthdayManagerInterface;

    .line 82
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sAccountPhotoFactory:Lcom/android/calendar/AccountPhotoFactory;

    .line 83
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sTaskDataFactory:Lcom/android/calendar/task/BaseTaskDataFactory;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->FEEDBACK_HELPER_LOCK:Ljava/lang/Object;

    .line 85
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sFeedbackHelper:Lcom/android/calendar/timely/FeedbackHelper;

    .line 86
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sPrimaryAccountSelector:Lcom/android/calendar/timely/PrimaryAccountSelector;

    .line 87
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sPrefService:Lcom/android/calendar/prefs/PrefService;

    .line 88
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->mFlairInitializer:Lcom/android/calendar/event/data/FlairInitializer;

    .line 89
    sput-object v1, Lcom/android/calendar/ExtensionsFactory;->sAccountsSettingsProviderHelper:Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountPhotoFactory(Landroid/content/Context;)Lcom/android/calendar/AccountPhotoFactory;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sAccountPhotoFactory:Lcom/android/calendar/AccountPhotoFactory;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;

    invoke-direct {v0}, Lcom/google/android/calendar/extensions/TimelyAccountPhotoFactory;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sAccountPhotoFactory:Lcom/android/calendar/AccountPhotoFactory;

    .line 240
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sAccountPhotoFactory:Lcom/android/calendar/AccountPhotoFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/AccountPhotoFactory;->initialize(Landroid/content/Context;)V

    .line 243
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sAccountPhotoFactory:Lcom/android/calendar/AccountPhotoFactory;

    return-object v0
.end method

.method public static getAccountsProviderHelper()Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sAccountsSettingsProviderHelper:Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension;

    invoke-direct {v0}, Lcom/google/android/calendar/extensions/AccountsSettingsProviderHelperExtension;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sAccountsSettingsProviderHelper:Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;

    .line 287
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sAccountsSettingsProviderHelper:Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;

    return-object v0
.end method

.method public static getActivationLogger(Landroid/content/Context;)Lcom/android/calendar/ActivationLogger;
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sActivationLogger:Lcom/android/calendar/ActivationLogger;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;

    invoke-direct {v0}, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sActivationLogger:Lcom/android/calendar/ActivationLogger;

    .line 183
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sActivationLogger:Lcom/android/calendar/ActivationLogger;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/calendar/ActivationLogger;->initialize(Landroid/content/Context;)V

    .line 186
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sActivationLogger:Lcom/android/calendar/ActivationLogger;

    return-object v0
.end method

.method public static getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;
    .locals 2

    .prologue
    .line 143
    sget-object v1, Lcom/android/calendar/ExtensionsFactory;->ANALYTICS_LOGGER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;

    invoke-direct {v0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    .line 146
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    invoke-interface {v0, p0}, Lcom/android/calendar/AnalyticsLogger;->initialize(Landroid/content/Context;)Z

    .line 149
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    monitor-exit v1

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBirthdayManager()Lcom/android/calendar/BirthdayManagerInterface;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sBirthdayManager:Lcom/android/calendar/BirthdayManagerInterface;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/google/android/calendar/extensions/BirthdayManager;

    invoke-direct {v0}, Lcom/google/android/calendar/extensions/BirthdayManager;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sBirthdayManager:Lcom/android/calendar/BirthdayManagerInterface;

    .line 234
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sBirthdayManager:Lcom/android/calendar/BirthdayManagerInterface;

    return-object v0
.end method

.method public static getCalendarClassifier()Lcom/android/calendar/CalendarClassifierInterface;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/google/android/calendar/extensions/CalendarClassifier;

    invoke-direct {v0}, Lcom/google/android/calendar/extensions/CalendarClassifier;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

    .line 226
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

    return-object v0
.end method

.method public static getCalendarClientLogger(Landroid/content/Context;)Lcom/android/calendar/CalendarClientLogger;
    .locals 2

    .prologue
    .line 133
    sget-object v1, Lcom/android/calendar/ExtensionsFactory;->ANALYTICS_LOGGER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sCalendarClientLogger:Lcom/android/calendar/CalendarClientLogger;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/android/calendar/CalendarClientLogger;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarClientLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sCalendarClientLogger:Lcom/android/calendar/CalendarClientLogger;

    .line 138
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sCalendarClientLogger:Lcom/android/calendar/CalendarClientLogger;

    monitor-exit v1

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDrawerExtensions()Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sDrawerExtensions:Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/google/android/calendar/extensions/DrawerExtensions;

    invoke-direct {v0}, Lcom/google/android/calendar/extensions/DrawerExtensions;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sDrawerExtensions:Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;

    .line 129
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sDrawerExtensions:Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;

    return-object v0
.end method

.method public static getEventInfoFragmentFactory()Lcom/android/calendar/event/EventInfoFragmentFactory;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sEventInfoFragmentFactory:Lcom/android/calendar/event/EventInfoFragmentFactory;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/google/android/calendar/event/TimelyEventInfoFragmentFactory;

    invoke-direct {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragmentFactory;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sEventInfoFragmentFactory:Lcom/android/calendar/event/EventInfoFragmentFactory;

    .line 121
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sEventInfoFragmentFactory:Lcom/android/calendar/event/EventInfoFragmentFactory;

    return-object v0
.end method

.method public static getExtensions()Lcom/android/calendar/UnifiedExtensions;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sExtensions:Lcom/android/calendar/UnifiedExtensions;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;

    invoke-direct {v0}, Lcom/google/android/calendar/extensions/UnifiedExtensionsImpl;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sExtensions:Lcom/android/calendar/UnifiedExtensions;

    .line 97
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sExtensions:Lcom/android/calendar/UnifiedExtensions;

    return-object v0
.end method

.method public static getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;
    .locals 3

    .prologue
    .line 165
    sget-object v1, Lcom/android/calendar/ExtensionsFactory;->LATENCY_LOGGER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;

    invoke-direct {v0}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    sget-object v2, Lcom/android/calendar/ExtensionsFactory;->sLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    invoke-interface {v2, v0}, Lcom/android/calendar/latency/LatencyLogger;->initialize(Landroid/content/Context;)Z

    .line 174
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    monitor-exit v1

    return-object v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getLocationFetcher()Lcom/android/calendar/timely/SuggestionFetcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/calendar/timely/SuggestionFetcher",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sSuggestionFetcher:Lcom/android/calendar/timely/SuggestionFetcher;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/google/android/calendar/timely/location/LocationFetcher;

    invoke-direct {v0}, Lcom/google/android/calendar/timely/location/LocationFetcher;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sSuggestionFetcher:Lcom/android/calendar/timely/SuggestionFetcher;

    .line 194
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sSuggestionFetcher:Lcom/android/calendar/timely/SuggestionFetcher;

    return-object v0
.end method

.method public static declared-synchronized getPrefService(Landroid/content/Context;)Lcom/android/calendar/prefs/PrefService;
    .locals 4

    .prologue
    .line 264
    const-class v1, Lcom/android/calendar/ExtensionsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sPrefService:Lcom/android/calendar/prefs/PrefService;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;

    invoke-direct {v0}, Lcom/google/android/calendar/timely/settings/TimelyPrefService;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sPrefService:Lcom/android/calendar/prefs/PrefService;

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 267
    sget-object v2, Lcom/android/calendar/ExtensionsFactory;->sPrefService:Lcom/android/calendar/prefs/PrefService;

    .line 268
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getPrimaryAccountSelector(Landroid/content/Context;)Lcom/android/calendar/timely/PrimaryAccountSelector;

    move-result-object v3

    .line 267
    invoke-interface {v2, v0, v3}, Lcom/android/calendar/prefs/PrefService;->initialize(Landroid/content/Context;Lcom/android/calendar/timely/PrimaryAccountSelector;)V

    .line 271
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sPrefService:Lcom/android/calendar/prefs/PrefService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPreferencesFactory()Lcom/android/calendar/timely/settings/PreferencesFactory;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sPreferencesFactory:Lcom/android/calendar/timely/settings/PreferencesFactory;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory;

    invoke-direct {v0}, Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sPreferencesFactory:Lcom/android/calendar/timely/settings/PreferencesFactory;

    .line 105
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sPreferencesFactory:Lcom/android/calendar/timely/settings/PreferencesFactory;

    return-object v0
.end method

.method public static getPrimaryAccountSelector(Landroid/content/Context;)Lcom/android/calendar/timely/PrimaryAccountSelector;
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sPrimaryAccountSelector:Lcom/android/calendar/timely/PrimaryAccountSelector;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/google/android/calendar/timely/TimelyPrimaryAccountSelector;

    invoke-direct {v0}, Lcom/google/android/calendar/timely/TimelyPrimaryAccountSelector;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sPrimaryAccountSelector:Lcom/android/calendar/timely/PrimaryAccountSelector;

    .line 249
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sPrimaryAccountSelector:Lcom/android/calendar/timely/PrimaryAccountSelector;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/PrimaryAccountSelector;->initialize(Landroid/content/Context;)V

    .line 252
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sPrimaryAccountSelector:Lcom/android/calendar/timely/PrimaryAccountSelector;

    return-object v0
.end method

.method public static getRecentAndDefaultNotificationsFactory()Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sRecentAndDefaultNotificationsFactory:Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;

    invoke-direct {v0}, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sRecentAndDefaultNotificationsFactory:Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;

    .line 210
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sRecentAndDefaultNotificationsFactory:Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;

    return-object v0
.end method

.method public static getRefreshUIManager()Lcom/android/calendar/RefreshUIManagerInterface;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sRefreshUIManager:Lcom/android/calendar/RefreshUIManagerInterface;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/google/android/calendar/extensions/RefreshUIManager;

    invoke-direct {v0}, Lcom/google/android/calendar/extensions/RefreshUIManager;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sRefreshUIManager:Lcom/android/calendar/RefreshUIManagerInterface;

    .line 113
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sRefreshUIManager:Lcom/android/calendar/RefreshUIManagerInterface;

    return-object v0
.end method

.method public static getSelectedCalendarsHelper()Lcom/android/calendar/calendarlist/SelectCalendarsHelper;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sSelectedCalendarsHelper:Lcom/android/calendar/calendarlist/SelectCalendarsHelper;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/google/android/calendar/timely/settings/SelectCalendarsHelperImpl;

    invoke-direct {v0}, Lcom/google/android/calendar/timely/settings/SelectCalendarsHelperImpl;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sSelectedCalendarsHelper:Lcom/android/calendar/calendarlist/SelectCalendarsHelper;

    .line 218
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sSelectedCalendarsHelper:Lcom/android/calendar/calendarlist/SelectCalendarsHelper;

    return-object v0
.end method

.method public static getSyncFactory()Lcom/android/calendar/timely/settings/SyncFactory;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sSyncFactory:Lcom/android/calendar/timely/settings/SyncFactory;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/google/android/calendar/timely/settings/SyncFactoryImpl;

    invoke-direct {v0}, Lcom/google/android/calendar/timely/settings/SyncFactoryImpl;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sSyncFactory:Lcom/android/calendar/timely/settings/SyncFactory;

    .line 202
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sSyncFactory:Lcom/android/calendar/timely/settings/SyncFactory;

    return-object v0
.end method

.method public static getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sTaskDataFactory:Lcom/android/calendar/task/BaseTaskDataFactory;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/google/android/calendar/task/TaskDataFactory;

    invoke-direct {v0}, Lcom/google/android/calendar/task/TaskDataFactory;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->sTaskDataFactory:Lcom/android/calendar/task/BaseTaskDataFactory;

    .line 260
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->sTaskDataFactory:Lcom/android/calendar/task/BaseTaskDataFactory;

    return-object v0
.end method

.method public static declared-synchronized initializeFlairs(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 275
    const-class v1, Lcom/android/calendar/ExtensionsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->mFlairInitializer:Lcom/android/calendar/event/data/FlairInitializer;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/google/android/calendar/event/data/TimelyFlairInitializer;

    invoke-direct {v0}, Lcom/google/android/calendar/event/data/TimelyFlairInitializer;-><init>()V

    sput-object v0, Lcom/android/calendar/ExtensionsFactory;->mFlairInitializer:Lcom/android/calendar/event/data/FlairInitializer;

    .line 279
    :cond_0
    sget-object v0, Lcom/android/calendar/ExtensionsFactory;->mFlairInitializer:Lcom/android/calendar/event/data/FlairInitializer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/calendar/event/data/FlairInitializer;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit v1

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
