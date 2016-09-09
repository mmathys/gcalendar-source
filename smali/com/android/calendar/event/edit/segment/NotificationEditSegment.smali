.class public Lcom/android/calendar/event/edit/segment/NotificationEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "NotificationEditSegment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/event/data/InputAspectNotification;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddNotificationButton:Landroid/widget/TextView;

.field protected mAllowNotificationsAfterEvent:Z

.field protected mAllowedNotifications:Ljava/lang/String;

.field private mCurrentSet:Lcom/android/calendar/event/edit/CalendarNotificationSet;

.field private final mCustomNotificationLabel:Ljava/lang/String;

.field private mDataLoaded:Z

.field protected final mDefaultAllowedNotifications:Ljava/lang/String;

.field private final mDefaultExchangeAllowedNotifications:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAllDay:Lcom/google/calendar/v2/client/service/common/ObservableBoolean;

.field private mLastReminder:Lcom/google/calendar/v2/client/service/api/common/Reminder;

.field private mLastSpinner:Landroid/widget/Spinner;

.field protected mMaxNotifications:I

.field private mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoNotificationLabel:Ljava/lang/String;

.field private mNotificationLayout:Landroid/widget/LinearLayout;

.field private final mNotificationRefreshListener:Ljava/lang/Runnable;

.field private mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

.field private final mSpinnerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    const-class v0, Lcom/android/calendar/event/data/InputAspectNotification;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSpinnerList:Ljava/util/List;

    .line 82
    iput-boolean v2, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mDataLoaded:Z

    .line 83
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMaxNotifications:I

    .line 89
    new-instance v0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$1;-><init>(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mNotificationRefreshListener:Ljava/lang/Runnable;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->setFocusable(Z)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->setFocusableInTouchMode(Z)V

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mInflater:Landroid/view/LayoutInflater;

    .line 102
    new-instance v0, Lcom/android/calendar/event/ReminderUtils;

    invoke-direct {v0, p1}, Lcom/android/calendar/event/ReminderUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    .line 103
    sget v0, Lcom/android/calendar/R$string;->edit_no_notification:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mNoNotificationLabel:Ljava/lang/String;

    .line 104
    sget v0, Lcom/android/calendar/R$string;->edit_custom_notification:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCustomNotificationLabel:Ljava/lang/String;

    .line 105
    sget v0, Lcom/android/calendar/R$string;->edit_default_allowed_notifications:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mDefaultAllowedNotifications:Ljava/lang/String;

    .line 107
    sget v0, Lcom/android/calendar/R$string;->edit_default_exchange_allowed_notifications:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mDefaultExchangeAllowedNotifications:Ljava/lang/String;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->updateNotificationSet()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Lcom/android/calendar/editor/EditSegmentController;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;I)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->addNotification(I)Landroid/widget/Spinner;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mNoNotificationLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCustomNotificationLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Lcom/google/calendar/v2/client/service/common/ObservableBoolean;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mIsAllDay:Lcom/google/calendar/v2/client/service/common/ObservableBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Lcom/android/calendar/event/ReminderUtils;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    return-object v0
.end method

