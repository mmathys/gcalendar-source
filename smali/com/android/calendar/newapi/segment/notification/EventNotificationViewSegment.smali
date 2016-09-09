.class public Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;
.super Lcom/android/calendar/newapi/view/MultiLineTextTileView;
.source "EventNotificationViewSegment.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT::",
        "Lcom/android/calendar/newapi/model/EventHolder;",
        ":",
        "Lcom/android/calendar/newapi/model/NotificationStoreHolder;",
        ":",
        "Lcom/android/calendar/newapi/model/CalendarStoreHolder;",
        ">",
        "Lcom/android/calendar/newapi/view/MultiLineTextTileView;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/android/calendar/newapi/model/EventHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelT;"
        }
    .end annotation
.end field

.field private final mReminderUtils:Lcom/android/calendar/event/ReminderUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/EventHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/MultiLineTextTileView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->indentContent()Lcom/android/calendar/newapi/view/TileView;

    .line 34
    sget v0, Lcom/android/calendar/R$drawable;->ic_notification:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;

    .line 35
    invoke-static {p0}, Lcom/android/calendar/newapi/view/MaterialViewUtils;->addMaterialListStyling(Landroid/view/ViewGroup;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->describe_notification_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 37
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    .line 38
    new-instance v0, Lcom/android/calendar/event/ReminderUtils;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/event/ReminderUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    .line 39
    return-void
.end method

.method private createNotificationLabel(Lcom/google/android/calendar/api/notifications/Notification;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/calendar/api/notifications/Notification;->getMinutesBefore()I

    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/google/android/calendar/api/notifications/Notification;->getMethod()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    .line 78
    invoke-interface {v3}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/calendar/api/Event;->isAllDayEvent()Z

    move-result v3

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/event/ReminderUtils;->constructLabel(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createNotificationLabel(Lcom/google/calendar/v2/client/service/api/common/Reminder;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v1}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/calendar/api/Event;->isAllDayEvent()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/calendar/event/ReminderUtils;->constructLabel(Lcom/google/calendar/v2/client/service/api/common/Reminder;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createNotificationLabels()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getNotifications()Ljava/util/List;

    move-result-object v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->getDefaultNotifications()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 59
    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->createNotificationLabel(Lcom/google/calendar/v2/client/service/api/common/Reminder;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 67
    :goto_1
    return-object v0

    .line 64
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/notifications/Notification;

    .line 65
    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->createNotificationLabel(Lcom/google/android/calendar/api/notifications/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 67
    goto :goto_1
.end method

.method private getDefaultNotifications()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    check-cast v0, Lcom/android/calendar/newapi/model/CalendarStoreHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/CalendarStoreHolder;->getCalendarStore()Lcom/android/calendar/newapi/model/CalendarStore;

    move-result-object v0

    .line 84
    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/newapi/model/CalendarStore;->getImmutableCalendar(Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v1

    .line 85
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    check-cast v0, Lcom/android/calendar/newapi/model/NotificationStoreHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/NotificationStoreHolder;->getNotificationStore()Lcom/android/calendar/newapi/model/NotificationStore;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/model/NotificationStore;->getCalendarNotifications(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/android/calendar/event/edit/CalendarNotificationSet;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v1}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/calendar/api/Event;->isAllDayEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    .line 87
    :goto_0
    return-object v0

    .line 89
    :cond_0
    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    goto :goto_0
.end method

.method private hideSegment()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getNotifications()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->getDefaultNotifications()Ljava/util/List;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public updateUi()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->hideSegment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->setVisibility(I)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->setVisibility(I)V

    .line 48
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->createNotificationLabels()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;->setLines(Ljava/util/List;)V

    goto :goto_0
.end method
