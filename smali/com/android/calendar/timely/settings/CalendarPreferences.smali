.class public Lcom/android/calendar/timely/settings/CalendarPreferences;
.super Landroid/preference/PreferenceFragment;
.source "CalendarPreferences.java"

# interfaces
.implements Lcom/android/calendar/editor/AspectAdapter;
.implements Lcom/android/calendar/editor/EditSegmentController;
.implements Lcom/android/calendar/event/data/InputAspectColor;
.implements Lcom/android/calendar/event/data/InputAspectTitle;
.implements Lcom/android/calendar/timely/settings/data/InputAspectSwitch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;,
        Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;
    }
.end annotation


# static fields
.field public static final ALLDAY_NOTIFICATIONS_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectColor;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectTitle;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYNC_ASPECT:Lcom/android/calendar/editor/AspectKey;
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

.field public static final TIMED_NOTIFICATIONS_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAlldayNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private mAlldayNotificationsAspect:Lcom/android/calendar/event/data/InputAspectNotification;

.field private mCalendarId:Ljava/lang/String;

.field private mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private mColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalAlldayNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalColor:I

.field private mOriginalTimedNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalTitle:Ljava/lang/String;

.field private mOwnerAccount:Ljava/lang/String;

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

.field private mSyncAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mTimedNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private mTimedNotificationsAspect:Lcom/android/calendar/event/data/InputAspectNotification;

