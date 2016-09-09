.class public Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;
.super Lcom/android/calendar/newapi/segment/common/ChoiceCreator;
.source "EventNotificationChoiceCreator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/ChoiceCreator",
        "<",
        "Lcom/google/android/calendar/api/notifications/Notification;",
        ">;"
    }
.end annotation


# static fields
.field public static final CUSTOM_CHOICE:Lcom/google/android/calendar/api/notifications/Notification;


# instance fields
.field private final mAllDay:Z

.field private final mCustomNotificationString:Ljava/lang/String;

.field private final mNoNotificationString:Ljava/lang/String;

.field private final mReminderUtils:Lcom/android/calendar/event/ReminderUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/calendar/api/notifications/Notification;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/calendar/api/notifications/Notification;-><init>(II)V

    sput-object v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->CUSTOM_CHOICE:Lcom/google/android/calendar/api/notifications/Notification;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator;-><init>()V

    .line 33
    iput-boolean p2, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->mAllDay:Z

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->edit_no_notification:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->mNoNotificationString:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->edit_custom_notification:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->mCustomNotificationString:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/android/calendar/event/ReminderUtils;

    invoke-direct {v0, p1}, Lcom/android/calendar/event/ReminderUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    .line 37
    return-void
.end method

.method public static isCustomNotification(Lcom/google/android/calendar/api/notifications/Notification;)Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->CUSTOM_CHOICE:Lcom/google/android/calendar/api/notifications/Notification;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/google/android/calendar/api/notifications/Notification;Lcom/google/android/calendar/api/notifications/Notification;)I
    .locals 2

    .prologue
    .line 64
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 65
    :cond_0
    if-nez p1, :cond_2

    const/4 v0, -0x1

    .line 71
    :cond_1
    :goto_0
    return v0

    .line 65
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/calendar/api/notifications/Notification;->getMinutesBefore()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/calendar/api/notifications/Notification;->getMinutesBefore()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    .line 68
    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/google/android/calendar/api/notifications/Notification;->getMethod()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/calendar/api/notifications/Notification;->getMethod()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/google/android/calendar/api/notifications/Notification;

    check-cast p2, Lcom/google/android/calendar/api/notifications/Notification;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->compare(Lcom/google/android/calendar/api/notifications/Notification;Lcom/google/android/calendar/api/notifications/Notification;)I

    move-result v0

    return v0
.end method

.method protected createFooter()Landroid/support/v4/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Landroid/support/v4/util/Pair;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->mCustomNotificationString:Ljava/lang/String;

    sget-object v2, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->CUSTOM_CHOICE:Lcom/google/android/calendar/api/notifications/Notification;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createHeader()Landroid/support/v4/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Landroid/support/v4/util/Pair;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->mNoNotificationString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createLabel(Lcom/google/android/calendar/api/notifications/Notification;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    invoke-virtual {p1}, Lcom/google/android/calendar/api/notifications/Notification;->getMinutesBefore()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/calendar/api/notifications/Notification;->getMethod()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->mAllDay:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/event/ReminderUtils;->constructLabel(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/google/android/calendar/api/notifications/Notification;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->createLabel(Lcom/google/android/calendar/api/notifications/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createList(Ljava/util/ArrayList;Lcom/google/android/calendar/api/notifications/Notification;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ")",
            "Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator;->createList(Ljava/util/ArrayList;Ljava/lang/Object;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createList(Ljava/util/ArrayList;Ljava/lang/Object;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;
    .locals 1

    .prologue
    .line 23
    check-cast p2, Lcom/google/android/calendar/api/notifications/Notification;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/notification/EventNotificationChoiceCreator;->createList(Ljava/util/ArrayList;Lcom/google/android/calendar/api/notifications/Notification;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;

    move-result-object v0

    return-object v0
.end method
