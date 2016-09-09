.class public Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;
.super Lcom/android/calendar/newapi/view/TextTileView;
.source "GrooveNotificationViewSegment.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT::",
        "Lcom/android/calendar/newapi/model/GrooveHolder;",
        ":",
        "Lcom/android/calendar/newapi/model/GrooveInstanceHolder;",
        ":",
        "Lcom/android/calendar/newapi/model/NotificationStoreHolder;",
        ":",
        "Lcom/android/calendar/newapi/model/CalendarStoreHolder;",
        ">",
        "Lcom/android/calendar/newapi/view/TextTileView;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/android/calendar/newapi/model/GrooveHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/GrooveHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/TextTileView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/GrooveHolder;

    .line 34
    return-void
.end method

.method private getNotification(Lcom/google/android/calendar/api/HabitDescriptor;Lcom/google/android/calendar/api/HabitReminders;Lcom/android/calendar/newapi/model/NotificationStore;Lcom/android/calendar/newapi/model/CalendarStore;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 76
    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p4, v0, v1}, Lcom/android/calendar/newapi/model/CalendarStore;->getImmutableCalendar(Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    .line 78
    if-eqz p2, :cond_0

    iget-boolean v1, p2, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p3, v0}, Lcom/android/calendar/newapi/model/NotificationStore;->getDefaultNotificationMinutes(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Ljava/lang/Integer;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private getSmartNotificationsString(Lcom/google/android/calendar/api/HabitReminders;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_1

    sget v0, Lcom/android/calendar/R$string;->smart_notifications_on:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->smart_notifications_off:I

    goto :goto_1
.end method


# virtual methods
.method protected setupView()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/calendar/newapi/view/TextTileView;->setupView()V

    .line 39
    sget v0, Lcom/android/calendar/R$drawable;->ic_notification:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;

    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->describe_notification_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {p0}, Lcom/android/calendar/newapi/view/MaterialViewUtils;->addMaterialListStyling(Landroid/view/ViewGroup;)V

    .line 42
    return-void
.end method

.method public updateUi()V
    .locals 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/GrooveHolder;

    check-cast v0, Lcom/android/calendar/newapi/model/GrooveInstanceHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/GrooveInstanceHolder;->getHabitInstance()Lcom/google/android/calendar/api/HabitInstance;

    move-result-object v1

    .line 47
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/GrooveHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/GrooveHolder;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v2

    .line 49
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/GrooveHolder;

    .line 51
    invoke-interface {v0}, Lcom/android/calendar/newapi/model/GrooveHolder;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v3

    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/GrooveHolder;

    check-cast v0, Lcom/android/calendar/newapi/model/NotificationStoreHolder;

    .line 53
    invoke-interface {v0}, Lcom/android/calendar/newapi/model/NotificationStoreHolder;->getNotificationStore()Lcom/android/calendar/newapi/model/NotificationStore;

    move-result-object v4

    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/GrooveHolder;

    check-cast v0, Lcom/android/calendar/newapi/model/CalendarStoreHolder;

    .line 54
    invoke-interface {v0}, Lcom/android/calendar/newapi/model/CalendarStoreHolder;->getCalendarStore()Lcom/android/calendar/newapi/model/CalendarStore;

    move-result-object v0

    .line 50
    invoke-direct {p0, v3, v2, v4, v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->getNotification(Lcom/google/android/calendar/api/HabitDescriptor;Lcom/google/android/calendar/api/HabitReminders;Lcom/android/calendar/newapi/model/NotificationStore;Lcom/android/calendar/newapi/model/CalendarStore;)Ljava/lang/Integer;

    move-result-object v3

    .line 57
    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitInstance;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 58
    :goto_0
    new-instance v1, Lcom/android/calendar/event/ReminderUtils;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/calendar/event/ReminderUtils;-><init>(Landroid/content/Context;)V

    .line 59
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/calendar/event/ReminderUtils;->constructGrooveNotificationLabel(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 62
    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->getSmartNotificationsString(Lcom/google/android/calendar/api/HabitReminders;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->setSecondLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 63
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;->getSmartNotificationsString(Lcom/google/android/calendar/api/HabitReminders;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 62
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method