.field private mTitleAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-class v0, Lcom/android/calendar/timely/settings/CalendarPreferences;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->TAG:Ljava/lang/String;

    .line 80
    const-string v0, "com.android.calendar.settings.calendar.name"

    const-class v1, Lcom/android/calendar/event/data/InputAspectTitle;

    .line 81
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->NAME_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 82
    const-string v0, "com.android.calendar.settings.calendar.sync"

    const-class v1, Lcom/android/calendar/timely/settings/data/InputAspectSwitch;

    .line 83
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->SYNC_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 84
    const-string v0, "com.android.calendar.settings.calendar.color"

    const-class v1, Lcom/android/calendar/event/data/InputAspectColor;

    .line 85
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->COLOR_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 86
    const-string v0, "com.android.calendar.settings.calendar.notifications.timed"

    const-class v1, Lcom/android/calendar/event/data/InputAspectNotification;

    .line 87
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->TIMED_NOTIFICATIONS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 88
    const-string v0, "com.android.calendar.settings.calendar.notifications.allday"

    const-class v1, Lcom/android/calendar/event/data/InputAspectNotification;

    .line 89
    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->ALLDAY_NOTIFICATIONS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalTitle:Ljava/lang/String;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalColor:I

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/settings/CalendarPreferences;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/settings/CalendarPreferences;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTitleAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/settings/CalendarPreferences;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSyncAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/settings/CalendarPreferences;)Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/settings/CalendarPreferences;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/timely/settings/CalendarPreferences;Ljava/util/List;Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/settings/CalendarPreferences;->populateNotifications(Ljava/util/List;Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    return-object v0
.end method

.method private areReminderEntriesEqual(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 414
    :goto_0
    return v0

    .line 408
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    .line 409
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 410
    goto :goto_0

    .line 414
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkNotificationChanges(Z)V
    .locals 7

    .prologue
    .line 333
    .line 334
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getReminderEntries(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 336
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getOriginalReminderEntries(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->areReminderEntriesEqual(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;

    .line 341
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mCalendarId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAccount:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOwnerAccount:Ljava/lang/String;

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;->onChangeNotifications(Landroid/net/Uri;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 343
    if-eqz p1, :cond_1

    .line 344
    iput-object v6, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalAlldayNotifications:Ljava/util/ArrayList;

    goto :goto_0

    .line 346
    :cond_1
    iput-object v6, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalTimedNotifications:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getOriginalReminderEntries(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    if-eqz p1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalAlldayNotifications:Ljava/util/ArrayList;

    .line 397
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalTimedNotifications:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getReminderEntries(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    new-instance v1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAlldayNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    :goto_0
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 387
    invoke-static {v1}, Lcom/android/calendar/event/ReminderUtils;->remindersToReminderEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTimedNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    goto :goto_0
.end method

.method private populateNotifications(Ljava/util/List;Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;Z)",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->newObservableHashSet()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v1

    .line 372
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 373
    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    :cond_0
    if-eqz p2, :cond_1

    .line 377
    iput-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAlldayNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 382
    :goto_1
    return-object v1

    .line 379
    :cond_1
    iput-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTimedNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    goto :goto_1
.end method

.method private populateNotifications(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 352
    .line 353
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_0

    .line 358
    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntriesToReminders(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 363
    :goto_0
    const-string v1, "key_allday_notifications"

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    .line 365
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->populateNotifications(Ljava/util/List;Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 366
    return-void

    .line 360
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 363
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private restoreModelState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 250
    const-string v0, "key_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mCalendarId:Ljava/lang/String;

    .line 251
    const-string v0, "key_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mUri:Landroid/net/Uri;

    .line 252
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "key_account_name"

    .line 253
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_account_type"

    .line 254
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAccount:Landroid/accounts/Account;

    .line 255
    const-string v0, "key_owner_account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOwnerAccount:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settings.calendar.name"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "key_title"

    .line 260
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTitleAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 261
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTitleAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    new-instance v1, Lcom/android/calendar/timely/settings/CalendarPreferences$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/settings/CalendarPreferences$1;-><init>(Lcom/android/calendar/timely/settings/CalendarPreferences;)V

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settings.calendar.sync"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    const-string v0, "key_sync"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSyncAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 272
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSyncAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    new-instance v1, Lcom/android/calendar/timely/settings/CalendarPreferences$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/settings/CalendarPreferences$2;-><init>(Lcom/android/calendar/timely/settings/CalendarPreferences;)V

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settings.calendar.color"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    const-string v0, "key_color"

    .line 288
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 287
    invoke-static {v0}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 289
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    new-instance v1, Lcom/android/calendar/timely/settings/CalendarPreferences$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/settings/CalendarPreferences$3;-><init>(Lcom/android/calendar/timely/settings/CalendarPreferences;)V

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 296
    const-string v0, "key_color_list"

    .line 297
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/android/calendar/ColorCache;->getColorList([I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorList:Ljava/util/List;

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settings.calendar.notifications.timed"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    const-string v0, "key_timed_notifications"

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->populateNotifications(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settings.calendar.notifications.allday"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    const-string v0, "key_allday_notifications"

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->populateNotifications(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 308
    :cond_4
    const-string v0, "key_original_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    const-string v0, "key_original_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalTitle:Ljava/lang/String;

    .line 311
    :cond_5
    const-string v0, "key_original_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    const-string v0, "key_original_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalColor:I

    .line 314
    :cond_6
    return-void
.end method

.method private restoreSegmentsState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "key_segments_to_show"

    .line 246
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    .line 247
    return-void
.end method


# virtual methods
.method public addColorRefreshListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 541
    return-void
.end method

.method public applyChangeAnimated(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method public canChangeColor()Z
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x1

    return v0
.end method

.method public canChangeTitle()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method public getColorOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorList:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    goto :goto_0
.end method

.method public getInputAspect(Lcom/android/calendar/editor/AspectKey;)Ljava/lang/Object;
    .locals 1
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
    .line 486
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->NAME_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p1, p0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 497
    :goto_0
    return-object v0

    .line 488
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->SYNC_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {p1, p0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 490
    :cond_1
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->COLOR_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    invoke-virtual {p1, p0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_2
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->TIMED_NOTIFICATIONS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTimedNotificationsAspect:Lcom/android/calendar/event/data/InputAspectNotification;

    invoke-virtual {p1, v0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_3
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->ALLDAY_NOTIFICATIONS_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 495
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAlldayNotificationsAspect:Lcom/android/calendar/event/data/InputAspectNotification;

    invoke-virtual {p1, v0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnlistedColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public mutableColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableSwitch(I)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSyncAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
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
    .line 507
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTitleAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 142
    instance-of v1, v0, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;

    if-nez v1, :cond_1

    .line 143
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->TAG:Ljava/lang/String;

    const-string v1, "Parent activity was not an OnChangeListener"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_2

    .line 153
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 159
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "key_title"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    if-eqz p1, :cond_4

    .line 161
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->restoreSegmentsState(Landroid/os/Bundle;)V

    .line 202
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;

    .line 203
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v5, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    invoke-direct {v0, v1, v5}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 204
    const-string v1, "com.android.calendar.settings.calendar"

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;->createEditSegments(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegments:Ljava/util/Collection;

    .line 205
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->segments:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 206
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/editor/EditSegment;

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 162
    :cond_4
    if-eqz v4, :cond_8

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    .line 165
    const-string v0, "key_priority"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 168
    const-string v1, "key_account_type"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Lcom/android/calendar/Utils;->isLocalOrHtcLocalCalendar(Ljava/lang/String;)Z

    move-result v1

    .line 171
    if-nez v1, :cond_5

    .line 172
    if-ne v0, v7, :cond_7

    .line 174
    const-string v1, "key_sync"

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 175
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v5, "com.android.calendar.settings.calendar.sync"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_5
    :goto_3
    const-string v1, "key_color_list"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "key_color"

    .line 185
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 186
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v5, "com.android.calendar.settings.calendar.color"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_6
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 192
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settings.calendar.notifications.timed"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settings.calendar.notifications.allday"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 177
    :cond_7
    if-lt v0, v5, :cond_5

    .line 179
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v5, "com.android.calendar.settings.calendar.sync"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v5, "com.android.calendar.settings.calendar.name"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 197
    :cond_8
    sget-object v0, Lcom/android/calendar/timely/settings/CalendarPreferences;->TAG:Ljava/lang/String;

    const-string v1, "No calendar was specified for CalendarPreferences"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 211
    :cond_9
    if-eqz p1, :cond_d

    .line 212
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 213
    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/EditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_4

    .line 215
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->restoreModelState(Landroid/os/Bundle;)V

    .line 223
    :goto_5
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settings.calendar.notifications.timed"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 224
    new-instance v0, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;

    iget-object v2, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTimedNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    if-nez p1, :cond_10

    move v4, v7

    :goto_6
    iget-object v5, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAccount:Landroid/accounts/Account;

    iget-object v6, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mCalendarId:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;-><init>(Lcom/android/calendar/timely/settings/CalendarPreferences;Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;ZZLandroid/accounts/Account;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTimedNotificationsAspect:Lcom/android/calendar/event/data/InputAspectNotification;

    .line 228
    invoke-direct {p0, v3}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getReminderEntries(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalTimedNotifications:Ljava/util/ArrayList;

    .line 230
    :cond_b
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settings.calendar.notifications.allday"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 231
    new-instance v0, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;

    iget-object v2, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAlldayNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    if-nez p1, :cond_11

    move v4, v7

    :goto_7
    iget-object v5, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAccount:Landroid/accounts/Account;

    iget-object v6, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mCalendarId:Ljava/lang/String;

    move-object v1, p0

    move v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;-><init>(Lcom/android/calendar/timely/settings/CalendarPreferences;Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;ZZLandroid/accounts/Account;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAlldayNotificationsAspect:Lcom/android/calendar/event/data/InputAspectNotification;

    .line 235
    invoke-direct {p0, v7}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getReminderEntries(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalAlldayNotifications:Ljava/util/ArrayList;

    .line 239
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 240
    invoke-virtual {v0, p0}, Lcom/android/calendar/editor/EditSegment;->setInput(Ljava/lang/Object;)V

    goto :goto_8

    .line 218
    :cond_d
    invoke-direct {p0, v4}, Lcom/android/calendar/timely/settings/CalendarPreferences;->restoreModelState(Landroid/os/Bundle;)V

    .line 219
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTitleAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-nez v0, :cond_e

    move-object v0, v2

    :goto_9
    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalTitle:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-nez v0, :cond_f

    const/4 v0, -0x1

    :goto_a
    iput v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalColor:I

    goto :goto_5

    .line 219
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTitleAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_9

    .line 220
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    goto :goto_a

    :cond_10
    move v4, v3

    .line 224
    goto :goto_6

    :cond_11
    move v4, v3

    .line 231
    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegments:Ljava/util/Collection;

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 133
    sget v0, Lcom/android/calendar/R$layout;->loading_segments_preferences_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settings.calendar.notifications.timed"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->checkNotificationChanges(Z)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    const-string v1, "com.android.calendar.settings.calendar.notifications.allday"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->checkNotificationChanges(Z)V

    .line 329
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 330
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegmentsToShow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 420
    const-string v1, "key_segments_to_show"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTitleAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    .line 423
    const-string v1, "key_title"

    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTitleAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSyncAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    if-eqz v0, :cond_1

    .line 427
    const-string v0, "key_sync"

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSyncAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 431
    const-string v1, "key_color"

    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    const-string v0, "key_color_list"

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mColorList:Ljava/util/List;

    .line 433
    invoke-static {v1}, Lcom/android/calendar/ColorCache;->getDecimalColorList(Ljava/util/List;)[I

    move-result-object v1

    .line 432
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mTimedNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    if-eqz v0, :cond_3

    .line 437
    const-string v0, "key_timed_notifications"

    const/4 v1, 0x0

    .line 438
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getReminderEntries(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 437
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAlldayNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    if-eqz v0, :cond_4

    .line 441
    const-string v0, "key_allday_notifications"

    const/4 v1, 0x1

    .line 442
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getReminderEntries(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 441
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 445
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 446
    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/EditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 449
    :cond_5
    const-string v0, "key_id"

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mCalendarId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v0, "key_uri"

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 451
    const-string v0, "key_account_name"

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v0, "key_account_type"

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "key_owner_account"

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalTitle:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 455
    const-string v0, "key_original_title"

    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_6
    iget v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 458
    const-string v0, "key_original_color"

    iget v1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences;->mOriginalColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    :cond_7
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 462
    return-void
.end method

.method public removeColorRefreshListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 545
    return-void
.end method

.method public setFullScreen(Lcom/android/calendar/editor/EditSegment;Z)V
    .locals 0

    .prologue
    .line 469
    return-void
.end method