.method private addNotification(I)Landroid/widget/Spinner;
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->edit_segment_notification_spinner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 292
    new-instance v1, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;-><init>(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getHideKeyboardHelper()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 294
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 295
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getNextLogicalSelectionIndex()I

    move-result p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 296
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mNotificationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSpinnerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 299
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v2, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastReminder:Lcom/google/calendar/v2/client/service/api/common/Reminder;

    invoke-virtual {v1, v2}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastSpinner:Landroid/widget/Spinner;

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->refreshLayout()V

    .line 304
    return-object v0
.end method

.method private getCurrentNotifications()Ljava/util/List;
    .locals 1
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
    .line 328
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mIsAllDay:Lcom/google/calendar/v2/client/service/common/ObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCurrentSet:Lcom/android/calendar/event/edit/CalendarNotificationSet;

    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCurrentSet:Lcom/android/calendar/event/edit/CalendarNotificationSet;

    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    goto :goto_0
.end method

.method private getLastReminderKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    const-string v0, ":last_reminder"

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNextLogicalSelectionIndex()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 269
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 270
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSpinnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 271
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    move v0, v1

    .line 275
    :goto_1
    if-ge v0, v3, :cond_2

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 281
    :goto_2
    return v0

    .line 275
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private getOptions()Ljava/util/List;
    .locals 1
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
    .line 332
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mIsAllDay:Lcom/google/calendar/v2/client/service/common/ObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCurrentSet:Lcom/android/calendar/event/edit/CalendarNotificationSet;

    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCurrentSet:Lcom/android/calendar/event/edit/CalendarNotificationSet;

    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    goto :goto_0
.end method

.method private logDidManuallyChangeNotification()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mEditInput:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/calendar/event/data/EventEditManager;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logDidChangeNotifications()V

    .line 381
    :cond_0
    return-void
.end method

.method private populateNotifications()V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->clear()V

    .line 183
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSpinnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mNotificationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 185
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getCurrentNotifications()Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 188
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSpinnerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMaxNotifications:I

    if-ne v2, v3, :cond_1

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->refreshLayout()V

    .line 199
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 192
    if-gez v0, :cond_2

    .line 193
    const/4 v0, 0x0

    .line 196
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->addNotification(I)Landroid/widget/Spinner;

    goto :goto_0
.end method

.method private refreshLayout()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSpinnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMaxNotifications:I

    if-lt v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mAddNotificationButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :cond_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mAddNotificationButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSpinnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    sget v0, Lcom/android/calendar/R$string;->add_notification_label:I

    .line 164
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mAddNotificationButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSpinnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 169
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;

    .line 170
    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 165
    :cond_2
    sget v0, Lcom/android/calendar/R$string;->add_additional_notification_label:I

    goto :goto_0
.end method

.method private removeNotification(Landroid/widget/Spinner;)V
    .locals 2

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    sget v0, Lcom/android/calendar/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->remove(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mNotificationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 310
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSpinnerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 311
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->refreshLayout()V

    .line 312
    return-void
.end method

.method private updateMutableNotifications()V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->clear()V

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSpinnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 259
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->addAll(Ljava/util/Collection;)Z

    .line 264
    return-void
.end method

.method private updateNotificationSet()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/InputAspectNotification;

    .line 176
    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectNotification;->notificationSet()Lcom/android/calendar/event/edit/CalendarNotificationSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCurrentSet:Lcom/android/calendar/event/edit/CalendarNotificationSet;

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->updateNotificationsType(Lcom/android/calendar/event/data/InputAspectNotification;)V

    .line 178
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->populateNotifications()V

    .line 179
    return-void
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)Z
    .locals 1

    .prologue
    .line 156
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectNotification;->canChangeNotifications()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 53
    check-cast p2, Lcom/android/calendar/event/data/InputAspectNotification;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)Z

    move-result v0

    return v0
.end method

.method public onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mDataLoaded:Z

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 346
    :cond_1
    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastSpinner:Landroid/widget/Spinner;

    .line 347
    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastReminder:Lcom/google/calendar/v2/client/service/api/common/Reminder;

    goto :goto_0
.end method

