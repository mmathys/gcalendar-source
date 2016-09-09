.class public Lcom/android/calendar/timely/settings/GeneralPreferences;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferences.java"

# interfaces
.implements Lcom/android/calendar/editor/AspectAdapter;
.implements Lcom/android/calendar/editor/EditSegmentController;
.implements Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;
.implements Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;
.implements Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;
.implements Lcom/android/calendar/timely/settings/data/InputAspectSwitch;
.implements Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;


# static fields
.field public static final ALTERNATE_CALENDARS_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DURATION_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/timely/settings/data/InputAspectFragment;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOME_TIMEZONE_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_PREFS_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUICK_RESPONSES_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/timely/settings/data/InputAspectFragment;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOW_DECLINED_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/timely/settings/data/InputAspectSwitch;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOW_MORE_EVENTS_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/timely/settings/data/InputAspectSwitch;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOW_WEEK_NUMBER_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/timely/settings/data/InputAspectSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final WEEK_START_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultDurationAspect:Lcom/android/calendar/timely/settings/data/InputAspectFragment;

.field private mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableRingtoneUri:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMutableShowDeclined:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableShowMoreEvents:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableShowWeekNumber:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableWeekstart:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalNotify:Z

.field private mOriginalRingtoneUri:Ljava/lang/String;

.field private mOriginalShowDeclined:Z

.field private mOriginalShowMoreEvents:Z

.field private mOriginalShowWeekNumber:Z

.field private mOriginalTimezone:Ljava/lang/String;

.field private mOriginalUseDeviceTimezone:Z

.field private mOriginalUseStandardTone:Z

.field private mOriginalVibrate:Z

.field private mOriginalWeekstart:Ljava/lang/String;

.field private mQuickResponsesAspect:Lcom/android/calendar/timely/settings/data/InputAspectFragment;

