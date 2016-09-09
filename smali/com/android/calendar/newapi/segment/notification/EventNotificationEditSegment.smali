.class public Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;
.super Lcom/android/calendar/newapi/segment/common/EditSegment;
.source "EventNotificationEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/EditSegment",
        "<",
        "Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment$Listener;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mAddNotification:Lcom/android/calendar/newapi/view/TextTileView;

.field private mAllDay:Z

.field private mNotificationList:Landroid/widget/LinearLayout;

.field private final mReminderUtils:Lcom/android/calendar/event/ReminderUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/android/calendar/event/ReminderUtils;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/event/ReminderUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    .line 44
    return-void
.end method

.method private getLabelForNotification(Lcom/google/android/calendar/api/notifications/Notification;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    .line 120
    invoke-virtual {p1}, Lcom/google/android/calendar/api/notifications/Notification;->getMinutesBefore()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/calendar/api/notifications/Notification;->getMethod()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mAllDay:Z

    .line 119
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/event/ReminderUtils;->constructLabel(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;
    .locals 2

    .prologue
    .line 37
    sget v0, Lcom/android/calendar/R$layout;->newapi_event_notification_edit_segment:I

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;

    .line 37
    return-object v0
.end method

.method private updateAddNotificationLabel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mNotificationList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mAddNotification:Lcom/android/calendar/newapi/view/TextTileView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/view/TextTileView;->setVisibility(I)V

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mAddNotification:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/newapi/view/TextTileView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mNotificationList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mAddNotification:Lcom/android/calendar/newapi/view/TextTileView;

    sget v1, Lcom/android/calendar/R$string;->add_additional_notification_label:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(I[Ljava/lang/Object;)Lcom/android/calendar/newapi/view/TextTileView;

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mAddNotification:Lcom/android/calendar/newapi/view/TextTileView;

    sget v1, Lcom/android/calendar/R$string;->add_notification_label:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(I[Ljava/lang/Object;)Lcom/android/calendar/newapi/view/TextTileView;

    goto :goto_0
.end method


# virtual methods
.method public addNotification(Lcom/google/android/calendar/api/notifications/Notification;)V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/view/TextTileView;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v0}, Lcom/android/calendar/newapi/view/TextTileView;->treatAsButton()Lcom/android/calendar/newapi/view/TileView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/newapi/view/TileView;->indentContent()Lcom/android/calendar/newapi/view/TileView;

    .line 58
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mNotificationList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 59
    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/view/TextTileView;->setTag(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/view/TextTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->getLabelForNotification(Lcom/google/android/calendar/api/notifications/Notification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 62
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mNotificationList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 63
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->updateAddNotificationLabel()V

    .line 64
    return-void
.end method

.method public addNotifications(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/notifications/Notification;

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->addNotification(Lcom/google/android/calendar/api/notifications/Notification;)V

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public clearNotifications()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mNotificationList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mNotificationList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 125
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->updateAddNotificationLabel()V

    .line 129
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->add_notification_tile:I

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->getListener()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment$Listener;->onAddNotificationClicked()V

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mNotificationList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/notifications/Notification;

    .line 90
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->getListener()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment$Listener;

    invoke-interface {v1, v0, v2}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment$Listener;->onNotificationClicked(Lcom/google/android/calendar/api/notifications/Notification;I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/calendar/newapi/segment/common/EditSegment;->onFinishInflate()V

    .line 49
    sget v0, Lcom/android/calendar/R$id;->add_notification_tile:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/view/TextTileView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mAddNotification:Lcom/android/calendar/newapi/view/TextTileView;

    .line 50
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mAddNotification:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/view/TextTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mAddNotification:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/view/TextTileView;->getFirstLine()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$color;->edit_text_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    sget v0, Lcom/android/calendar/R$id;->notifications:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mNotificationList:Landroid/widget/LinearLayout;

    .line 53
    return-void
.end method

.method public removeNotification(I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mNotificationList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 74
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->updateAddNotificationLabel()V

    .line 75
    return-void
.end method

.method public replaceNotification(ILcom/google/android/calendar/api/notifications/Notification;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mNotificationList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/view/TextTileView;

    .line 79
    invoke-direct {p0, p2}, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->getLabelForNotification(Lcom/google/android/calendar/api/notifications/Notification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 80
    invoke-virtual {v0, p2}, Lcom/android/calendar/newapi/view/TextTileView;->setTag(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method setAllDayState(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegment;->mAllDay:Z

    .line 116
    return-void
.end method
