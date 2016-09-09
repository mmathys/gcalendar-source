.class public Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;
.super Ljava/lang/Object;
.source "TimelyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/TimelyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultNotifications"
.end annotation


# static fields
.field private static final EXCHANGE_DEFAULT_ALL_DAY_NOTIFICATION:Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

.field private static final EXCHANGE_DEFAULT_TIMED_NOTIFICATION:Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;


# instance fields
.field private final mAllDayNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsExchange:Z

.field private mNoAllDayNotifications:Z

.field private mNoTimedNotifications:Z

.field private final mTimedNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1558
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(III)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->EXCHANGE_DEFAULT_TIMED_NOTIFICATION:Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    .line 1562
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    const/16 v1, 0x384

    invoke-direct {v0, v3, v1, v3}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(III)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->EXCHANGE_DEFAULT_ALL_DAY_NOTIFICATION:Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mTimedNotifications:Ljava/util/List;

    .line 1568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mAllDayNotifications:Ljava/util/List;

    .line 1570
    iput-boolean v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mNoTimedNotifications:Z

    .line 1571
    iput-boolean v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mNoAllDayNotifications:Z

    .line 1574
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->isExchangeType(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mIsExchange:Z

    .line 1575
    return-void
.end method

.method public static getExchangeInitialDeafultNotification(Z)Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 1

    .prologue
    .line 1584
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->EXCHANGE_DEFAULT_ALL_DAY_NOTIFICATION:Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    :goto_0
    return-object v0

    .line 1585
    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->EXCHANGE_DEFAULT_TIMED_NOTIFICATION:Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    goto :goto_0
.end method


# virtual methods
.method public addNotification(Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V
    .locals 1

    .prologue
    .line 1589
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mAllDayNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    :goto_0
    return-void

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mTimedNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAllNotifications()[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 2

    .prologue
    .line 1614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1615
    iget-boolean v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mNoTimedNotifications:Z

    if-nez v1, :cond_0

    .line 1616
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mTimedNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mIsExchange:Z

    if-eqz v1, :cond_2

    .line 1617
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->getExchangeInitialDeafultNotification(Z)Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mNoAllDayNotifications:Z

    if-nez v1, :cond_1

    .line 1624
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mAllDayNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mIsExchange:Z

    if-eqz v1, :cond_3

    .line 1625
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->getExchangeInitialDeafultNotification(Z)Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1631
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    return-object v0

    .line 1619
    :cond_2
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mTimedNotifications:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1627
    :cond_3
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mAllDayNotifications:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setNoNotifications(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1606
    if-eqz p1, :cond_0

    .line 1607
    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mNoAllDayNotifications:Z

    .line 1611
    :goto_0
    return-void

    .line 1609
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->mNoTimedNotifications:Z

    goto :goto_0
.end method
