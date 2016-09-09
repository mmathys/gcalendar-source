.class public Lcom/google/android/calendar/task/ArpTaskDataManager;
.super Ljava/lang/Object;
.source "ArpTaskDataManager.java"

# interfaces
.implements Lcom/android/calendar/task/BaseTaskDataManager;
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;
.implements Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;
    }
.end annotation


# instance fields
.field private final mAccountVisibilityChangeListener:Landroid/database/ContentObserver;

.field private final mAllTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mArpLoadTester:Lcom/google/android/calendar/task/ArpLoadTester;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/calendar/CalendarController;

.field private mEndJulianDay:I

.field private mIsInitialLoad:Z

.field private final mMonthDatas:[Lcom/android/calendar/timely/MonthData;

.field private mStartJulianDay:I

.field private final mTaskAccounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/calendar/task/TaskAccount;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

.field private final mTasksAccountsFullLoading:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTasksAccountsShortLoading:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTasksReady:Z

.field private mTodayJulianDay:I

.field private final mTodayMonthData:Lcom/android/calendar/timely/MonthData;

.field private sHaveLoggedAccountAlready:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/calendar/task/TaskConnection;Lcom/android/calendar/timely/MonthData;[Lcom/android/calendar/timely/MonthData;)V
    .locals 4

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTaskAccounts:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mAllTasks:Ljava/util/Map;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mIsInitialLoad:Z

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    .line 149
    iput-object p3, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    .line 150
    iput-object p4, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mMonthDatas:[Lcom/android/calendar/timely/MonthData;

    .line 153
    invoke-static {p1}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/app/Activity;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mController:Lcom/android/calendar/CalendarController;

    .line 156
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 160
    new-instance v0, Lcom/google/android/calendar/task/ArpTaskDataManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/task/ArpTaskDataManager$1;-><init>(Lcom/google/android/calendar/task/ArpTaskDataManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mAccountVisibilityChangeListener:Landroid/database/ContentObserver;

    .line 178
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSelectedCalendarsHelper()Lcom/android/calendar/calendarlist/SelectCalendarsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mAccountVisibilityChangeListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/calendarlist/SelectCalendarsHelper;->registerForChanges(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 181
    new-instance v0, Lcom/google/android/calendar/task/ArpLoadTester;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/calendar/task/ArpLoadTester;-><init>(Landroid/content/Context;Lcom/google/android/calendar/task/TaskConnection;Lcom/android/calendar/timely/MonthData;Lcom/google/android/calendar/task/ArpTaskDataManager;)V

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mArpLoadTester:Lcom/google/android/calendar/task/ArpLoadTester;

    .line 182
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mArpLoadTester:Lcom/google/android/calendar/task/ArpLoadTester;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/ArpLoadTester;->run(Landroid/content/Context;)V

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksAccountsShortLoading:Ljava/util/Set;

    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksAccountsFullLoading:Ljava/util/Set;

    .line 187
    invoke-direct {p0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->fireTimeoutCounter()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/task/ArpTaskDataManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/task/ArpTaskDataManager;Z)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/ArpTaskDataManager;->loadAccounts(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/calendar/task/ArpTaskDataManager;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksReady:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/task/ArpTaskDataManager;)Lcom/android/calendar/timely/MonthData;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/task/ArpTaskDataManager;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->setTasksReady()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/calendar/task/ArpTaskDataManager;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/ArpTaskDataManager;->logRevealReason(I)V

    return-void
.end method

.method private containsDay(I)Z
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mStartJulianDay:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mEndJulianDay:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private containsMonth(Lcom/android/calendar/timely/MonthData;)Z
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v0

    iget v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mStartJulianDay:I

    if-lt v0, v1, :cond_0

    .line 462
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v0

    iget v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mEndJulianDay:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0

    .line 462
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fireTimeoutCounter()V
    .locals 4

    .prologue
    .line 580
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/calendar/task/ArpTaskDataManager$2;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/task/ArpTaskDataManager$2;-><init>(Lcom/google/android/calendar/task/ArpTaskDataManager;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 592
    return-void
.end method

.method protected static generateTaskMonthDataList(Lcom/android/calendar/timely/MonthData;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/MonthData;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v1, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v0

    .line 429
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;-><init>(II)V

    .line 431
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 432
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {v1}, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->getEndJulianDay()I

    move-result v0

    .line 434
    :goto_0
    if-ge v0, p2, :cond_0

    .line 435
    new-instance v3, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v0}, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;-><init>(I)V

    .line 436
    invoke-virtual {v3}, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->getEndJulianDay()I

    move-result v0

    .line 437
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->getStartJulianDay()I

    move-result v0

    .line 440
    :goto_1
    if-le v0, p1, :cond_1

    .line 441
    new-instance v1, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v0}, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;-><init>(I)V

    .line 442
    invoke-virtual {v1}, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->getStartJulianDay()I

    move-result v0

    .line 443
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 445
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private initAccountsAndDetermineIfShouldLoad(JJZ)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/task/TaskAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v8

    .line 610
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 611
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    .line 612
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v10

    .line 614
    array-length v11, v8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v11, :cond_3

    aget-object v2, v8, v0

    .line 615
    invoke-static {v2}, Lcom/google/android/calendar/task/TaskDataFactory;->isAccountEnabled(Landroid/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTaskAccounts:Ljava/util/Map;

    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 620
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTaskAccounts:Ljava/util/Map;

    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v4, Lcom/google/android/calendar/task/ArpTaskAccount;

    iget-object v5, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    invoke-direct {v4, v5, v2, v6, p0}, Lcom/google/android/calendar/task/ArpTaskAccount;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/calendar/task/TaskConnection;Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_2
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTaskAccounts:Ljava/util/Map;

    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/task/TaskAccount;

    .line 624
    invoke-virtual {v10, v2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v2

    .line 625
    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->areTasksVisible()Z

    move-result v6

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/google/android/calendar/task/TaskAccount;->shouldLoad(JJZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 630
    :cond_3
    return-object v9
.end method

.method private loadAccounts(Z)V
    .locals 20

    .prologue
    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mArpLoadTester:Lcom/google/android/calendar/task/ArpLoadTester;

    invoke-virtual {v2}, Lcom/google/android/calendar/task/ArpLoadTester;->isProfiling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    :cond_0
    return-void

    .line 470
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v2}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v2

    add-int/lit16 v2, v2, -0x16e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mStartJulianDay:I

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v2}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v2

    add-int/lit16 v2, v2, 0x16e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mEndJulianDay:I

    .line 472
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mStartJulianDay:I

    invoke-static {v2}, Lcom/android/calendar/Utils;->getMillisFromJulianDay(I)J

    move-result-wide v4

    .line 473
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mEndJulianDay:I

    invoke-static {v2}, Lcom/android/calendar/Utils;->getMillisFromJulianDay(I)J

    move-result-wide v6

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mStartJulianDay:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mEndJulianDay:I

    .line 475
    invoke-static {v2, v3, v8}, Lcom/google/android/calendar/task/ArpTaskDataManager;->generateTaskMonthDataList(Lcom/android/calendar/timely/MonthData;II)Ljava/util/List;

    move-result-object v18

    move-object/from16 v3, p0

    move/from16 v8, p1

    .line 477
    invoke-direct/range {v3 .. v8}, Lcom/google/android/calendar/task/ArpTaskDataManager;->initAccountsAndDetermineIfShouldLoad(JJZ)Ljava/util/List;

    move-result-object v19

    .line 478
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTaskAccounts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/calendar/task/TaskAccount;

    .line 480
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 481
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/calendar/task/ArpTaskDataManager;->markTaskAccountsInitialLoadStart(Ljava/util/List;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    .line 488
    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v2

    .line 492
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/calendar/task/TaskAccount;

    .line 493
    invoke-interface {v3}, Lcom/google/android/calendar/task/TaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v8

    .line 495
    invoke-virtual {v8}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->areTasksVisible()Z

    move-result v9

    const/4 v11, 0x0

    move-object/from16 v8, v18

    move/from16 v10, p1

    .line 494
    invoke-interface/range {v3 .. v11}, Lcom/google/android/calendar/task/TaskAccount;->loadTasks(JJLjava/util/List;ZZI)V

    goto :goto_1

    .line 500
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v2}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    .line 501
    invoke-static {v2}, Lcom/android/calendar/Utils;->getMillisFromJulianDay(I)J

    move-result-wide v12

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mStartJulianDay:I

    .line 503
    invoke-static {v3, v8, v2}, Lcom/google/android/calendar/task/ArpTaskDataManager;->generateTaskMonthDataList(Lcom/android/calendar/timely/MonthData;II)Ljava/util/List;

    move-result-object v14

    .line 504
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/calendar/task/TaskAccount;

    .line 505
    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-wide v10, v4

    invoke-interface/range {v9 .. v17}, Lcom/google/android/calendar/task/TaskAccount;->loadTasks(JJLjava/util/List;ZZI)V

    goto :goto_2

    .line 510
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/calendar/task/TaskAccount;

    .line 511
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v8, v18

    invoke-interface/range {v3 .. v11}, Lcom/google/android/calendar/task/TaskAccount;->loadTasks(JJLjava/util/List;ZZI)V

    goto :goto_3
.end method

.method private logAllAccountDataReadyAnalytics(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 365
    .line 369
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v8, v0

    move v9, v0

    move v4, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 370
    check-cast v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    .line 371
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTimelineTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTimelineTask;->isUnscheduled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    add-int/lit8 v2, v4, 0x1

    move v1, v9

    .line 386
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTimelineTask;->hasAssist()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    add-int/lit8 v0, v8, 0x1

    :goto_2
    move v8, v0

    move v9, v1

    move v4, v2

    .line 389
    goto :goto_0

    .line 384
    :cond_1
    add-int/lit8 v1, v9, 0x1

    move v2, v4

    goto :goto_1

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 392
    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    const-string v3, "reminders_count"

    mul-int/lit16 v0, v4, 0x3e8

    int-to-long v4, v0

    const-string v6, "num_carried_over_reminders"

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    const-string v3, "reminders_count"

    mul-int/lit16 v0, v9, 0x3e8

    int-to-long v4, v0

    const-string v6, "num_future_reminders"

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    const-string v3, "reminders_count"

    mul-int/lit16 v0, v8, 0x3e8

    int-to-long v4, v0

    const-string v6, "num_reminders_with_assist"

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void

    :cond_3
    move v0, v8

    goto :goto_2
.end method

.method private logRevealReason(I)V
    .locals 6

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_loading:I

    .line 597
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_action_ui_revealed:I

    .line 598
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    .line 599
    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 597
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 600
    return-void
.end method

.method private declared-synchronized markTaskAccountInitialLoadEnd(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 553
    monitor-enter p0

    if-eqz p2, :cond_4

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    .line 554
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksAccountsShortLoading:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 558
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksAccountsShortLoading:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksReady:Z

    if-nez v0, :cond_1

    .line 560
    sget v0, Lcom/android/calendar/R$string;->analytics_label_ui_revealed_loaded:I

    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->logRevealReason(I)V

    .line 562
    :cond_1
    invoke-direct {p0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->setTasksReady()V

    .line 563
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 565
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksAccountsFullLoading:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 566
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 569
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mMonthDatas:[Lcom/android/calendar/timely/MonthData;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    .line 570
    if-eqz v3, :cond_3

    .line 571
    invoke-virtual {v3}, Lcom/android/calendar/timely/MonthData;->setAllTasksReady()V

    .line 569
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 555
    :cond_4
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksAccountsFullLoading:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 575
    :cond_5
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized markTaskAccountsInitialLoadStart(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/task/TaskAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mIsInitialLoad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 547
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 523
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mIsInitialLoad:Z

    .line 525
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksAccountsShortLoading:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksReady:Z

    if-nez v0, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->setTasksReady()V

    .line 531
    sget v0, Lcom/android/calendar/R$string;->analytics_label_ui_revealed_no_tasks:I

    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->logRevealReason(I)V

    .line 532
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    .line 533
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 534
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 539
    :cond_2
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskAccount;

    .line 540
    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksAccountsShortLoading:Ljava/util/Set;

    invoke-interface {v0}, Lcom/google/android/calendar/task/TaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 544
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskAccount;

    .line 545
    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksAccountsFullLoading:Ljava/util/Set;

    invoke-interface {v0}, Lcom/google/android/calendar/task/TaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private setTasksReady()V
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksReady:Z

    .line 604
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->setTasksReady()V

    .line 605
    return-void
.end method

.method private updateMonthData(Lcom/android/calendar/timely/MonthData;Ljava/lang/String;Ljava/util/NavigableMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/MonthData;",
            "Ljava/lang/String;",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/timely/MonthData$TaskResults;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .line 636
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_0

    .line 638
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/MonthData$TaskResults;

    .line 640
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData$TaskResults;->getStartDay()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 641
    invoke-virtual {p1, p2, v0}, Lcom/android/calendar/timely/MonthData;->populateTasks(Ljava/lang/String;Lcom/android/calendar/timely/MonthData$TaskResults;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->onTasksPopulated()V

    .line 646
    :cond_0
    return-void
.end method


# virtual methods
.method public getAllTasks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mAllTasks:Ljava/util/Map;

    return-object v0
.end method

.method public includeData(I)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/ArpTaskDataManager;->containsDay(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    return-void

    .line 199
    :cond_1
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 200
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    invoke-interface {v2, v0, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mMonthDatas:[Lcom/android/calendar/timely/MonthData;

    array-length v3, v1

    move v0, v4

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v5, v1, v0

    .line 203
    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Lcom/android/calendar/timely/MonthData;->containsDay(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 204
    invoke-virtual {v5}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 212
    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/calendar/timely/MonthData;

    .line 213
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 214
    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTaskAccounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthData;->createTaskStorage()Lcom/android/calendar/timely/MonthData$TaskResults;

    move-result-object v8

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTaskAccounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskAccount;

    .line 223
    invoke-interface {v0}, Lcom/google/android/calendar/task/TaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v6

    .line 224
    invoke-interface {v0}, Lcom/google/android/calendar/task/TaskAccount;->getTasks()Lcom/google/android/calendar/task/TaskAccount$Tasks;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_6

    .line 230
    iget-object v0, v0, Lcom/google/android/calendar/task/TaskAccount$Tasks;->mMonthsTasksMap:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/MonthData$TaskResults;

    .line 231
    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData$TaskResults;->getStartDay()I

    move-result v8

    .line 233
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_7

    .line 235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/MonthData;

    .line 236
    invoke-virtual {v1, v8}, Lcom/android/calendar/timely/MonthData;->containsDay(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 237
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 244
    :cond_8
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/MonthData;

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 248
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/MonthData$TaskResults;

    .line 251
    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/timely/MonthData;->populateTasks(Ljava/lang/String;Lcom/android/calendar/timely/MonthData$TaskResults;)Z

    move-result v0

    or-int/2addr v0, v3

    move v3, v0

    .line 252
    goto :goto_4

    .line 253
    :cond_a
    if-eqz v3, :cond_b

    .line 254
    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthData;->onTasksPopulated()V

    .line 257
    :cond_b
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksAccountsFullLoading:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 258
    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthData;->setAllTasksReady()V

    goto :goto_3
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 303
    packed-switch p1, :pswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 310
    :pswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayJulianDay:I

    .line 311
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->updateToday()V

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 293
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 296
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSelectedCalendarsHelper()Lcom/android/calendar/calendarlist/SelectCalendarsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mAccountVisibilityChangeListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/calendarlist/SelectCalendarsHelper;->unregisterForChanges(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 298
    return-void
.end method

.method public onTaskAccountChanged(Lcom/google/android/calendar/task/TaskAccount;)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0, p0}, Lcom/android/calendar/CalendarController;->notifyEventsChanged(Ljava/lang/Object;)V

    .line 403
    return-void
.end method

.method public onTaskAccountLoaded(Lcom/google/android/calendar/task/TaskAccount;Ljava/lang/Integer;)V
    .locals 7

    .prologue
    .line 320
    invoke-interface {p1}, Lcom/google/android/calendar/task/TaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-interface {p1}, Lcom/google/android/calendar/task/TaskAccount;->getTasks()Lcom/google/android/calendar/task/TaskAccount$Tasks;

    move-result-object v2

    .line 323
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    iget-object v3, v2, Lcom/google/android/calendar/task/TaskAccount$Tasks;->mMonthsTasksMap:Ljava/util/NavigableMap;

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/calendar/task/ArpTaskDataManager;->updateMonthData(Lcom/android/calendar/timely/MonthData;Ljava/lang/String;Ljava/util/NavigableMap;)V

    .line 325
    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mMonthDatas:[Lcom/android/calendar/timely/MonthData;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 326
    if-eqz v5, :cond_0

    invoke-direct {p0, v5}, Lcom/google/android/calendar/task/ArpTaskDataManager;->containsMonth(Lcom/android/calendar/timely/MonthData;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 327
    iget-object v6, v2, Lcom/google/android/calendar/task/TaskAccount$Tasks;->mMonthsTasksMap:Ljava/util/NavigableMap;

    invoke-direct {p0, v5, v1, v6}, Lcom/google/android/calendar/task/ArpTaskDataManager;->updateMonthData(Lcom/android/calendar/timely/MonthData;Ljava/lang/String;Ljava/util/NavigableMap;)V

    .line 325
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/google/android/calendar/task/ArpTaskDataManager;->markTaskAccountInitialLoadEnd(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mArpLoadTester:Lcom/google/android/calendar/task/ArpLoadTester;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpLoadTester;->logUpdatedMothData()V

    .line 335
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v3

    .line 336
    iget-object v0, v2, Lcom/google/android/calendar/task/TaskAccount$Tasks;->mTasksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 337
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 338
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 339
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 344
    :cond_3
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mAllTasks:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mArpLoadTester:Lcom/google/android/calendar/task/ArpLoadTester;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpLoadTester;->logUpdatedSearch()V

    .line 350
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 351
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->sHaveLoggedAccountAlready:Ljava/util/Set;

    if-nez v0, :cond_4

    .line 352
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->sHaveLoggedAccountAlready:Ljava/util/Set;

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->sHaveLoggedAccountAlready:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/calendar/task/TaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mArpLoadTester:Lcom/google/android/calendar/task/ArpLoadTester;

    .line 355
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpLoadTester;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 356
    :cond_5
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->sHaveLoggedAccountAlready:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/calendar/task/TaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, v2, Lcom/google/android/calendar/task/TaskAccount$Tasks;->mTasksList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->logAllAccountDataReadyAnalytics(Ljava/util/List;)V

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mArpLoadTester:Lcom/google/android/calendar/task/ArpLoadTester;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpLoadTester;->logUpdatedAnalytics()V

    .line 362
    return-void

    .line 346
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTasksChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/reminders/model/ReminderEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTaskAccounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskAccount;

    .line 415
    check-cast v0, Lcom/google/android/calendar/task/ArpTaskAccount;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/task/ArpTaskAccount;->onTasksChanged(Ljava/util/List;)V

    goto :goto_0

    .line 417
    :cond_0
    return-void
.end method

.method public refreshComplete()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->loadAccounts(Z)V

    .line 270
    return-void
.end method

.method public refreshStart()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public updateToday()V
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeService;->today()Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeImpl;->getJulianDay()I

    move-result v1

    .line 277
    iget v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayJulianDay:I

    if-eq v0, v1, :cond_0

    .line 280
    iget v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayJulianDay:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 281
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->loadAccounts(Z)V

    .line 283
    :cond_0
    iput v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayJulianDay:I

    .line 284
    return-void

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
