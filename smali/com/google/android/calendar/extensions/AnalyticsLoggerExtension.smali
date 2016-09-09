.class public Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;
.super Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;
.source "AnalyticsLoggerExtension.java"

# interfaces
.implements Lcom/android/calendar/AnalyticsLogger;


# static fields
.field private static final CONSUMER_ACCOUNT_DOMAINS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMART_MAIL_ENABLED_SETTING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClearcutManager:Lcom/google/android/calendar/loggers/ClearcutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-string v0, "@gmail.com"

    const-string v1, "@googlemail.com"

    .line 55
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->CONSUMER_ACCOUNT_DOMAINS:Ljava/util/Set;

    .line 57
    const-string v0, "CREATE"

    const-string v1, "CREATE_PRIVATE"

    const-string v2, "CREATE_SECRET"

    .line 58
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->SMART_MAIL_ENABLED_SETTING:Ljava/util/Set;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;-><init>()V

    return-void
.end method

.method private getBirthdayModeString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_0

    .line 359
    const-string v0, "Invalid"

    .line 362
    :goto_0
    return-object v0

    .line 350
    :pswitch_0
    const-string v0, "None"

    goto :goto_0

    .line 353
    :pswitch_1
    const-string v0, "Contacts"

    goto :goto_0

    .line 356
    :pswitch_2
    const-string v0, "GooglePlus"

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCalendars()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/timely/data/CalendarItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    const-string v1, "AnalyticsLogCalendarExt"

    const-string v2, "CalendarsCache not loaded"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 343
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private isConsumerAccount(Landroid/accounts/Account;)Z
    .locals 3

    .prologue
    .line 328
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 329
    sget-object v0, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->CONSUMER_ACCOUNT_DOMAINS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGoogleAccount(Landroid/accounts/Account;)Z
    .locals 2

    .prologue
    .line 251
    const-string v0, "com.google"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setCalendarStatisticsDimensions(Landroid/content/Context;Ljava/lang/Iterable;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/calendar/timely/data/CalendarItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/16 v10, 0x19

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 185
    .line 187
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 188
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isSynced()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_1
    add-int/2addr v3, v4

    .line 189
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    :goto_2
    add-int/2addr v0, v1

    move v1, v0

    .line 190
    goto :goto_0

    :cond_0
    move v4, v2

    .line 188
    goto :goto_1

    :cond_1
    move v0, v2

    .line 189
    goto :goto_2

    .line 192
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 194
    sget v0, Lcom/android/calendar/R$integer;->analytics_num_synced_calendars_dimension:I

    .line 195
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 196
    invoke-static {v3, v10}, Lcom/android/calendar/AnalyticsUtils;->convertNumToDimensionValue(II)Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-virtual {p0, p1, v0, v4}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 197
    sget v0, Lcom/android/calendar/R$integer;->analytics_num_visible_calendars_dimension:I

    .line 198
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 199
    invoke-static {v1, v10}, Lcom/android/calendar/AnalyticsUtils;->convertNumToDimensionValue(II)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {p0, p1, v0, v4}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 200
    sget v0, Lcom/android/calendar/R$integer;->analytics_num_synced_calendars_metric:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v6, v3

    invoke-virtual {p0, p1, v0, v6, v7}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;IJ)V

    .line 202
    sget v0, Lcom/android/calendar/R$integer;->analytics_num_visible_calendars_metric:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v6, v1

    invoke-virtual {p0, p1, v0, v6, v7}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;IJ)V

    .line 205
    if-eqz p3, :cond_8

    .line 209
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    move v3, v2

    move v4, v2

    move v6, v2

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 210
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 211
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isSynced()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v5

    :goto_4
    add-int/2addr v7, v6

    .line 212
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v5

    :goto_5
    add-int/2addr v6, v4

    .line 213
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->isConsumerAccount(Landroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 214
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isSynced()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_6
    add-int/2addr v3, v4

    .line 215
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v5

    :goto_7
    add-int/2addr v1, v0

    move v0, v1

    move v4, v7

    move v1, v3

    move v3, v6

    :goto_8
    move v6, v4

    move v4, v3

    move v3, v1

    move v1, v0

    .line 218
    goto :goto_3

    :cond_3
    move v7, v2

    .line 211
    goto :goto_4

    :cond_4
    move v6, v2

    .line 212
    goto :goto_5

    :cond_5
    move v4, v2

    .line 214
    goto :goto_6

    :cond_6
    move v0, v2

    .line 215
    goto :goto_7

    .line 220
    :cond_7
    sget v0, Lcom/android/calendar/R$integer;->analytics_num_synced_calendars_g_dimension:I

    .line 221
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 222
    invoke-static {v6, v10}, Lcom/android/calendar/AnalyticsUtils;->convertNumToDimensionValue(II)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 223
    sget v0, Lcom/android/calendar/R$integer;->analytics_num_synced_calendars_gc_dimension:I

    .line 224
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 225
    invoke-static {v3, v10}, Lcom/android/calendar/AnalyticsUtils;->convertNumToDimensionValue(II)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 227
    sget v0, Lcom/android/calendar/R$integer;->analytics_num_visible_calendars_g_dimension:I

    .line 228
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 229
    invoke-static {v4, v10}, Lcom/android/calendar/AnalyticsUtils;->convertNumToDimensionValue(II)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 230
    sget v0, Lcom/android/calendar/R$integer;->analytics_num_visible_calendars_gc_dimension:I

    .line 231
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 232
    invoke-static {v1, v10}, Lcom/android/calendar/AnalyticsUtils;->convertNumToDimensionValue(II)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 234
    sget v0, Lcom/android/calendar/R$integer;->analytics_num_synced_calendars_g_metric:I

    .line 235
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v6, v6

    .line 234
    invoke-virtual {p0, p1, v0, v6, v7}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;IJ)V

    .line 237
    sget v0, Lcom/android/calendar/R$integer;->analytics_num_synced_calendars_gc_metric:I

    .line 238
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v3

    .line 237
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;IJ)V

    .line 241
    sget v0, Lcom/android/calendar/R$integer;->analytics_num_visible_calendars_g_metric:I

    .line 242
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v4

    .line 241
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;IJ)V

    .line 244
    sget v0, Lcom/android/calendar/R$integer;->analytics_num_visible_calendars_gc_metric:I

    .line 245
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v1

    .line 244
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;IJ)V

    .line 248
    :cond_8
    return-void

    :cond_9
    move v0, v1

    move v4, v7

    move v1, v3

    move v3, v6

    goto :goto_8

    :cond_a
    move v0, v1

    move v1, v3

    move v3, v4

    move v4, v6

    goto :goto_8
