.class public Lcom/android/calendar/groove/TimelineGroove;
.super Lcom/android/calendar/timely/TimelineEvent;
.source "TimelineGroove.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public completed:Z

.field public completedThisWeek:I

.field public final descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

.field public mods:Lcom/google/android/calendar/api/HabitModifications;

.field public preInstanceMinutes:I

.field public sessionNumber:I

.field public totalThisWeek:I

.field public type:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/calendar/groove/TimelineGroove$1;

    invoke-direct {v0}, Lcom/android/calendar/groove/TimelineGroove$1;-><init>()V

    sput-object v0, Lcom/android/calendar/groove/TimelineGroove;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 73
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineEvent;-><init>(Landroid/os/Parcel;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/groove/TimelineGroove;->preInstanceMinutes:I

    .line 74
    const-class v0, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitDescriptor;

    iput-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->type:Ljava/lang/Integer;

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 79
    :goto_0
    if-eqz v0, :cond_1

    .line 80
    const-class v0, Lcom/google/android/calendar/api/Habit;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    iput-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/groove/TimelineGroove;->sessionNumber:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/groove/TimelineGroove;->completedThisWeek:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/groove/TimelineGroove;->totalThisWeek:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/groove/TimelineGroove;->preInstanceMinutes:I

    .line 87
    return-void

    :cond_2
    move v0, v2

    .line 78
    goto :goto_0

    :cond_3
    move v0, v2

    .line 82
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/calendar/timely/TimelineEvent;Lcom/google/android/calendar/api/HabitDescriptor;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineEvent;-><init>(Lcom/android/calendar/timely/TimelineEvent;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/groove/TimelineGroove;->preInstanceMinutes:I

    .line 69
    iput-object p2, p0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/HabitDescriptor;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineEvent;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/groove/TimelineGroove;->preInstanceMinutes:I

    .line 63
    iget-object v0, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->ownerAccount:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 65
    return-void
.end method

.method public static getChipIconDimension(Landroid/content/res/Resources;)I
    .locals 1

    .prologue
    .line 212
    sget v0, Lcom/android/calendar/R$dimen;->groove_chip_icon_dimension:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getChipIconPhoneMonthDimension(Landroid/content/res/Resources;)I
    .locals 1

    .prologue
    .line 216
    sget v0, Lcom/android/calendar/R$dimen;->groove_chip_icon_phone_month_dimension:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static logEventToAnalytics(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 238
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_category_groove:I

    .line 239
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-interface {v0, p0, v1, v2}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private updateNotificationsForParent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;)V
    .locals 1

    .prologue
    .line 225
    invoke-static {p1, p2}, Lcom/android/calendar/alerts/HabitsIntentService;->createRefreshNotificationsIntent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;)Landroid/content/Intent;

    move-result-object v0

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 227
    return-void
.end method


# virtual methods
.method public addPreinstanceReminderToCEM(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 202
    iput v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarMaxReminders:I

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarMaxReminders:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 204
    iget v0, p0, Lcom/android/calendar/groove/TimelineGroove;->preInstanceMinutes:I

    if-ltz v0, :cond_0

    .line 205
    iput-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    .line 206
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/calendar/groove/TimelineGroove;->preInstanceMinutes:I

    invoke-static {v1, v2}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    return-void
.end method

.method public deleteAllFollowing(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    if-nez v0, :cond_0

    .line 186
    const-string v0, "TimelineGroove"

    const-string v1, "Error deleting following instances: no groove parent found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 199
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    .line 190
    iget-wide v2, p0, Lcom/android/calendar/groove/TimelineGroove;->startMillis:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setUntilMillisUtc(J)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 191
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    iget-object v1, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitClient;->update(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/gms/common/api/PendingResult;

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/TimelineGroove;->dismissNotification(Landroid/content/Context;)V

    .line 195
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/groove/TimelineGroove;->updateNotificationsForParent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;)V

    .line 197
    sget v0, Lcom/android/calendar/R$string;->goal_deleted_all_following:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/calendar/Utils;->showFeedback(Landroid/content/Context;IZ)V

    .line 198
    sget v0, Lcom/android/calendar/R$string;->analytics_action_deleted_all_following:I

    invoke-static {p1, v0}, Lcom/android/calendar/groove/TimelineGroove;->logEventToAnalytics(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public dismissNotification(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 220
    invoke-static {p1, p0}, Lcom/android/calendar/alerts/HabitsIntentService;->createDismissIntent(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;)Landroid/content/Intent;

    move-result-object v0

    .line 221
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 222
    return-void
.end method

.method public getContract()Lcom/google/android/calendar/api/HabitContract;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getGrooveFlairUrlString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 130
    :cond_2
    invoke-super {p0}, Lcom/android/calendar/timely/TimelineEvent;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getReminders()Lcom/google/android/calendar/api/HabitReminders;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/calendar/groove/TimelineGroove;->isOwner()Z

    move-result v0

    return v0
.end method

.method public hasParentInfo()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOwner()Z
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Lcom/android/calendar/groove/TimelineGroove;->calendarAccessLevel:I

    const/16 v1, 0x2bc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markComplete(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 155
    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget v2, Lcom/android/calendar/R$string;->analytics_label_swipe_from_timeline:I

    .line 156
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-static {p1, v1, p0, v0, v2}, Lcom/android/calendar/alerts/HabitsIntentService;->createCompleteIntent(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/calendar/groove/TimelineGroove;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInstanceDeleted(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/TimelineGroove;->dismissNotification(Landroid/content/Context;)V

    .line 180
    sget v0, Lcom/android/calendar/R$string;->goal_deleted_single:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/calendar/Utils;->showFeedback(Landroid/content/Context;IZ)V

    .line 181
    sget v0, Lcom/android/calendar/R$string;->analytics_action_deleted_instance:I

    invoke-static {p1, v0}, Lcom/android/calendar/groove/TimelineGroove;->logEventToAnalytics(Landroid/content/Context;I)V

    .line 182
    return-void
.end method

.method public onModelComplete(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->title:Ljava/lang/String;

    .line 235
    return-void
.end method

.method protected setExtrasFlags(I)V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/calendar/timely/TimelineEvent;->setExtrasFlags(I)V

    .line 144
    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getEventExtrasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    .line 146
    return-void
.end method

.method public supportsSwipe()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/groove/TimelineGroove;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/TimelineEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 93
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->type:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/android/calendar/groove/TimelineGroove;->sessionNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/android/calendar/groove/TimelineGroove;->completedThisWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/android/calendar/groove/TimelineGroove;->totalThisWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/android/calendar/groove/TimelineGroove;->preInstanceMinutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void

    :cond_2
    move v0, v2

    .line 93
    goto :goto_0

    :cond_3
    move v0, v2

    .line 97
    goto :goto_1

    :cond_4
    move v2, v1

    .line 101
    goto :goto_2
.end method
