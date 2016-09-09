.class public Lcom/android/calendar/timely/settings/PreferencesUtils;
.super Ljava/lang/Object;
.source "PreferencesUtils.java"


# static fields
.field private static final SUPPORTED_TABLET_VIEWS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final WEEK_START_DEFAULT:Ljava/lang/String;

.field private static sSharedPrefsName:Ljava/lang/String;

.field private static sSharedPrefsNoBackupName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const-class v0, Lcom/android/calendar/timely/settings/PreferencesUtils;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/PreferencesUtils;->TAG:Ljava/lang/String;

    .line 71
    const-string v0, "prerence_value_agenda_view"

    const-string v1, "preference_value_hourly_view"

    const-string v2, "preferences_value_week_view"

    const-string v3, "preferences_value_month_view"

    .line 72
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/PreferencesUtils;->SUPPORTED_TABLET_VIEWS:Ljava/util/List;

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/PreferencesUtils;->WEEK_START_DEFAULT:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateResourceUri(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 366
    const-string v0, "android.resource://%s/%s/%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 369
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 366
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastUsedView(Landroid/content/Context;Z)I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    .line 224
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "preference_key_last_view"

    const/4 v4, 0x0

    .line 225
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    if-nez v0, :cond_2

    .line 230
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "preferred_startView"

    .line 231
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 232
    packed-switch v3, :pswitch_data_0

    .line 246
    if-eqz p1, :cond_5

    const-string v0, "preferences_value_month_view"

    .line 251
    :goto_0
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 252
    const-string v5, "preference_key_last_view"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    if-eq v3, v1, :cond_0

    if-ne v3, v6, :cond_1

    .line 257
    :cond_0
    const-string v5, "preference_key_grid_mode"

    if-ne v3, v6, :cond_6

    :goto_1
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 261
    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 266
    :cond_2
    const-string v1, "preferences_value_list_week_view"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "preferences_value_list_week_view_7_days"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 267
    :cond_3
    sget v0, Lcom/android/calendar/R$id;->week_view:I

    .line 281
    :cond_4
    :goto_2
    return v0

    .line 234
    :pswitch_0
    const-string v0, "prerence_value_agenda_view"

    goto :goto_0

    .line 237
    :pswitch_1
    const-string v0, "preference_value_hourly_view"

    goto :goto_0

    .line 240
    :pswitch_2
    const-string v0, "preferences_value_week_view"

    goto :goto_0

    .line 243
    :pswitch_3
    const-string v0, "preferences_value_month_view"

    goto :goto_0

    .line 246
    :cond_5
    const-string v0, "prerence_value_agenda_view"

    goto :goto_0

    :cond_6
    move v1, v2

    .line 257
    goto :goto_1

    .line 272
    :cond_7
    if-eqz p1, :cond_8

    sget-object v1, Lcom/android/calendar/timely/settings/PreferencesUtils;->SUPPORTED_TABLET_VIEWS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 273
    const-string v0, "preferences_value_month_view"

    .line 276
    :cond_8
    invoke-static {v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->viewIdForPreferenceValue(Ljava/lang/String;)I

    move-result v0

    .line 277
    if-nez v0, :cond_4

    .line 280
    sget-object v0, Lcom/android/calendar/timely/settings/PreferencesUtils;->TAG:Ljava/lang/String;

    const-string v1, "Unfamiliar last view, setting to default."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 281
    if-eqz p1, :cond_9

    const-string v0, "preferences_value_month_view"

    :goto_3
    invoke-static {v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->viewIdForPreferenceValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_9
    const-string v0, "prerence_value_agenda_view"

    goto :goto_3

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRingtonePreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 338
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPrefsNoBackupName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_alerts_ringtone"

    const/4 v2, 0x0

    .line 339
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preferences_use_standard_tone"

    const/4 v3, 0x1

    .line 341
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 344
    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 348
    :cond_0
    sget v0, Lcom/android/calendar/ToneUpgradeReceiver;->TONE_RESOURCE_ID:I

    invoke-static {p0, v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->generateResourceUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_1
    return-object v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 203
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPrefsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPrefsName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/android/calendar/timely/settings/PreferencesUtils;->sSharedPrefsName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->shared_prefs_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/PreferencesUtils;->sSharedPrefsName:Ljava/lang/String;

    .line 168
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/settings/PreferencesUtils;->sSharedPrefsName:Ljava/lang/String;

    return-object v0
.end method

.method public static getSharedPrefsNameOld()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "com.android.calendar_preferences"

    return-object v0
.end method

.method public static getSharedPrefsNoBackupName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/android/calendar/timely/settings/PreferencesUtils;->sSharedPrefsNoBackupName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->shared_prefs_no_backup_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/PreferencesUtils;->sSharedPrefsNoBackupName:Ljava/lang/String;

    .line 177
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/settings/PreferencesUtils;->sSharedPrefsNoBackupName:Ljava/lang/String;

    return-object v0
.end method

.method public static getSharedPrefsNoBackupNameOld()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "com.android.calendar_preferences_no_backup"

    return-object v0
.end method

.method public static setLastUsedView(Landroid/content/Context;ZI)V
    .locals 4

    .prologue
    .line 314
    sget v0, Lcom/android/calendar/R$id;->agenda_view:I

    if-ne p2, v0, :cond_0

    .line 315
    const-string v0, "prerence_value_agenda_view"

    .line 330
    :goto_0
    const-string v1, "preference_key_last_view"

    invoke-static {p0, v1, v0}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void

    .line 316
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->hourly_view:I

    if-ne p2, v0, :cond_1

    .line 317
    const-string v0, "preference_value_hourly_view"

    goto :goto_0

    .line 318
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->list_week_view_3days:I

    if-ne p2, v0, :cond_2

    .line 319
    const-string v0, "preference_value_3_day_view"

    goto :goto_0

    .line 320
    :cond_2
    sget v0, Lcom/android/calendar/R$id;->week_view:I

    if-ne p2, v0, :cond_3

    .line 321
    const-string v0, "preferences_value_week_view"

    goto :goto_0

    .line 322
    :cond_3
    sget v0, Lcom/android/calendar/R$id;->month_view:I

    if-ne p2, v0, :cond_4

    .line 323
    const-string v0, "preferences_value_month_view"

    goto :goto_0

    .line 325
    :cond_4
    if-eqz p1, :cond_5

    const-string v0, "preferences_value_month_view"

    .line 327
    :goto_1
    sget-object v1, Lcom/android/calendar/timely/settings/PreferencesUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to save itemId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 325
    :cond_5
    const-string v0, "prerence_value_agenda_view"

    goto :goto_1
.end method

.method public static setRingtonePreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 355
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPrefsNoBackupName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 356
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preferences_alerts_ringtone"

    .line 357
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 358
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    return-void
.end method

.method private static viewIdForPreferenceValue(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 286
    const-string v0, "prerence_value_agenda_view"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    sget v0, Lcom/android/calendar/R$id;->agenda_view:I

    .line 301
    :goto_0
    return v0

    .line 289
    :cond_0
    const-string v0, "preference_value_hourly_view"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    sget v0, Lcom/android/calendar/R$id;->hourly_view:I

    goto :goto_0

    .line 292
    :cond_1
    const-string v0, "preference_value_3_day_view"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    sget v0, Lcom/android/calendar/R$id;->list_week_view_3days:I

    goto :goto_0

    .line 295
    :cond_2
    const-string v0, "preferences_value_week_view"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    sget v0, Lcom/android/calendar/R$id;->week_view:I

    goto :goto_0

    .line 298
    :cond_3
    const-string v0, "preferences_value_month_view"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    sget v0, Lcom/android/calendar/R$id;->month_view:I

    goto :goto_0

    .line 301
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