.field private mSegments:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mSegmentsToShow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-class v0, Lcom/android/calendar/timely/settings/GeneralPreferences;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->TAG:Ljava/lang/String;

    .line 90
    const-string v0, "com.android.calendar.settingsgeneral.weekstart"

    const-class v1, Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;

    .line 91
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->WEEK_START_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 92
    const-string v0, "com.android.calendar.settingsgeneral.hometimezone"

    const-class v1, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;

    .line 93
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->HOME_TIMEZONE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 94
    const-string v0, "com.android.calendar.settingsgeneral.alternateCalendar"

    const-class v1, Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;

    .line 95
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->ALTERNATE_CALENDARS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 96
    const-string v0, "com.android.calendar.settingsgeneral.showWeekNumber"

    const-class v1, Lcom/android/calendar/timely/settings/data/InputAspectSwitch;

    .line 97
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->SHOW_WEEK_NUMBER_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 98
    const-string v0, "com.android.calendar.settingsgeneral.declinedevents"

    const-class v1, Lcom/android/calendar/timely/settings/data/InputAspectSwitch;

    .line 99
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->SHOW_DECLINED_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 100
    const-string v0, "com.android.calendar.settingsgeneral.showMoreEvents"

    const-class v1, Lcom/android/calendar/timely/settings/data/InputAspectSwitch;

    .line 101
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->SHOW_MORE_EVENTS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 102
    const-string v0, "com.android.calendar.settingsgeneral.defaultduration"

    const-class v1, Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    .line 103
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->DEFAULT_DURATION_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 104
    const-string v0, "com.android.calendar.settingsgeneral.notifications_prefs"

    const-class v1, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;

    .line 105
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->NOTIFICATION_PREFS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 106
    const-string v0, "com.android.calendar.settingsgeneral.quickresponses"

    const-class v1, Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    .line 107
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->QUICK_RESPONSES_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private constructFragmentAspects()V
    .locals 2

    .prologue
    .line 324
    .line 325
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getPreferencesFactory()Lcom/android/calendar/timely/settings/PreferencesFactory;

    move-result-object v1

    .line 326
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-interface {v1, v0}, Lcom/android/calendar/timely/settings/PreferencesFactory;->getDefaultDurationInputAspect(Landroid/preference/PreferenceActivity;)Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mDefaultDurationAspect:Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    .line 328
    new-instance v0, Lcom/android/calendar/timely/settings/GeneralPreferences$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/settings/GeneralPreferences$1;-><init>(Lcom/android/calendar/timely/settings/GeneralPreferences;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mQuickResponsesAspect:Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    .line 345
    return-void
.end method

.method private loadPrefsIntoModel()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 349
    invoke-static {v3}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 352
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeekPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalWeekstart:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalWeekstart:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableWeekstart:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 356
    const-string v0, "preferences_home_tz_enabled"

    .line 357
    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalUseDeviceTimezone:Z

    .line 359
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalUseDeviceTimezone:Z

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 361
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalUseDeviceTimezone:Z

    if-nez v0, :cond_1

    .line 362
    const-string v0, "preferences_home_tz"

    .line 363
    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalTimezone:Ljava/lang/String;

    .line 367
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalTimezone:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 376
    const-string v0, "preferences_show_week_num"

    .line 377
    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalShowWeekNumber:Z

    .line 379
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalShowWeekNumber:Z

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowWeekNumber:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 382
    const-string v0, "preferences_hide_declined"

    .line 383
    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalShowDeclined:Z

    .line 385
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalShowDeclined:Z

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowDeclined:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 388
    const-string v0, "preference_showMoreEvents"

    .line 389
    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalShowMoreEvents:Z

    .line 392
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalShowMoreEvents:Z

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowMoreEvents:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 395
    const-string v0, "preferences_alerts"

    .line 396
    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalNotify:Z

    .line 398
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalNotify:Z

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 400
    invoke-static {v3}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getRingtonePreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalRingtoneUri:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalRingtoneUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableRingtoneUri:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 402
    const-string v0, "preferences_use_standard_tone"

    .line 403
    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalUseStandardTone:Z

    .line 406
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalUseStandardTone:Z

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 408
    const-string v0, "preferences_alerts_vibrate"

    .line 409
    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalVibrate:Z

    .line 411
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalVibrate:Z

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 412
    return-void

    :cond_0
    move v0, v2

    .line 357
    goto/16 :goto_0

    .line 365
    :cond_1
    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalTimezone:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 383
    goto :goto_2
.end method


# virtual methods
.method public applyChangeAnimated(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method public canVibrate()Z
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 586
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 587
    :cond_0
    const/4 v0, 0x0

    .line 590
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getActivityResultNotifierActivity()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;
    .locals 2

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 597
    instance-of v1, v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    if-eqz v1, :cond_0

    .line 598
    check-cast v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    .line 601
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCachedHomeTimezone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 514
    const-string v1, "preferences_home_tz"

    .line 515
    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    return-object v0
.end method

.method public getInputAspect(Lcom/android/calendar/editor/AspectKey;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AspectType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/calendar/editor/AspectKey",
            "<TAspectType;>;)TAspectType;"
        }
    .end annotation

    .prologue
    .line 436
    sget-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->WEEK_START_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p1, p0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 458
    :goto_0
    return-object v0

    .line 438
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->HOME_TIMEZONE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {p1, p0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_1
    sget-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->SHOW_WEEK_NUMBER_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    invoke-virtual {p1, p0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_2
    sget-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->SHOW_DECLINED_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    invoke-virtual {p1, p0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 447
    :cond_3
    sget-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->DEFAULT_DURATION_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 448
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mDefaultDurationAspect:Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    invoke-virtual {p1, v0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 449
    :cond_4
    sget-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->NOTIFICATION_PREFS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    invoke-virtual {p1, p0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_5
    sget-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->QUICK_RESPONSES_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 452
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mQuickResponsesAspect:Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    invoke-virtual {p1, v0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_6
    sget-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->SHOW_MORE_EVENTS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 454
    invoke-virtual {p1, p0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 457
    :cond_7
    sget-object v0, Lcom/android/calendar/timely/settings/GeneralPreferences;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to find aspect key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 458
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getWeekStartLabels()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, Ljava/util/ArrayList;

    .line 486
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$array;->preferences_week_start_day_labels:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getWeekStartOptions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    new-instance v0, Ljava/util/ArrayList;

    .line 477
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$array;->preferences_week_start_day_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public mutableNotify()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public mutableRingtoneUri()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableRingtoneUri:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableSwitch(I)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 549
    packed-switch p1, :pswitch_data_0

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 551
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowWeekNumber:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 555
    :goto_0
    return-object v0

    .line 553
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowDeclined:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    goto :goto_0

    .line 555
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowMoreEvents:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    goto :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public mutableTimezone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableUseHomeTimezone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public mutableUseStandardTone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public mutableVibrate()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public mutableWeekStart()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableWeekstart:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->constructFragmentAspects()V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegmentsToShow:Ljava/util/List;

    .line 178
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settingsgeneral.weekstart"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settingsgeneral.hometimezone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settingsgeneral.showWeekNumber"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settingsgeneral.declinedevents"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$bool;->force_show_more_events:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    .line 187
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/calendar/utils/NycUtils;->isDeviceTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settingsgeneral.showMoreEvents"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mDefaultDurationAspect:Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settingsgeneral.defaultduration"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settingsgeneral.notifications_prefs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settingsgeneral.quickresponses"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;

    .line 198
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegmentsToShow:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 199
    const-string v1, "com.android.calendar.settingsgeneral"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->createEditSegments(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegments:Ljava/util/Collection;

    .line 200
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->segments:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 201
    iget-object v1, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/editor/EditSegment;

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 206
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->loadPrefsIntoModel()V

    .line 209
    if-eqz p1, :cond_4

    .line 210
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 211
    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/EditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 217
    invoke-virtual {v0, p0}, Lcom/android/calendar/editor/EditSegment;->setInput(Ljava/lang/Object;)V

    goto :goto_2

    .line 219
    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegments:Ljava/util/Collection;

    .line 151
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 156
    sget v0, Lcom/android/calendar/R$layout;->loading_segments_preferences_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 224
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 226
    invoke-static {v4}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 232
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalWeekstart:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableWeekstart:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 234
    const-string v3, "preferences_week_start_day"

    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableWeekstart:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableWeekstart:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalWeekstart:Ljava/lang/String;

    move v0, v1

    .line 237
    :goto_0
    iget-boolean v3, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalUseDeviceTimezone:Z

    iget-object v6, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v6}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v6

    if-eq v3, v6, :cond_d

    .line 240
    const-string v3, "preferences_home_tz_enabled"

    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalUseDeviceTimezone:Z

    move v0, v1

    move v3, v1

    .line 249
    :goto_2
    iget-object v6, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalTimezone:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v6}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_c

    .line 252
    const-string v3, "preferences_home_tz"

    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalTimezone:Ljava/lang/String;

    move v3, v1

    move v0, v1

    .line 257
    :goto_3
    iget-boolean v6, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalShowWeekNumber:Z

    iget-object v7, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowWeekNumber:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v7

    if-eq v6, v7, :cond_0

    .line 259
    const-string v0, "preferences_show_week_num"

    iget-object v6, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowWeekNumber:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v6}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v6

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 260
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowWeekNumber:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalShowWeekNumber:Z

    move v0, v1

    .line 262
    :cond_0
    iget-boolean v6, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalShowDeclined:Z

    iget-object v7, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowDeclined:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v7}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v7

    if-eq v6, v7, :cond_b

    .line 264
    const-string v0, "preferences_hide_declined"

    iget-object v6, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowDeclined:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v6}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v1

    :cond_1
    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 265
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowDeclined:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalShowDeclined:Z

    .line 267
    :goto_4
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalShowMoreEvents:Z

    iget-object v2, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowMoreEvents:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    if-eq v0, v2, :cond_2

    .line 268
    const-string v0, "preference_showMoreEvents"

    iget-object v2, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowMoreEvents:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 269
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableShowMoreEvents:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalShowMoreEvents:Z

    .line 273
    :cond_2
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalNotify:Z

    iget-object v2, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    if-eq v0, v2, :cond_3

    .line 274
    const-string v0, "preferences_alerts"

    iget-object v2, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 275
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalNotify:Z

    .line 277
    :cond_3
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalUseStandardTone:Z

    iget-object v2, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    if-eq v0, v2, :cond_4

    .line 278
    const-string v0, "preferences_use_standard_tone"

    iget-object v2, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 279
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    .line 278
    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 280
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalUseStandardTone:Z

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalRingtoneUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableRingtoneUri:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 284
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableRingtoneUri:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->setRingtonePreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableRingtoneUri:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalRingtoneUri:Ljava/lang/String;

    .line 287
    :cond_5
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalVibrate:Z

    iget-object v2, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    if-eq v0, v2, :cond_6

    .line 288
    const-string v0, "preferences_alerts_vibrate"

    iget-object v2, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 289
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mOriginalVibrate:Z

    .line 292
    :cond_6
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    if-eqz v3, :cond_7

    .line 295
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    .line 296
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    :goto_5
    invoke-static {v4, v0}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    :cond_7
    if-eqz v1, :cond_8

    .line 304
    invoke-static {v4}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getScheduledUpdateIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    :cond_8
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 308
    return-void

    :cond_9
    move v0, v2

    .line 240
    goto/16 :goto_1

    .line 298
    :cond_a
    const-string v0, "auto"

    goto :goto_5

    :cond_b
    move v1, v0

    goto/16 :goto_4

    :cond_c
    move v8, v0

    move v0, v3

    move v3, v8

    goto/16 :goto_3

    :cond_d
    move v3, v0

    move v0, v2

    goto/16 :goto_2

    :cond_e
    move v0, v2

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegments:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 314
    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/EditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 319
    return-void
.end method

.method public setFullScreen(Lcom/android/calendar/editor/EditSegment;Z)V
    .locals 0

    .prologue
    .line 419
    return-void
.end method
