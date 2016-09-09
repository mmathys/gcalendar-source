.class public Lcom/android/calendar/event/edit/CalendarNotificationSet;
.super Ljava/lang/Object;
.source "CalendarNotificationSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
        ">;"
    }
.end annotation


# instance fields
.field public allDayNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field public allDayOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxNotifications:I

.field public timedNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field public timedOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/edit/CalendarNotificationSet;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    .line 54
    iget v0, p1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->mMaxNotifications:I

    iput v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->mMaxNotifications:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    .line 50
    invoke-static {p1}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->getMaximumRecentNotifications(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->mMaxNotifications:I

    .line 51
    return-void
.end method

.method public static getMaximumRecentNotifications(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/android/calendar/Accounts;->isExchangeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x5

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public addDefaultNotification(Lcom/google/calendar/v2/client/service/api/common/Reminder;Z)V
    .locals 1

    .prologue
    .line 116
    if-eqz p2, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addRecentlyUsedNotification(Lcom/google/calendar/v2/client/service/api/common/Reminder;Z)V
    .locals 2

    .prologue
    .line 134
    if-eqz p2, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->mMaxNotifications:I

    if-lt v0, v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->mMaxNotifications:I

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public compare(Lcom/google/calendar/v2/client/service/api/common/Reminder;Lcom/google/calendar/v2/client/service/api/common/Reminder;)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 152
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getBefore()Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/time/Duration;->getMillis()J

    move-result-wide v2

    .line 153
    invoke-virtual {p2}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getBefore()Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/calendar/v2/client/service/api/time/Duration;->getMillis()J

    move-result-wide v4

    .line 154
    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v0, v1

    .line 157
    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getDeliveryMethod()Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ordinal()I

    move-result v2

    .line 160
    invoke-virtual {p2}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getDeliveryMethod()Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ordinal()I

    move-result v3

    .line 161
    if-lt v2, v3, :cond_0

    move v0, v1

    .line 164
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    check-cast p2, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->compare(Lcom/google/calendar/v2/client/service/api/common/Reminder;Lcom/google/calendar/v2/client/service/api/common/Reminder;)I

    move-result v0

    return v0
.end method

.method public replace(Ljava/util/Collection;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 90
    if-eqz p2, :cond_2

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    .line 92
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 93
    iget-object v2, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort(Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort(Ljava/util/List;)V

    .line 109
    :goto_1
    return-void

    .line 100
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    .line 101
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 102
    iget-object v2, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    .line 103
    iget-object v2, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort(Ljava/util/List;)V

    .line 107
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort(Ljava/util/List;)V

    goto :goto_1
.end method

.method public sort()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort(Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort(Ljava/util/List;)V

    .line 78
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort(Ljava/util/List;)V

    .line 79
    iget-object v0, p0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort(Ljava/util/List;)V

    .line 80
    return-void
.end method

.method public sort(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    return-void
.end method
