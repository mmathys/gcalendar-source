.class public Lcom/android/calendar/groove/GrooveEditManager;
.super Lcom/android/calendar/event/data/EventEditManager;
.source "GrooveEditManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;,
        Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/groove/GrooveEditManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGrooveCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ">;"
        }
    .end annotation
.end field

.field public mMods:Lcom/google/android/calendar/api/HabitModifications;

.field private mNewDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

.field private mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

.field private mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/android/calendar/groove/GrooveEditManager;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GrooveEditManager;->TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/android/calendar/groove/GrooveEditManager$1;

    invoke-direct {v0}, Lcom/android/calendar/groove/GrooveEditManager$1;-><init>()V

    sput-object v0, Lcom/android/calendar/groove/GrooveEditManager;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/data/EventEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 193
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/google/android/calendar/api/HabitModifications;)V
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x3830

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/data/EventEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 198
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    .line 199
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/EventEditManager;-><init>(Landroid/os/Parcel;)V

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 204
    const-class v0, Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 207
    const-class v0, Lcom/google/android/calendar/api/HabitReminders;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitReminders;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    .line 209
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 210
    const-class v0, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitDescriptor;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 212
    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/google/android/calendar/api/HabitReminders;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getCurrentReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/calendar/groove/GrooveEditManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/groove/GrooveEditManager;Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/GrooveEditManager;->saveModifications(Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/groove/GrooveEditManager;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getCurrentReminderMinutes()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/groove/GrooveEditManager;Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitReminders;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/groove/GrooveEditManager;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/groove/GrooveEditManager;->onEventSaved(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/calendar/groove/GrooveEditManager;I)V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveEditManager;->onQueryComplete(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/groove/TimelineGroove;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;

    return-object v0
.end method

.method private addDefaultsToNotificationSets()V
    .locals 3

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->isNewEvent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    :cond_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mCalendarNotificationsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 459
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 460
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mCalendarNotificationsMap:Ljava/util/Map;

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/groove/GrooveEditManager;->replaceEmptyNotificationsWithHabitDefaults(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;Ljava/util/Map;)V

    .line 461
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mDefaultNotificationsMap:Ljava/util/Map;

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/groove/GrooveEditManager;->replaceEmptyNotificationsWithHabitDefaults(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private calendarChanged()Z
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/HabitDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static clearContractModifications(Lcom/android/calendar/groove/TimelineGroove;)V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    .line 741
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 742
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->clearModifications()V

    .line 744
    :cond_0
    return-void
.end method

.method private createDefaultReminderListFromHabit(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 473
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 474
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getName()Ljava/lang/String;

    move-result-object v2

    .line 473
    invoke-static {v1, v0, v2}, Lcom/android/calendar/groove/GrooveUtils;->getDefaultReminderMinutes(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    if-nez v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 478
    :cond_0
    new-instance v1, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    sget-object v2, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ALERT:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    int-to-long v4, v0

    .line 479
    invoke-static {v4, v5}, Lcom/google/calendar/v2/client/service/api/time/Duration;->standardMinutes(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/calendar/v2/client/service/api/common/Reminder;-><init>(Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;Lcom/google/calendar/v2/client/service/api/time/Duration;)V

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    return-object v0
.end method

.method private getColor(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 332
    .line 333
    if-eqz p1, :cond_0

    .line 336
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorDescriptor;->getColorId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 341
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mColorCache:Lcom/android/calendar/ColorCache;

    invoke-virtual {v1, v0}, Lcom/android/calendar/ColorCache;->getColorForKey(Ljava/lang/Integer;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v1

    .line 343
    :cond_0
    return-object v1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    sget-object v2, Lcom/android/calendar/groove/GrooveEditManager;->TAG:Ljava/lang/String;

    const-string v3, "Invalid habit color key: "

    .line 339
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorDescriptor;->getColorId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 338
    invoke-static {v2, v0, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    goto :goto_0

    .line 339
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getCurrentReminderMinutes()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 505
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentReminders()Lcom/google/android/calendar/api/HabitReminders;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    .line 497
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultReminderMinutes()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    const-string v1, "HabitModifications should not be null."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    .line 488
    iget-object v1, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 489
    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lcom/android/calendar/groove/GrooveUtils;->getDefaultReminderMinutes(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getDiscardMessageId()I
    .locals 1

    .prologue
    .line 176
    sget v0, Lcom/android/calendar/R$string;->discard_goal_message:I

    return v0
.end method

.method public static getEditSegmentLayoutId(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 165
    const-string v0, "com.android.calendar.groove.edit.contract"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget v0, Lcom/android/calendar/R$layout;->edit_segment_groove_contract:I

    .line 172
    :goto_0
    return v0

    .line 167
    :cond_0
    const-string v0, "com.android.calendar.groove.edit.time"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    sget v0, Lcom/android/calendar/R$layout;->edit_segment_groove_time:I

    goto :goto_0

    .line 169
    :cond_1
    const-string v0, "com.android.calendar.groove.edit.notification"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    sget v0, Lcom/android/calendar/R$layout;->edit_segment_groove_notifications:I

    goto :goto_0

    .line 172
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGrooveCallback()Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mGrooveCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Lcom/android/calendar/groove/GrooveEditManager$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/groove/GrooveEditManager$2;-><init>(Lcom/android/calendar/groove/GrooveEditManager;)V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mGrooveCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mGrooveCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method private getImmutableCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 8

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    const-string v1, "HabitModifications should not be null."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getDefaultCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v2

    .line 349
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getSelectableCalendarsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 351
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v4

    .line 352
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 353
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 354
    iget-object v6, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 355
    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getOwnerAccount()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method private getReminder()Lcom/google/calendar/v2/client/service/api/common/Reminder;
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    const-string v1, "HabitModifications should not be null."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const/4 v0, 0x0

    .line 318
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    if-eqz v0, :cond_1

    .line 320
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ALERT:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    .line 321
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getDefaultReminderMinutes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 320
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;->standardMinutes(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/Reminder;-><init>(Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;Lcom/google/calendar/v2/client/service/api/time/Duration;)V

    .line 327
    :cond_0
    :goto_0
    return-object v0

    .line 323
    :cond_1
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ALERT:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    .line 324
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getCurrentReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 323
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;->standardMinutes(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/Reminder;-><init>(Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;Lcom/google/calendar/v2/client/service/api/time/Duration;)V

    goto :goto_0
.end method

.method private getVisibilityFromHabit()Lcom/google/calendar/v2/client/service/api/events/Visibility;
    .locals 5

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    const-string v1, "HabitModifications should not be null."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getVisibility()I

    move-result v0

    .line 366
    packed-switch v0, :pswitch_data_0

    .line 374
    sget-object v1, Lcom/android/calendar/groove/GrooveEditManager;->TAG:Ljava/lang/String;

    const-string v2, "No visibility found for value: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 375
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    :goto_0
    return-object v0

    .line 368
    :pswitch_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PRIVATE:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    goto :goto_0

    .line 370
    :pswitch_1
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PUBLIC:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    goto :goto_0

    .line 372
    :pswitch_2
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static loadGroove(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/groove/GrooveEditManager;
    .locals 3

    .prologue
    .line 117
    new-instance v1, Lcom/android/calendar/groove/GrooveEditManager;

    const/16 v0, 0x3830

    invoke-direct {v1, p0, p1, v0}, Lcom/android/calendar/groove/GrooveEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 118
    invoke-virtual {v1, p2}, Lcom/android/calendar/groove/GrooveEditManager;->setInitialModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 119
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    iput-object v0, v1, Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;

    .line 120
    iget-object v0, v1, Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->clearContractModifications(Lcom/android/calendar/groove/TimelineGroove;)V

    .line 121
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendar/groove/GrooveEditManager;->mLoadersToStart:Ljava/util/Set;

    .line 122
    return-object v1
.end method

.method public static loadGroove(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/groove/TimelineGroove;)Lcom/android/calendar/groove/GrooveEditManager;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lcom/android/calendar/groove/GrooveEditManager;

    const/16 v1, 0x7833

    invoke-direct {v0, p0, p1, v1}, Lcom/android/calendar/groove/GrooveEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 108
    iput-object p2, v0, Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;

    .line 109
    iget-object v1, v0, Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;

    invoke-static {v1}, Lcom/android/calendar/groove/GrooveEditManager;->clearContractModifications(Lcom/android/calendar/groove/TimelineGroove;)V

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/android/calendar/groove/TimelineGroove;->getInfoUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/groove/GrooveEditManager;->load(ILandroid/net/Uri;)V

    .line 111
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/groove/GrooveEditManager;->mLoadersToStart:Ljava/util/Set;

    .line 112
    return-object v0
.end method

.method private logContractChangesToAnalytics()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isDurationMinutesModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->analytics_action_edit_duration_changed:I

    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isDailyPatternModified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->analytics_action_edit_preferred_time_changed:I

    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 428
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isNumInstancesPerIntervalModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->analytics_action_edit_frequency_changed:I

    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static newGroove(Landroid/app/Activity;Landroid/app/LoaderManager;Landroid/os/Parcelable;)Lcom/android/calendar/groove/GrooveEditManager;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/android/calendar/groove/GrooveEditManager;

    check-cast p2, Lcom/google/android/calendar/api/HabitModifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/calendar/groove/GrooveEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/google/android/calendar/api/HabitModifications;)V

    .line 160
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/groove/GrooveEditManager;->mLoadersToStart:Ljava/util/Set;

    .line 161
    return-object v0
.end method

.method private replaceEmptyNotificationsWithHabitDefaults(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;

    invoke-direct {p0, p1}, Lcom/android/calendar/groove/GrooveEditManager;->createDefaultReminderListFromHabit(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->replace(Ljava/util/Collection;Z)V

    .line 468
    return-void
.end method

.method public static restoreGroove(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/groove/GrooveEditManager;
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/calendar/groove/GrooveEditManager;->setRestored(Z)V

    .line 128
    const/16 v0, 0x3830

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/calendar/groove/GrooveEditManager;->initialize(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 129
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p2, Lcom/android/calendar/groove/GrooveEditManager;->mLoadersToStart:Ljava/util/Set;

    .line 130
    return-object p2
.end method

.method private saveModifications(Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    const-string v2, "HabitModifications should not be null."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 693
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->calendarChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/calendar/R$string;->analytics_action_edit_account_changed:I

    invoke-static {v2, v3}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 695
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    iget-object v3, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v3, v3, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-interface {v2, v3}, Lcom/google/android/calendar/api/HabitModifications;->switchCalendar(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/HabitDescriptor;

    .line 697
    :cond_0
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasTitleChanges()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 699
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/calendar/R$string;->analytics_action_edit_title_changed:I

    invoke-static {v2, v3}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 700
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/calendar/api/HabitModifications;->setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;

    .line 702
    :cond_1
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasVisibilityChanges()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 704
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/calendar/R$string;->analytics_action_edit_visibility_changed:I

    invoke-static {v2, v3}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 705
    invoke-direct {p0, v0}, Lcom/android/calendar/groove/GrooveEditManager;->setHabitVisibilityFromEvent(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V

    .line 707
    :cond_2
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasLabelColorChanges()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->isEventColorInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/calendar/R$string;->analytics_action_edit_color_changed:I

    invoke-static {v0, v2}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 711
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v0

    iget-object v3, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v3}, Lcom/android/calendar/event/CalendarEventModel;->getCalendarColor()I

    move-result v3

    if-ne v0, v3, :cond_7

    move-object v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lcom/google/android/calendar/api/HabitModifications;->setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/HabitModifications;

    .line 719
    :cond_3
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasRemindersChanges()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 720
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/calendar/R$string;->analytics_action_edit_preinstance_changed:I

    invoke-static {v0, v2}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 721
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getCurrentReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    .line 722
    new-instance v2, Lcom/google/android/calendar/api/HabitReminders;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getCurrentReminderMinutes()Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, v0, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    iget-boolean v0, v0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/android/calendar/api/HabitReminders;-><init>(ZLjava/lang/Integer;ZZ)V

    iput-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    .line 725
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    if-eqz v0, :cond_6

    .line 726
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    iget-boolean v0, v0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    if-eq v0, v2, :cond_5

    .line 727
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/android/calendar/R$string;->analytics_action_edit_smart_notifications_changed:I

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    iget-boolean v2, v2, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    if-eqz v2, :cond_8

    .line 729
    const-wide/16 v2, 0x1

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 727
    invoke-static {v0, v4, v1, v2}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Long;)V

    .line 731
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitModifications;->setReminders(Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitModifications;

    .line 733
    :cond_6
    return-void

    .line 713
    :cond_7
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->ColorFactory:Lcom/google/android/calendar/api/ColorFactory;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    .line 715
    invoke-interface {v4}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v4}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget v5, v5, Lcom/android/calendar/event/CalendarEventModel;->mEventColorKey:I

    .line 716
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 713
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/calendar/api/ColorFactory;->createDescriptor(ILandroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 729
    :cond_8
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method private setHabitVisibilityFromEvent(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 380
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    const-string v1, "HabitModifications should not be null."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v0

    .line 382
    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PUBLIC:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    if-ne v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitModifications;->setVisibility(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 392
    :goto_0
    return-void

    .line 384
    :cond_0
    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PRIVATE:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    if-ne v0, v1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitModifications;->setVisibility(I)Lcom/google/android/calendar/api/HabitModifications;

    goto :goto_0

    .line 387
    :cond_1
    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    if-eq v0, v1, :cond_2

    .line 388
    sget-object v1, Lcom/android/calendar/groove/GrooveEditManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No habit visibility found for value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, v4}, Lcom/google/android/calendar/api/HabitModifications;->setVisibility(I)Lcom/google/android/calendar/api/HabitModifications;

    goto :goto_0
.end method


# virtual methods
.method public changeCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 5

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    const-string v1, "HabitModifications should not be null."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-super {p0, p1}, Lcom/android/calendar/event/data/EventEditManager;->changeCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    .line 654
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 655
    new-instance v1, Lcom/google/android/calendar/api/HabitDescriptor;

    new-instance v2, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 657
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    .line 658
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 659
    return-void
.end method

.method protected createNewMutableEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->createOriginalEvent()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->builderFrom(Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->build()Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    move-result-object v0

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveEditManager;->processMutableEvent(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V

    .line 290
    return-object v0
.end method

.method protected createOriginalEvent()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;
    .locals 7

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    const-string v1, "HabitModifications should not be null."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;-><init>()V

    .line 297
    const-string v1, "DUMMY"

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setEventId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 298
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setTitle(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    move-result-object v1

    .line 299
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getImmutableCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/time/DateTimeImpl;

    const-wide/16 v4, 0x0

    new-instance v3, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;

    invoke-direct {v3}, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;-><init>()V

    const-string v6, "UTC"

    .line 300
    invoke-virtual {v3, v6}, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->setId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;

    move-result-object v3

    .line 301
    invoke-virtual {v3}, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->build()Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;

    move-result-object v3

    invoke-direct {v2, v4, v5, v3}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    .line 300
    invoke-virtual {v1, v2}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setStartTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    .line 302
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setOrganizer(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    move-result-object v1

    .line 303
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getVisibilityFromHabit()Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setVisibility(Lcom/google/calendar/v2/client/service/api/events/Visibility;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 304
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/groove/GrooveEditManager;->getColor(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setLabelColor(Lcom/google/calendar/v2/client/service/api/common/Color;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 308
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 309
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getReminder()Lcom/google/calendar/v2/client/service/api/common/Reminder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->setImmutableReminders(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 311
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->build()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v0

    return-object v0
.end method

.method protected eventDiffIsValid()Z
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->isNewEvent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public eventIsNewOrHasChanged()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v1

    .line 251
    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    invoke-static {v1}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->from(Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-static {v2}, Lcom/android/calendar/groove/GrooveUtils;->hasContractChanges(Lcom/google/android/calendar/api/HabitModifications;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 256
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasTitleChanges()Z

    move-result v2

    if-nez v2, :cond_3

    .line 257
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasVisibilityChanges()Z

    move-result v2

    if-nez v2, :cond_3

    .line 258
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasAvailabilityChanges()Z

    move-result v2

    if-nez v2, :cond_3

    .line 259
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasLabelColorChanges()Z

    move-result v2

    if-nez v2, :cond_3

    .line 260
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->calendarChanged()Z

    move-result v2

    if-nez v2, :cond_3

    .line 261
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasRemindersChanges()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    iget-object v3, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    .line 263
    invoke-interface {v3}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/calendar/api/HabitReminders;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->isNewEvent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasStartTimeChanges()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHabitModifications()Lcom/google/android/calendar/api/HabitModifications;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    return-object v0
.end method

.method public getInputAspect(Lcom/android/calendar/editor/AspectKey;)Ljava/lang/Object;
    .locals 3
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
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mInputAspects:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;-><init>(Lcom/android/calendar/groove/GrooveEditManager;Lcom/android/calendar/groove/GrooveEditManager$1;)V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mInputAspects:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    .line 437
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mInputAspects:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mutableDefaultDuration()Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    move-result-object v2

    .line 438
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getDefaultEventDuration()I

    move-result v0

    .line 437
    invoke-interface {v2, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->set(I)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mInputAspects:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->implementsAspect(Lcom/android/calendar/editor/AspectKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mInputAspects:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    invoke-virtual {p1, v0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getSelectableCalendarsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->isOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-super {p0}, Lcom/android/calendar/event/data/EventEditManager;->getSelectableCalendarsMap()Ljava/util/Map;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/calendar/event/data/LoadDetailsUtils;->PRIMARY_GOOGLE_CALENDAR_PREDICATE:Lcom/google/common/base/Predicate;

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveEditManager;->getMatchingCalendarsMap(Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->eventIsNewOrHasChanged()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewEvent()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOwner()Z
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->isNewEvent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->isModifiableGroove()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAllDataLoaded()V
    .locals 2

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->addDefaultsToNotificationSets()V

    .line 228
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v0, v0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    .line 231
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/event/data/EventEditManager;->onAllDataLoaded()V

    .line 234
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->buildCalendarEventModelFromEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0, v1}, Lcom/android/calendar/event/CalendarEventModel;-><init>(Lcom/android/calendar/event/CalendarEventModel;)V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    .line 237
    :cond_1
    return-void
.end method

.method protected onEventLoaded(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 135
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    .line 136
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    .line 138
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/EditHelper;->setModelFromEventCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z

    .line 139
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/EditHelper;->setModelFromEventCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z

    .line 141
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iput-boolean v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    .line 142
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mExtrasBitmask:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/TimelineGroove;->setEventExtrasFlags(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;

    invoke-virtual {v1}, Lcom/android/calendar/groove/TimelineGroove;->getOwnerAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    iput-boolean v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    .line 147
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    iget v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mExtrasBitmask:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/TimelineGroove;->setEventExtrasFlags(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;

    invoke-virtual {v1}, Lcom/android/calendar/groove/TimelineGroove;->getOwnerAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 151
    const/4 v0, 0x2

    const-string v1, "modelId"

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/calendar/groove/GrooveEditManager;->load(ILjava/lang/String;J)V

    .line 152
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveEditManager;->load(I)V

    .line 153
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mLoaderManager:Landroid/app/LoaderManager;

    const/16 v1, 0x4000

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getGrooveCallback()Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 154
    return-void
.end method

.method public save()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->buildCalendarEventModelFromEvent()Z

    .line 397
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->from(Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;

    move-result-object v4

    .line 398
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 399
    invoke-direct {p0, v4}, Lcom/android/calendar/groove/GrooveEditManager;->saveModifications(Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AbstractEditManager$Callback;

    .line 402
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-static {v1}, Lcom/android/calendar/groove/GrooveUtils;->hasContractChanges(Lcom/google/android/calendar/api/HabitModifications;)Z

    move-result v6

    .line 403
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasStartTimeChanges()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 404
    :goto_1
    if-eqz v6, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager;->logContractChangesToAnalytics()V

    .line 407
    :cond_1
    if-eqz v1, :cond_2

    .line 408
    iget-object v7, p0, Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;

    sget v8, Lcom/android/calendar/R$string;->analytics_action_edit_date_time_changed:I

    invoke-static {v7, v8}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 410
    :cond_2
    if-nez v6, :cond_3

    if-eqz v1, :cond_5

    :cond_3
    move v1, v3

    :goto_2
    invoke-interface {v0, v1}, Lcom/android/calendar/event/data/AbstractEditManager$Callback;->onSaveInitiated(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 403
    goto :goto_1

    :cond_5
    move v1, v2

    .line 410
    goto :goto_2

    .line 412
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 413
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    iput-object v1, v0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    .line 414
    new-instance v0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;-><init>(Lcom/android/calendar/groove/GrooveEditManager;Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 416
    :cond_7
    return-void
.end method

.method protected supportAlertsOnly()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 216
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/data/EventEditManager;->writeToParcel(Landroid/os/Parcel;I)V

    .line 217
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 219
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 221
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager;->mNewDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 223
    return-void

    :cond_0
    move v0, v2

    .line 217
    goto :goto_0

    :cond_1
    move v0, v2

    .line 219
    goto :goto_1

    :cond_2
    move v1, v2

    .line 221
    goto :goto_2
.end method
