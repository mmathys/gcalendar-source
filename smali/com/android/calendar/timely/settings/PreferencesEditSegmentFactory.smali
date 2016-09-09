.class public Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;
.super Lcom/android/calendar/editor/BaseEditSegmentFactory;
.source "PreferencesEditSegmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$FragmentSegmentFactory;,
        Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;,
        Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$NotificationSegmentFactory;
    }
.end annotation


# instance fields
.field protected final mSegmentIds:Ljava/util/List;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/calendar/editor/BaseEditSegmentFactory;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->mSegmentIds:Ljava/util/List;

    .line 41
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 45
    const-string v1, "com.android.calendar.settings.calendar.name"

    new-instance v2, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v3, Lcom/android/calendar/R$layout;->preferences_segment_title:I

    sget-object v4, Lcom/android/calendar/timely/settings/CalendarPreferences;->NAME_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 51
    const-string v1, "com.android.calendar.settings.calendar.sync"

    new-instance v2, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;

    sget-object v3, Lcom/android/calendar/timely/settings/CalendarPreferences;->SYNC_ASPECT:Lcom/android/calendar/editor/AspectKey;

    sget v4, Lcom/android/calendar/R$string;->preference_edit_sync_header:I

    invoke-direct {v2, p1, v3, v4}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;-><init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 57
    const-string v1, "com.android.calendar.settings.calendar.color"

    new-instance v2, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v3, Lcom/android/calendar/R$layout;->preferences_segment_color:I

    sget-object v4, Lcom/android/calendar/timely/settings/CalendarPreferences;->COLOR_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 63
    const-string v1, "com.android.calendar.settings.calendar.notifications.timed"

    new-instance v2, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$NotificationSegmentFactory;

    sget-object v3, Lcom/android/calendar/timely/settings/CalendarPreferences;->TIMED_NOTIFICATIONS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    sget v4, Lcom/android/calendar/R$string;->preferences_edit_timed_notifications_header:I

    invoke-direct {v2, p1, v3, v0, v4}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$NotificationSegmentFactory;-><init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;Landroid/graphics/Typeface;I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 70
    const-string v1, "com.android.calendar.settings.calendar.notifications.allday"

    new-instance v2, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$NotificationSegmentFactory;

    sget-object v3, Lcom/android/calendar/timely/settings/CalendarPreferences;->ALLDAY_NOTIFICATIONS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    sget v4, Lcom/android/calendar/R$string;->preferences_edit_allday_notifications_header:I

    invoke-direct {v2, p1, v3, v0, v4}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$NotificationSegmentFactory;-><init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;Landroid/graphics/Typeface;I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 80
    const-string v0, "com.android.calendar.settingsgeneral.weekstart"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->preferences_segment_weekstart:I

    sget-object v3, Lcom/android/calendar/timely/settings/GeneralPreferences;->WEEK_START_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 86
    const-string v0, "com.android.calendar.settingsgeneral.hometimezone"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->preferences_segment_hometimezone:I

    sget-object v3, Lcom/android/calendar/timely/settings/GeneralPreferences;->HOME_TIMEZONE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 100
    const-string v6, "com.android.calendar.settingsgeneral.showWeekNumber"

    new-instance v0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;

    sget v2, Lcom/android/calendar/R$layout;->preferences_segment_switch_without_divider:I

    sget-object v3, Lcom/android/calendar/timely/settings/GeneralPreferences;->SHOW_WEEK_NUMBER_ASPECT:Lcom/android/calendar/editor/AspectKey;

    const/4 v4, 0x0

    sget v5, Lcom/android/calendar/R$string;->preference_edit_show_week_number:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;II)V

    invoke-virtual {p0, v6, v0}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 108
    const-string v0, "com.android.calendar.settingsgeneral.declinedevents"

    new-instance v1, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;

    sget-object v2, Lcom/android/calendar/timely/settings/GeneralPreferences;->SHOW_DECLINED_ASPECT:Lcom/android/calendar/editor/AspectKey;

    const/4 v3, 0x1

    sget v4, Lcom/android/calendar/R$string;->preference_edit_show_declined:I

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;-><init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 115
    const-string v6, "com.android.calendar.settingsgeneral.showMoreEvents"

    new-instance v0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;

    sget-object v2, Lcom/android/calendar/timely/settings/GeneralPreferences;->SHOW_MORE_EVENTS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    const/4 v3, 0x2

    sget v4, Lcom/android/calendar/R$string;->preference_edit_show_more_events_label:I

    sget v5, Lcom/android/calendar/R$string;->preference_edit_show_more_events_description:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;-><init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;III)V

    invoke-virtual {p0, v6, v0}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 123
    const-string v0, "com.android.calendar.settingsgeneral.defaultduration"

    new-instance v1, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$FragmentSegmentFactory;

    sget-object v2, Lcom/android/calendar/timely/settings/GeneralPreferences;->DEFAULT_DURATION_ASPECT:Lcom/android/calendar/editor/AspectKey;

    sget v3, Lcom/android/calendar/R$string;->settings_default_event_duration_title_spinner:I

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$FragmentSegmentFactory;-><init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 129
    const-string v0, "com.android.calendar.settingsgeneral.notifications_prefs"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->preferences_segment_notificationprefs:I

    sget-object v3, Lcom/android/calendar/timely/settings/GeneralPreferences;->NOTIFICATION_PREFS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 135
    const-string v0, "com.android.calendar.settingsgeneral.quickresponses"

    new-instance v1, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$FragmentSegmentFactory;

    sget-object v2, Lcom/android/calendar/timely/settings/GeneralPreferences;->QUICK_RESPONSES_ASPECT:Lcom/android/calendar/editor/AspectKey;

    sget v3, Lcom/android/calendar/R$string;->quick_response_settings:I

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$FragmentSegmentFactory;-><init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected getSegmentIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    if-eqz p1, :cond_0

    const-string v0, "com.android.calendar.settings"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 144
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->mSegmentIds:Ljava/util/List;

    return-object v0

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
