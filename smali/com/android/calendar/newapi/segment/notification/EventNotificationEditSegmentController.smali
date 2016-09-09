.class public Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "EventNotificationEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;
.implements Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener;
.implements Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/SegmentController;",
        "Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;",
        "Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener",
        "<",
        "Lcom/google/android/calendar/api/notifications/Notification;",
        ">;",
        "Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment$Listener;"
    }
.end annotation


# static fields
.field public static REQUEST_ADD_NOTIFICATION:I


# instance fields
.field private mCalendarDefaultNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

.field private mDefaultAllowedNotifications:Ljava/lang/String;

.field private mDefaultExchangeAllowedNotifications:Ljava/lang/String;

.field private mEventModifications:Lcom/android/calendar/newapi/model/Holder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/newapi/model/Holder",
            "<",
            "Lcom/google/android/calendar/api/EventModifications;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRequestCode:I

.field private mNotificationChoiceCreator:Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;

.field private mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

.field private mView:Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->REQUEST_ADD_NOTIFICATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mCalendarDefaultNotifications:Ljava/util/List;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mLastRequestCode:I

    return-void
.end method

.method private getCalendarDescriptor()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mEventModifications:Lcom/android/calendar/newapi/model/Holder;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/Holder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 3

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getCalendarDescriptor()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 311
    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/newapi/model/CalendarStore;->getImmutableCalendar(Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/model/Holder;Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/android/calendar/newapi/model/NotificationStore;)Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/lang/String;",
            "Lcom/android/calendar/newapi/model/Holder",
            "<",
            "Lcom/google/android/calendar/api/EventModifications;",
            ">;",
            "Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;",
            "Lcom/android/calendar/newapi/model/CalendarStore;",
            "Lcom/android/calendar/newapi/model/NotificationStore;",
            ")",
            "Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;"
        }
    .end annotation

    .prologue
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;

    .line 63
    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;-><init>()V

    .line 65
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 67
    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->prepare(Lcom/android/calendar/newapi/model/Holder;Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/android/calendar/newapi/model/NotificationStore;)V

    .line 68
    return-object v0
.end method

