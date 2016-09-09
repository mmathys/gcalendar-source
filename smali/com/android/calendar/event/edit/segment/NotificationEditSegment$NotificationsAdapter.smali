.class public Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;
.super Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;
.source "NotificationEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/NotificationEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;Landroid/widget/Spinner;)V
    .locals 1

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    .line 398
    invoke-virtual {p1}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;-><init>(Landroid/content/Context;Landroid/widget/Spinner;)V

    .line 399
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->access$400(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/google/calendar/v2/client/service/api/common/Reminder;
    .locals 2

    .prologue
    .line 419
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->access$400(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 420
    :cond_0
    const/4 v0, 0x0

    .line 422
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->access$400(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->getItem(I)Lcom/google/calendar/v2/client/service/api/common/Reminder;

    move-result-object v0

    return-object v0
.end method

.method public getTextAtPosition(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mNoNotificationLabel:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->access$300(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Ljava/lang/String;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->access$400(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCustomNotificationLabel:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->access$500(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Lcom/android/calendar/event/ReminderUtils;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->getItem(I)Lcom/google/calendar/v2/client/service/api/common/Reminder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mIsAllDay:Lcom/google/calendar/v2/client/service/common/ObservableBoolean;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->access$600(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Lcom/google/calendar/v2/client/service/common/ObservableBoolean;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ObservableBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/ReminderUtils;->constructLabel(Lcom/google/calendar/v2/client/service/api/common/Reminder;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