.method public onChange(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCurrentSet:Lcom/android/calendar/event/edit/CalendarNotificationSet;

    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    .line 318
    :goto_0
    if-nez v0, :cond_1

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->populateNotifications()V

    .line 325
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCurrentSet:Lcom/android/calendar/event/edit/CalendarNotificationSet;

    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    goto :goto_0

    .line 321
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->onChange(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onCustomNotificationSet(II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 352
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mDataLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-static {p1, p2}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v0

    .line 355
    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntryToReminder(Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;)Lcom/google/calendar/v2/client/service/api/common/Reminder;

    move-result-object v3

    .line 357
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 358
    if-gez v0, :cond_3

    .line 359
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCurrentSet:Lcom/android/calendar/event/edit/CalendarNotificationSet;

    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort(Ljava/util/List;)V

    .line 361
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSpinnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 362
    sget v1, Lcom/android/calendar/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 363
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$NotificationsAdapter;->notifyDataSetChanged()V

    .line 364
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 365
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 367
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 369
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastSpinner:Landroid/widget/Spinner;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 370
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->updateMutableNotifications()V

    .line 371
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->logDidManuallyChangeNotification()V

    .line 372
    iput-object v5, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastSpinner:Landroid/widget/Spinner;

    .line 373
    iput-object v5, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastReminder:Lcom/google/calendar/v2/client/service/api/common/Reminder;

    goto :goto_0
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mDataLoaded:Z

    .line 145
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mNotificationRefreshListener:Ljava/lang/Runnable;

    invoke-interface {p2, v0}, Lcom/android/calendar/event/data/InputAspectNotification;->removeNotificationRefreshListener(Ljava/lang/Runnable;)V

    .line 147
    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 148
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mIsAllDay:Lcom/google/calendar/v2/client/service/common/ObservableBoolean;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 149
    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mIsAllDay:Lcom/google/calendar/v2/client/service/common/ObservableBoolean;

    .line 150
    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCurrentSet:Lcom/android/calendar/event/edit/CalendarNotificationSet;

    .line 151
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p2, Lcom/android/calendar/event/data/InputAspectNotification;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/calendar/editor/AspectEditSegment;->onFinishInflate()V

    .line 116
    sget v0, Lcom/android/calendar/R$id;->notification_layout:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mNotificationLayout:Landroid/widget/LinearLayout;

    .line 117
    sget v0, Lcom/android/calendar/R$id;->add_notification_button:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mAddNotificationButton:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mAddNotificationButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$2;-><init>(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 231
    check-cast p1, Landroid/widget/Spinner;

    .line 233
    if-nez p3, :cond_0

    .line 234
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->removeNotification(Landroid/widget/Spinner;)V

    .line 253
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p3, v0, :cond_1

    .line 237
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastSpinner:Landroid/widget/Spinner;

    .line 238
    sget v0, Lcom/android/calendar/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastReminder:Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 241
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getOptions()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastReminder:Lcom/google/calendar/v2/client/service/api/common/Reminder;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 242
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mIsAllDay:Lcom/google/calendar/v2/client/service/common/ObservableBoolean;

    .line 243
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableBoolean;->get()Z

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mAllowedNotifications:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mAllowNotificationsAfterEvent:Z

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/CustomNotificationDialog;->newInstance(ZLjava/lang/String;Z)Lcom/android/calendar/event/CustomNotificationDialog;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p0}, Lcom/android/calendar/event/CustomNotificationDialog;->setOnNotificationSetListener(Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;)V

    .line 246
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v1}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CustomNotificationDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/CustomNotificationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->icon:I

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/Spinner;->setTag(ILjava/lang/Object;)V

    .line 251
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->updateMutableNotifications()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 287
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/android/calendar/editor/AspectEditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    .line 213
    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CustomNotificationDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CustomNotificationDialog;

    .line 215
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->dismiss()V

    .line 218
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getLastReminderKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    .line 222
    if-eqz v0, :cond_1

    .line 223
    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntryToReminder(Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;)Lcom/google/calendar/v2/client/service/api/common/Reminder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastReminder:Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 225
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastReminder:Lcom/google/calendar/v2/client/service/api/common/Reminder;

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->getLastReminderKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mLastReminder:Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 205
    invoke-static {v1}, Lcom/android/calendar/event/ReminderUtils;->reminderToReminderEntry(Lcom/google/calendar/v2/client/service/api/common/Reminder;)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v1

    .line 204
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 207
    :cond_0
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mDataLoaded:Z

    .line 132
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectNotification;->mutableNotifications()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 133
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectNotification;->observableIsAllDay()Lcom/google/calendar/v2/client/service/common/ObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mIsAllDay:Lcom/google/calendar/v2/client/service/common/ObservableBoolean;

    .line 134
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mIsAllDay:Lcom/google/calendar/v2/client/service/common/ObservableBoolean;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 135
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mNotificationRefreshListener:Ljava/lang/Runnable;

    invoke-interface {p2, v0}, Lcom/android/calendar/event/data/InputAspectNotification;->addNotificationRefreshListener(Ljava/lang/Runnable;)V

    .line 137
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectNotification;->notificationSet()Lcom/android/calendar/event/edit/CalendarNotificationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mCurrentSet:Lcom/android/calendar/event/edit/CalendarNotificationSet;

    .line 138
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->updateNotificationSet()V

    .line 139
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p2, Lcom/android/calendar/event/data/InputAspectNotification;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)V

    return-void
.end method

.method protected updateNotificationsType(Lcom/android/calendar/event/data/InputAspectNotification;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 384
    invoke-interface {p1}, Lcom/android/calendar/event/data/InputAspectNotification;->isExchangeNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iput v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMaxNotifications:I

    .line 386
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mDefaultExchangeAllowedNotifications:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mAllowedNotifications:Ljava/lang/String;

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mAllowNotificationsAfterEvent:Z

    .line 393
    :goto_0
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mMaxNotifications:I

    .line 390
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mDefaultAllowedNotifications:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mAllowedNotifications:Ljava/lang/String;

    .line 391
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mAllowNotificationsAfterEvent:Z

    goto :goto_0
.end method