.end method


# virtual methods
.method protected getAccountsForPlayLogger(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 83
    invoke-static {p1}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "calendar_app_analytics_sampling_rate"

    const-string v2, "10.0"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 72
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 73
    if-nez v2, :cond_0

    .line 74
    sget v2, Lcom/android/calendar/R$string;->rlz_access_points:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {p1, v2}, Lcom/google/android/calendar/loggers/ClearcutManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/calendar/loggers/ClearcutManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->mClearcutManager:Lcom/google/android/calendar/loggers/ClearcutManager;

    .line 78
    :cond_0
    const-string v2, "UA-39295668-5"

    invoke-super {p0, p1, v2, v0, v1}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->initialize(Landroid/content/Context;Ljava/lang/String;D)Z

    move-result v0

    return v0
.end method

.method public sendAdditionalEventsOnApplicationOpen(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 263
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v6

    .line 265
    invoke-static {p1}, Lcom/google/android/calendar/Accounts;->getSyncableAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 266
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->getCalendars()Ljava/util/Collection;

    move-result-object v3

    .line 268
    new-instance v7, Landroid/support/v4/util/SimpleArrayMap;

    array-length v0, v1

    invoke-direct {v7, v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    move v0, v2

    .line 270
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 271
    aget-object v4, v1, v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v4, v8}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 274
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 275
    if-eqz v1, :cond_1

    .line 276
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    :cond_1
    const-string v0, "AnalyticsLogCalendarExt"

    const-string v1, "Calendar belonging to not syncable account"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    move v1, v2

    .line 282
    :goto_2
    invoke-virtual {v7}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 283
    invoke-virtual {v7, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 286
    invoke-direct {p0, v0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 287
    const-string v3, "Google"

    .line 289
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 290
    invoke-direct {p0, v0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->isConsumerAccount(Landroid/accounts/Account;)Z

    move-result v4

    .line 291
    invoke-virtual {v6, v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v8

    .line 292
    if-eqz v4, :cond_3

    .line 293
    invoke-virtual {v8}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->getSmartmailSetting()Ljava/lang/String;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_3

    .line 295
    sget-object v9, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->SMART_MAIL_ENABLED_SETTING:Ljava/util/Set;

    .line 296
    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 297
    sget v9, Lcom/android/calendar/R$integer;->analytics_account_smart_mail_enabled_dimension:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-eqz v0, :cond_5

    .line 299
    const-string v0, "yes"

    .line 297
    :goto_3
    invoke-virtual {p0, p1, v9, v0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 302
    :cond_3
    invoke-virtual {v8}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->getBirthdaySetting()Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_4

    .line 304
    sget v8, Lcom/android/calendar/R$integer;->analytics_account_birthdays_enabled_dimension:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 306
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->getMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->getBirthdayModeString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {p0, p1, v8, v0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    :cond_4
    move v0, v4

    .line 309
    :goto_4
    if-eqz v0, :cond_6

    const-string v0, "ConsumerGoogle"

    .line 313
    :goto_5
    sget v4, Lcom/android/calendar/R$integer;->analytics_account_type_dimension:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0, p1, v4, v3}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 315
    sget v3, Lcom/android/calendar/R$integer;->analytics_google_account_type_dimension:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 319
    invoke-virtual {v7, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 318
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCalendarStatisticsDimensions(Landroid/content/Context;Ljava/lang/Iterable;Z)V

    .line 321
    sget v0, Lcom/android/calendar/R$string;->analytics_category_account_daily:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 299
    :cond_5
    const-string v0, "no"

    goto :goto_3

    .line 309
    :cond_6
    const-string v0, "NonConsumerGoogle"

    goto :goto_5

    .line 311
    :cond_7
    const-string v0, "NotGoogle"

    move-object v3, v0

    goto :goto_5

    .line 325
    :cond_8
    return-void

    :cond_9
    move v0, v2

    goto :goto_4
.end method

.method public setAdditionalDimensionsForApplicationOpenEvent(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v0, 0x0

    .line 134
    .line 137
    invoke-static {p1}, Lcom/google/android/calendar/Accounts;->getSyncableAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v3

    .line 139
    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 141
    invoke-direct {p0, v5}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 148
    sget v3, Lcom/android/calendar/R$integer;->analytics_number_accounts_dimension:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 149
    invoke-static {v2, v6}, Lcom/android/calendar/AnalyticsUtils;->convertNumToDimensionValue(II)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {p0, p1, v3, v2}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 152
    sget v2, Lcom/android/calendar/R$integer;->analytics_number_google_accounts_dimension:I

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 154
    invoke-static {v0, v6}, Lcom/android/calendar/AnalyticsUtils;->convertNumToDimensionValue(II)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/google/android/calendar/extensions/CountryDetector;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 159
    sget v2, Lcom/android/calendar/R$integer;->analytics_device_detected_country:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    const-string v0, "activity"

    .line 167
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 169
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "yes"

    .line 173
    :goto_2
    sget v2, Lcom/android/calendar/R$integer;->analytics_svelte_device:I

    .line 174
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 173
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$integer;->analytics_preloaded_dimension:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 178
    invoke-static {p1}, Lcom/google/android/calendar/ApplicationUtils;->isSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "preload"

    .line 176
    :goto_3
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->getCalendars()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->setCalendarStatisticsDimensions(Landroid/content/Context;Ljava/lang/Iterable;Z)V

    .line 181
    return-void

    .line 161
    :cond_2
    const-string v0, "null"

    goto :goto_1

    .line 169
    :cond_3
    const-string v0, "no"

    goto :goto_2

    .line 171
    :cond_4
    const-string v0, "unknown"

    goto :goto_2

    .line 178
    :cond_5
    const-string v0, "manual"

    goto :goto_3
.end method

.method public setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 120
    const-string v0, "AnalyticsLogCalendarExt"

    const-string v1, "Set Custom Dimensions: %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    const-string v0, "UA-39295668-5"

    invoke-super {p0, p1, v0, p2, p3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    return-void
.end method

.method public setCustomMetric(Landroid/content/Context;IJ)V
    .locals 7

    .prologue
    .line 127
    const-string v0, "AnalyticsLogCalendarExt"

    const-string v1, "Set Custom metric: %d %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    const-string v2, "UA-39295668-5"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 130
    return-void
.end method

.method public trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 98
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    return-void
.end method

.method public trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 7

    .prologue
    .line 104
    const-string v0, "AnalyticsLogCalendarExt"

    const-string v1, "track event: %s %s %s %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    const-string v2, "UA-39295668-5"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    return-void
.end method

.method public trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 112
    const-string v0, "AnalyticsLogCalendarExt"

    const-string v1, "track timing: %s %d %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p5, v2, v3

    const/4 v3, 0x3

    aput-object p6, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    const-string v2, "UA-39295668-5"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-super/range {v0 .. v7}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->trackTiming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public trackView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 88
    const-string v0, "AnalyticsLogCalendarExt"

    const-string v1, "track view: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    const-string v2, "UA-39295668-5"

    const-string v4, "AndroidTimely"

    const-string v5, "action"

    const-string v6, "app_view"

    const-string v7, "view_name"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-super/range {v0 .. v7}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->trackView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->mClearcutManager:Lcom/google/android/calendar/loggers/ClearcutManager;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/calendar/extensions/AnalyticsLoggerExtension;->mClearcutManager:Lcom/google/android/calendar/loggers/ClearcutManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/loggers/ClearcutManager;->logAction(I)V

    .line 94
    :cond_0
    return-void
.end method