.method private getNotificationMethod(Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;)I
    .locals 2

    .prologue
    .line 333
    sget-object v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController$1;->$SwitchMap$com$google$calendar$v2$client$service$api$common$Reminder$DeliveryMethod:[I

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 336
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 334
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 335
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mEventModifications:Lcom/android/calendar/newapi/model/Holder;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/Holder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getNotifications()Ljava/util/List;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mCalendarDefaultNotifications:Ljava/util/List;

    goto :goto_0
.end method

.method private isAllDay()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mEventModifications:Lcom/android/calendar/newapi/model/Holder;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/Holder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->isAllDayEvent()Z

    move-result v0

    return v0
.end method

.method private isExchange()Z
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getCalendarDescriptor()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/utils/AccountUtils;->isExchangeAccount(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method private loadAndShowDefaultNotifications()V
    .locals 2

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->loadCalendarDefaultNotifications()V

    .line 364
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mEventModifications:Lcom/android/calendar/newapi/model/Holder;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/Holder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getNotificationModifications()Lcom/google/android/calendar/api/notifications/NotificationModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/notifications/NotificationModifications;->useCalendarDefaults()V

    .line 365
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->clearNotifications()V

    .line 366
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getNotifications()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->addNotifications(Ljava/util/List;)V

    .line 367
    return-void
.end method

.method private loadCalendarDefaultNotifications()V
    .locals 5

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mCalendarDefaultNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 346
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    .line 347
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getCurrentCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/model/NotificationStore;->getCalendarNotifications(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/android/calendar/event/edit/CalendarNotificationSet;

    move-result-object v0

    .line 348
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->isAllDay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    .line 351
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 352
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mCalendarDefaultNotifications:Ljava/util/List;

    new-instance v3, Lcom/google/android/calendar/api/notifications/Notification;

    .line 353
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getDeliveryMethod()Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getNotificationMethod(Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;)I

    move-result v4

    .line 354
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getBefore()Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/time/Duration;->toStandardRoundedMinutes()Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMinutes()I

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/calendar/api/notifications/Notification;-><init>(II)V

    .line 352
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    :cond_0
    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    goto :goto_0

    .line 356
    :cond_1
    return-void
.end method

.method private setView(Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    .line 85
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->setListener(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method private showChoseNotificationDialog(Lcom/google/android/calendar/api/notifications/Notification;I)V
    .locals 5

    .prologue
    .line 259
    if-ltz p2, :cond_0

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    .line 262
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getCurrentCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/model/NotificationStore;->getCalendarNotifications(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/android/calendar/event/edit/CalendarNotificationSet;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->isAllDay()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    .line 267
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 268
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getBefore()Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;->toStandardRoundedMinutes()Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMinutes()I

    move-result v3

    .line 269
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getDeliveryMethod()Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getNotificationMethod(Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;)I

    move-result v0

    .line 270
    new-instance v4, Lcom/google/android/calendar/api/notifications/Notification;

    invoke-direct {v4, v0, v3}, Lcom/google/android/calendar/api/notifications/Notification;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 259
    :cond_0
    sget p2, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->REQUEST_ADD_NOTIFICATION:I

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    goto :goto_1

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mEventModifications:Lcom/android/calendar/newapi/model/Holder;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/Holder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 275
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mEventModifications:Lcom/android/calendar/newapi/model/Holder;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/Holder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/notifications/Notification;

    .line 276
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 277
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 282
    :cond_4
    new-instance v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->isAllDay()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mNotificationChoiceCreator:Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;

    .line 283
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mNotificationChoiceCreator:Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;

    invoke-virtual {v0, v1, p1}, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->createList(Ljava/util/ArrayList;Lcom/google/android/calendar/api/notifications/Notification;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getLabels()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getSelectedPosition()I

    move-result v0

    .line 285
    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->showSingleChoiceTextDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 287
    return-void
.end method

.method private showCustomNotificationDialog()V
    .locals 3

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->isExchange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mDefaultExchangeAllowedNotifications:Ljava/lang/String;

    .line 245
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->isAllDay()Z

    move-result v2

    .line 247
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->isExchange()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 244
    :goto_1
    invoke-static {v2, v0, v1}, Lcom/android/calendar/event/CustomNotificationDialog;->newInstance(ZLjava/lang/String;Z)Lcom/android/calendar/event/CustomNotificationDialog;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p0}, Lcom/android/calendar/event/CustomNotificationDialog;->setOnNotificationSetListener(Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CustomNotificationDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/CustomNotificationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 250
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mDefaultAllowedNotifications:Ljava/lang/String;

    goto :goto_0

    .line 247
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onAddNotificationClicked()V
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->showChoseNotificationDialog(Lcom/google/android/calendar/api/notifications/Notification;I)V

    .line 132
    return-void
.end method

.method public onAllDayStateChanged()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->isAllDay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->setAllDayState(Z)V

    .line 164
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->loadAndShowDefaultNotifications()V

    .line 165
    return-void
.end method

.method public onCalendarChanged()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->loadAndShowDefaultNotifications()V

    .line 159
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/segment/common/SegmentController;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CustomNotificationDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 114
    instance-of v1, v0, Lcom/android/calendar/event/CustomNotificationDialog;

    if-eqz v1, :cond_0

    .line 115
    check-cast v0, Lcom/android/calendar/event/CustomNotificationDialog;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/CustomNotificationDialog;->setOnNotificationSetListener(Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onCustomNotificationSet(II)V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/calendar/api/notifications/Notification;

    invoke-direct {v0, p2, p1}, Lcom/google/android/calendar/api/notifications/Notification;-><init>(II)V

    .line 150
    iget v1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mLastRequestCode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->onDialogItemChosen(Lcom/google/android/calendar/api/notifications/Notification;I)V

    .line 151
    return-void
.end method

.method public onDialogItemChosen(Lcom/google/android/calendar/api/notifications/Notification;I)V
    .locals 3

    .prologue
    .line 191
    iput p2, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mLastRequestCode:I

    .line 192
    invoke-static {p1}, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->isCustomNotification(Lcom/google/android/calendar/api/notifications/Notification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->showCustomNotificationDialog()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 199
    sget v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->REQUEST_ADD_NOTIFICATION:I

    if-ne p2, v0, :cond_3

    .line 202
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mEventModifications:Lcom/android/calendar/newapi/model/Holder;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/Holder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getNotifications()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mCalendarDefaultNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/notifications/Notification;

    .line 211
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mEventModifications:Lcom/android/calendar/newapi/model/Holder;

    invoke-virtual {v1}, Lcom/android/calendar/newapi/model/Holder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/EventModifications;->getNotificationModifications()Lcom/google/android/calendar/api/notifications/NotificationModifications;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/notifications/NotificationModifications;->addNotification(Lcom/google/android/calendar/api/notifications/Notification;)V

    goto :goto_1

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mEventModifications:Lcom/android/calendar/newapi/model/Holder;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/Holder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getNotificationModifications()Lcom/google/android/calendar/api/notifications/NotificationModifications;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/notifications/NotificationModifications;->addNotification(Lcom/google/android/calendar/api/notifications/Notification;)V

    .line 217
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->addNotification(Lcom/google/android/calendar/api/notifications/Notification;)V

    goto :goto_0

    .line 223
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/notifications/Notification;

    .line 224
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mEventModifications:Lcom/android/calendar/newapi/model/Holder;

    invoke-virtual {v1}, Lcom/android/calendar/newapi/model/Holder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/EventModifications;->getNotificationModifications()Lcom/google/android/calendar/api/notifications/NotificationModifications;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/notifications/NotificationModifications;->removeNotification(Lcom/google/android/calendar/api/notifications/Notification;)V

    .line 225
    if-nez p1, :cond_4

    .line 228
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    invoke-virtual {v0, p2}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->removeNotification(I)V

    goto :goto_0

    .line 229
    :cond_4
    if-nez v2, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mEventModifications:Lcom/android/calendar/newapi/model/Holder;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/Holder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getNotificationModifications()Lcom/google/android/calendar/api/notifications/NotificationModifications;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/notifications/NotificationModifications;->addNotification(Lcom/google/android/calendar/api/notifications/Notification;)V

    .line 233
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    invoke-virtual {v0, p2, p1}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->replaceNotification(ILcom/google/android/calendar/api/notifications/Notification;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onDialogItemChosen(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/google/android/calendar/api/notifications/Notification;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->onDialogItemChosen(Lcom/google/android/calendar/api/notifications/Notification;I)V

    return-void
.end method

.method protected onInitialize()V
    .locals 2

    .prologue
    .line 90
    sget v0, Lcom/android/calendar/R$string;->edit_default_exchange_allowed_notifications:I

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mDefaultExchangeAllowedNotifications:Ljava/lang/String;

    .line 92
    sget v0, Lcom/android/calendar/R$string;->edit_default_allowed_notifications:I

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mDefaultAllowedNotifications:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->isAllDay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->setAllDayState(Z)V

    .line 99
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->loadCalendarDefaultNotifications()V

    .line 100
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->clearNotifications()V

    .line 101
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getNotifications()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->addNotifications(Ljava/util/List;)V

    .line 102
    return-void
.end method

.method public onNotificationClicked(Lcom/google/android/calendar/api/notifications/Notification;I)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->showChoseNotificationDialog(Lcom/google/android/calendar/api/notifications/Notification;I)V

    .line 137
    return-void
.end method

.method prepare(Lcom/android/calendar/newapi/model/Holder;Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/android/calendar/newapi/model/NotificationStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/model/Holder",
            "<",
            "Lcom/google/android/calendar/api/EventModifications;",
            ">;",
            "Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;",
            "Lcom/android/calendar/newapi/model/CalendarStore;",
            "Lcom/android/calendar/newapi/model/NotificationStore;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p2}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;)V

    .line 78
    iput-object p3, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 79
    iput-object p4, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    .line 80
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->mEventModifications:Lcom/android/calendar/newapi/model/Holder;

    .line 81
    return-void
.end method

.method showSingleChoiceTextDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {p1, p2, p3, p0, p4}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->newParcelableBaseInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/app/Fragment;I)Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SingleChoiceTextDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 303
    return-void
.end method
