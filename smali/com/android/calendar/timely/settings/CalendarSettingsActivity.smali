.class public Lcom/android/calendar/timely/settings/CalendarSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;
.implements Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;,
        Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/PreferenceActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;",
        "Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;"
    }
.end annotation


# static fields
.field public static final BIRTHDAY_STANDIN_URI:Landroid/net/Uri;

.field private static final CALENDAR_PREFERENCES_FRAGMENT:Ljava/lang/String;

.field private static final COLORABLE_CIRCLE_RES:I

.field private static final COLORS_PROJECTION:[Ljava/lang/String;

.field public static final HOLIDAY_STANDIN_URI:Landroid/net/Uri;

.field public static final SETTINGS_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field private static sAlldayNotificationChanges:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static sColorChanges:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sForceInvalidateOnResume:Z

.field private static sSyncChanges:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sTimedNotificationChanges:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static sTitleChanges:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

.field private mAlldayNotificationChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBirthdayText:Ljava/lang/String;

.field private mCalendarListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mColorCache:Lcom/android/calendar/ColorCache;

.field private mColorChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/content/AsyncQueryHandler;

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mHolidayText:Ljava/lang/String;

.field private mLoadsFinished:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreLabelText:Ljava/lang/String;

.field private mPrimaryAccount:Landroid/accounts/Account;

.field private mPrimaryCalendarText:Ljava/lang/String;

.field private mRobotoMedium:Landroid/graphics/Typeface;

.field private mShowCalendarsText:Ljava/lang/String;

.field private mShowHiddenCalendars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowMoreText:Ljava/lang/String;

.field private mSyncChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTimedNotificationChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTitleChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleText:Landroid/widget/TextView;

.field private mUpArrow:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const-class v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->TAG:Ljava/lang/String;

    .line 76
    const-string v0, "settings://calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->SETTINGS_URI:Landroid/net/Uri;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "color_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->COLORS_PROJECTION:[Ljava/lang/String;

    .line 108
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "birthdays"

    .line 109
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->BIRTHDAY_STANDIN_URI:Landroid/net/Uri;

    .line 110
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "holidays"

    .line 111
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->HOLIDAY_STANDIN_URI:Landroid/net/Uri;

    .line 117
    const-class v0, Lcom/android/calendar/timely/settings/CalendarPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->CALENDAR_PREFERENCES_FRAGMENT:Ljava/lang/String;

    .line 119
    sget v0, Lcom/android/calendar/R$drawable;->color_picker_swatch:I

    sput v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->COLORABLE_CIRCLE_RES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sForceInvalidateOnResume:Z

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHeaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mRobotoMedium:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->COLORABLE_CIRCLE_RES:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;Landroid/preference/PreferenceActivity$Header;)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->isShowMoreHeader(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v0

    return v0
.end method

.method private isShowMoreHeader(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 2

    .prologue
    .line 714
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "key_account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onShowMoreClick(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mShowHiddenCalendars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    const/4 v2, 0x0

    .line 725
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    .line 726
    invoke-interface {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;

    .line 727
    invoke-virtual {v1}, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;

    .line 734
    :goto_0
    if-eqz v0, :cond_1

    .line 735
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 736
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    iget-object v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;->calendars:Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 737
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/android/calendar/calendarlist/CalendarListUtils;->sortItems(Landroid/content/Context;Ljava/util/List;)V

    .line 739
    :cond_1
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private recordMemoryUsage(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 742
    invoke-static {p0}, Lcom/google/android/calendar/PerformanceMetricCollector;->start(Landroid/content/Context;)V

    .line 743
    if-eqz p1, :cond_0

    .line 744
    const-string v0, "CalendarSettingsActivity.Recreated"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 748
    :goto_0
    return-void

    .line 746
    :cond_0
    const-string v0, "CalendarSettingsActivity.Created"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetCalendarListItems()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private setHeaderTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 470
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mUpArrow:Landroid/view/View;

    sget v1, Lcom/android/calendar/R$string;->preferences_back_description:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 473
    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 475
    :cond_0
    return-void
.end method


# virtual methods
.method protected getBirthdayPreferenceFragmentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    const-class v0, Lcom/android/calendar/timely/settings/BirthdayPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCalendarPreferenceFragmentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->CALENDAR_PREFERENCES_FRAGMENT:Ljava/lang/String;

    return-object v0
.end method

.method protected getHolidayPreferenceFragmentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    const-class v0, Lcom/android/calendar/timely/settings/HolidayPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPrimaryBirthdayAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 701
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 702
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 705
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 289
    :cond_0
    sget v0, Lcom/android/calendar/R$xml;->calendar_settings_headers:I

    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mLoadsFinished:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 296
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    .line 297
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 301
    invoke-interface {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move-object v0, v3

    .line 433
    :goto_2
    if-eqz v0, :cond_d

    .line 435
    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 436
    add-int/lit8 v0, v2, 0x1

    :goto_3
    move v2, v0

    .line 438
    goto :goto_1

    .line 303
    :pswitch_0
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;

    .line 306
    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;->getAccountName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    .line 305
    invoke-static {v1, v5}, Lcom/android/calendar/calendarlist/CalendarListUtils;->getCountOfNotHiddenCalendars(Ljava/lang/String;Ljava/util/List;)I

    move-result v1

    if-nez v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mShowCalendarsText:Ljava/lang/String;

    :goto_4
    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 308
    new-instance v1, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Landroid/os/Bundle;-><init>(I)V

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 309
    iget-object v1, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v5, "key_account_name"

    .line 310
    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 311
    goto :goto_2

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mShowMoreText:Ljava/lang/String;

    goto :goto_4

    .line 313
    :pswitch_1
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;

    .line 314
    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 315
    iput-object v0, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    move-object v0, v3

    .line 316
    goto :goto_2

    .line 318
    :pswitch_2
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 320
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTitleChanges:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 321
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTitleChanges:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 327
    :goto_5
    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 328
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getCalendarPreferenceFragmentClassName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 329
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 331
    const-string v6, "key_uri"

    iget-object v7, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 332
    const-string v6, "key_title"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorChanges:Ljava/util/Map;

    iget-object v6, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 335
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorChanges:Ljava/util/Map;

    iget-object v6, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 339
    :goto_6
    const-string v6, "key_color"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mSyncChanges:Ljava/util/Map;

    iget-object v6, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 343
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mSyncChanges:Ljava/util/Map;

    iget-object v6, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 347
    :goto_7
    const-string v6, "key_sync"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    iget-object v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    .line 350
    iget-object v6, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorCache:Lcom/android/calendar/ColorCache;

    invoke-virtual {v6, v1}, Lcom/android/calendar/ColorCache;->getDecimalColorList(Landroid/accounts/Account;)[I

    move-result-object v1

    .line 352
    if-eqz v1, :cond_2

    .line 353
    const-string v6, "key_color_list"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 356
    :cond_2
    const-string v1, "key_id"

    iget-object v6, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->id:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "key_account_name"

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->getAccountName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "key_account_type"

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->getAccountType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "key_owner_account"

    iget-object v6, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->ownerAccount:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v1, "key_priority"

    iget v6, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTimedNotificationChanges:Ljava/util/Map;

    iget-object v6, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    const-string v6, "key_timed_notifications"

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTimedNotificationChanges:Ljava/util/Map;

    iget-object v7, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    .line 366
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 365
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 368
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mAlldayNotificationChanges:Ljava/util/Map;

    iget-object v6, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 369
    const-string v1, "key_allday_notifications"

    iget-object v6, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mAlldayNotificationChanges:Ljava/util/Map;

    iget-object v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    .line 370
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 369
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 373
    :cond_4
    iput-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object v0, v3

    .line 374
    goto/16 :goto_2

    .line 323
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mPrimaryCalendarText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getCalendarNameToDisplay(Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 337
    :cond_6
    iget v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->color:I

    goto/16 :goto_6

    .line 345
    :cond_7
    iget-boolean v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    goto :goto_7

    .line 376
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mMoreLabelText:Ljava/lang/String;

    iput-object v0, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    move-object v0, v3

    .line 377
    goto/16 :goto_2

    .line 379
    :pswitch_4
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mBirthdayText:Ljava/lang/String;

    iput-object v0, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 380
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getBirthdayPreferenceFragmentClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 382
    new-instance v1, Landroid/os/Bundle;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 384
    const-string v0, "key_title"

    iget-object v5, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mBirthdayText:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorCache:Lcom/android/calendar/ColorCache;

    .line 388
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getPrimaryBirthdayAccount()Landroid/accounts/Account;

    move-result-object v5

    .line 387
    invoke-virtual {v0, v5}, Lcom/android/calendar/ColorCache;->getDecimalColorList(Landroid/accounts/Account;)[I

    move-result-object v0

    .line 389
    if-eqz v0, :cond_8

    .line 390
    const-string v5, "key_color_list"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 394
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorChanges:Ljava/util/Map;

    sget-object v5, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->BIRTHDAY_STANDIN_URI:Landroid/net/Uri;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 395
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorChanges:Ljava/util/Map;

    sget-object v5, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->BIRTHDAY_STANDIN_URI:Landroid/net/Uri;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 396
    const-string v5, "preferences_birthdays_color"

    invoke-static {p0, v5, v0}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 404
    :goto_8
    const-string v5, "key_color"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object v0, v3

    .line 406
    goto/16 :goto_2

    .line 400
    :cond_9
    const-string v0, "preferences_birthdays_color"

    const v5, -0x6d1e40

    invoke-static {p0, v0, v5}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_8

    .line 408
    :pswitch_5
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mPrimaryAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_b

    .line 409
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHolidayText:Ljava/lang/String;

    iput-object v0, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 410
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getHolidayPreferenceFragmentClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 411
    new-instance v1, Landroid/os/Bundle;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 414
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorChanges:Ljava/util/Map;

    sget-object v5, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->HOLIDAY_STANDIN_URI:Landroid/net/Uri;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 415
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorChanges:Ljava/util/Map;

    sget-object v5, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->HOLIDAY_STANDIN_URI:Landroid/net/Uri;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 421
    :goto_9
    const-string v5, "key_color"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const-string v0, "key_title"

    iget-object v5, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHolidayText:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v0, "key_account_name"

    iget-object v5, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mPrimaryAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v0, "key_account_type"

    iget-object v5, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mPrimaryAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object v0, v3

    goto/16 :goto_2

    .line 417
    :cond_a
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getPrefService(Landroid/content/Context;)Lcom/android/calendar/prefs/PrefService;

    move-result-object v0

    .line 418
    invoke-interface {v0}, Lcom/android/calendar/prefs/PrefService;->getHolidaysColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 417
    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    goto :goto_9

    .line 429
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 442
    :cond_c
    iput-object p1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHeaders:Ljava/util/List;

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_3

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeColor(Landroid/net/Uri;Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 608
    invoke-static {p3}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    .line 609
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorChanges:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    if-eqz p4, :cond_1

    .line 612
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 614
    const-string v1, "calendar_color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorCache:Lcom/android/calendar/ColorCache;

    invoke-virtual {v0, p2, p3}, Lcom/android/calendar/ColorCache;->getColorKey(Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;)Ljava/lang/Integer;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 618
    const-string v1, "calendar_color_index"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    :cond_0
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 622
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHandler:Landroid/content/AsyncQueryHandler;

    move-object v3, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 627
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_3

    .line 629
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sForceInvalidateOnResume:Z

    .line 631
    :cond_3
    return-void

    .line 621
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onChangeNotifications(Landroid/net/Uri;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mAlldayNotificationChanges:Ljava/util/Map;

    .line 665
    :goto_0
    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    new-instance v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;-><init>(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 675
    invoke-virtual {v0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->start()V

    .line 677
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTimedNotificationChanges:Ljava/util/Map;

    goto :goto_0
.end method

.method public onChangeSync(Landroid/net/Uri;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 640
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mSyncChanges:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 643
    const-string v5, "visible"

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v0, "sync_events"

    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 648
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHandler:Landroid/content/AsyncQueryHandler;

    move-object v3, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 649
    return-void

    :cond_0
    move v0, v3

    .line 643
    goto :goto_0

    :cond_1
    move v1, v3

    .line 644
    goto :goto_1

    .line 647
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onChangeTitle(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 588
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTitleChanges:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 591
    const-string v0, "calendar_displayName"

    invoke-virtual {v4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 594
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHandler:Landroid/content/AsyncQueryHandler;

    move-object v3, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 595
    return-void

    .line 593
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-static {p0}, Lcom/android/calendar/Utils;->redirectIfMandatoryPermissionsNotGranted(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->recordMemoryUsage(Landroid/os/Bundle;)V

    .line 251
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mShowHiddenCalendars:Ljava/util/List;

    .line 180
    new-instance v0, Lcom/android/calendar/ColorCache;

    invoke-direct {v0}, Lcom/android/calendar/ColorCache;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorCache:Lcom/android/calendar/ColorCache;

    .line 181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mLoadsFinished:Ljava/util/Set;

    .line 182
    invoke-static {p0}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mRobotoMedium:Landroid/graphics/Typeface;

    .line 186
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sTitleChanges:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sTitleChanges:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTitleChanges:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 187
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTitleChanges:Ljava/util/Map;

    .line 188
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTitleChanges:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sTitleChanges:Ljava/lang/ref/WeakReference;

    .line 191
    :cond_2
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sSyncChanges:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sSyncChanges:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mSyncChanges:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 192
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mSyncChanges:Ljava/util/Map;

    .line 193
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mSyncChanges:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sSyncChanges:Ljava/lang/ref/WeakReference;

    .line 196
    :cond_4
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sColorChanges:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sColorChanges:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorChanges:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 197
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorChanges:Ljava/util/Map;

    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorChanges:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sColorChanges:Ljava/lang/ref/WeakReference;

    .line 201
    :cond_6
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sTimedNotificationChanges:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sTimedNotificationChanges:Ljava/lang/ref/WeakReference;

    .line 202
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTimedNotificationChanges:Ljava/util/Map;

    if-nez v0, :cond_8

    .line 203
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTimedNotificationChanges:Ljava/util/Map;

    .line 204
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTimedNotificationChanges:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sTimedNotificationChanges:Ljava/lang/ref/WeakReference;

    .line 208
    :cond_8
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sAlldayNotificationChanges:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sAlldayNotificationChanges:Ljava/lang/ref/WeakReference;

    .line 209
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mAlldayNotificationChanges:Ljava/util/Map;

    if-nez v0, :cond_a

    .line 210
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mAlldayNotificationChanges:Ljava/util/Map;

    .line 211
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mAlldayNotificationChanges:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sAlldayNotificationChanges:Ljava/lang/ref/WeakReference;

    .line 215
    :cond_a
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 216
    sget v0, Lcom/android/calendar/R$string;->primary_calendar_display_name:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mPrimaryCalendarText:Ljava/lang/String;

    .line 217
    sget v0, Lcom/android/calendar/R$string;->more_label:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mMoreLabelText:Ljava/lang/String;

    .line 218
    sget v0, Lcom/android/calendar/R$string;->drawer_birthdays_text:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mBirthdayText:Ljava/lang/String;

    .line 219
    sget v0, Lcom/android/calendar/R$string;->drawer_holidays_text:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHolidayText:Ljava/lang/String;

    .line 220
    sget v0, Lcom/android/calendar/R$string;->show_more:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mShowMoreText:Ljava/lang/String;

    .line 221
    sget v0, Lcom/android/calendar/R$string;->show_calendars:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mShowCalendarsText:Ljava/lang/String;

    .line 223
    new-instance v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$1;

    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$1;-><init>(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 225
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mLoadsFinished:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 226
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 227
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 230
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-nez v0, :cond_b

    .line 231
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->action_bar_custom_view_preferences:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 234
    sget v1, Lcom/android/calendar/R$id;->title_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTitleText:Landroid/widget/TextView;

    .line 235
    sget v1, Lcom/android/calendar/R$id;->up_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mUpArrow:Landroid/view/View;

    .line 236
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mUpArrow:Landroid/view/View;

    new-instance v3, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$2;

    invoke-direct {v3, p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$2;-><init>(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    sget v1, Lcom/android/calendar/R$string;->preferences_title:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->setHeaderTitle(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 245
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 246
    sget v0, Lcom/android/calendar/R$drawable;->actionbar_background:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    :cond_b
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->recordMemoryUsage(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 509
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 526
    :goto_0
    return-object v0

    .line 511
    :pswitch_0
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/calendarlist/CalendarListUtils;->PROJECTION:[Ljava/lang/String;

    const-string v6, "account_name, account_type, calendar_displayName"

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :pswitch_1
    new-instance v5, Landroid/content/CursorLoader;

    sget-object v7, Landroid/provider/CalendarContract$Colors;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->COLORS_PROJECTION:[Ljava/lang/String;

    const-string v9, "color_type=0"

    move-object v6, p0

    move-object v10, v4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTitleChanges:Ljava/util/Map;

    .line 272
    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mSyncChanges:Ljava/util/Map;

    .line 273
    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorChanges:Ljava/util/Map;

    .line 274
    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mAlldayNotificationChanges:Ljava/util/Map;

    .line 275
    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mTimedNotificationChanges:Ljava/util/Map;

    .line 276
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sForceInvalidateOnResume:Z

    .line 277
    const-string v0, "CalendarSettingsActivity.Destroyed"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 278
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 279
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 2

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->isShowMoreHeader(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "key_account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->onShowMoreClick(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->invalidateHeaders()V

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 533
    packed-switch v0, :pswitch_data_0

    .line 556
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mLoadsFinished:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mLoadsFinished:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mLoadsFinished:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->invalidateHeaders()V

    .line 562
    :cond_1
    return-void

    .line 536
    :pswitch_0
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->resetCalendarListItems()V

    .line 538
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p2, v1, v2, v3}, Lcom/android/calendar/calendarlist/CalendarListUtils;->processCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/Map;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSelectedCalendarsHelper()Lcom/android/calendar/calendarlist/SelectCalendarsHelper;

    move-result-object v1

    .line 540
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    .line 539
    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/calendarlist/SelectCalendarsHelper;->postProcessItems(Landroid/content/Context;Ljava/util/List;)V

    .line 541
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mShowHiddenCalendars:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/calendar/calendarlist/CalendarListUtils;->processHiddenCalendars(Ljava/util/List;Ljava/util/List;)V

    .line 543
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mCalendarListItems:Ljava/util/List;

    invoke-static {p0, v1}, Lcom/android/calendar/calendarlist/CalendarListUtils;->sortItems(Landroid/content/Context;Ljava/util/List;)V

    .line 547
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getPrimaryAccountSelector(Landroid/content/Context;)Lcom/android/calendar/timely/PrimaryAccountSelector;

    move-result-object v1

    .line 548
    invoke-virtual {v1}, Lcom/android/calendar/timely/PrimaryAccountSelector;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mPrimaryAccount:Landroid/accounts/Account;

    goto :goto_0

    .line 551
    :pswitch_1
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mColorCache:Lcom/android/calendar/ColorCache;

    invoke-virtual {v1, p2}, Lcom/android/calendar/ColorCache;->populate(Landroid/database/Cursor;)V

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mLoadsFinished:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 567
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->resetCalendarListItems()V

    .line 568
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 260
    sget-boolean v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sForceInvalidateOnResume:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->invalidateHeaders()V

    .line 262
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->sForceInvalidateOnResume:Z

    .line 265
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 266
    return-void
.end method

.method public registerActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    invoke-direct {v0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    invoke-virtual {v0, p1}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;->registerActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 691
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 485
    if-nez p1, :cond_0

    .line 486
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    new-instance v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$HeaderAdapter;-><init>(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->setHeaderTitle(Ljava/lang/CharSequence;)V

    .line 466
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 467
    return-void
.end method

.method public unregisterActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->mActivityResultNotifierHelper:Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;

    invoke-virtual {v0, p1}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;->unregisterActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 697
    return-void
.end method
