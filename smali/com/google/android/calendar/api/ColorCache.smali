.class public Lcom/google/android/calendar/api/ColorCache;
.super Ljava/lang/Object;
.source "ColorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/ColorCache$PerAccountData;
    }
.end annotation


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/calendar/api/ColorCache;


# instance fields
.field private final mAccountsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Lcom/google/android/calendar/api/ColorCache$PerAccountData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/android/calendar/api/ColorCache;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/api/ColorCache;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/calendar/api/ColorCache;->sInstance:Lcom/google/android/calendar/api/ColorCache;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/ColorCache;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/api/ColorCache;->mAccountsMap:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/google/android/calendar/api/ColorCache;
    .locals 3

    .prologue
    .line 77
    sget-object v1, Lcom/google/android/calendar/api/ColorCache;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/google/android/calendar/api/ColorCache;->sInstance:Lcom/google/android/calendar/api/ColorCache;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "You have to call initialize() first"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 81
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/calendar/api/ColorCache;->sInstance:Lcom/google/android/calendar/api/ColorCache;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static initialize()V
    .locals 3

    .prologue
    .line 51
    :try_start_0
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Colors:Lcom/google/android/calendar/api/ColorClient;

    invoke-static {v0}, Lcom/google/android/calendar/api/ColorCache;->initialize(Lcom/google/android/calendar/api/ColorClient;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 54
    sget-object v0, Lcom/google/android/calendar/api/ColorCache;->TAG:Ljava/lang/String;

    const-string v1, "ColorCache could not be initialized."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static initialize(Lcom/google/android/calendar/api/ColorClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    sget-object v1, Lcom/google/android/calendar/api/ColorCache;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/google/android/calendar/api/ColorCache;->sInstance:Lcom/google/android/calendar/api/ColorCache;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/google/android/calendar/api/ColorCache;

    invoke-direct {v0}, Lcom/google/android/calendar/api/ColorCache;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/ColorCache;->sInstance:Lcom/google/android/calendar/api/ColorCache;

    .line 63
    sget-object v0, Lcom/google/android/calendar/api/ColorCache;->sInstance:Lcom/google/android/calendar/api/ColorCache;

    invoke-virtual {v0, p0}, Lcom/google/android/calendar/api/ColorCache;->populate(Lcom/google/android/calendar/api/ColorClient;)V

    .line 65
    :cond_0
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getEventColors(Landroid/accounts/Account;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/calendar/api/ApiColor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorCache;->mAccountsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/ColorCache$PerAccountData;

    .line 171
    if-eqz v0, :cond_0

    .line 172
    # getter for: Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mEventIntToColorMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->access$400(Lcom/google/android/calendar/api/ColorCache$PerAccountData;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 173
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method populate(Lcom/google/android/calendar/api/ColorClient;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 96
    .line 97
    invoke-interface {p1, v10}, Lcom/google/android/calendar/api/ColorClient;->list(Lcom/google/android/calendar/api/ColorFilterOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/ColorClient$ListResult;

    .line 98
    invoke-interface {v0}, Lcom/google/android/calendar/api/ColorClient$ListResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    sget-object v0, Lcom/google/android/calendar/api/ColorCache;->TAG:Ljava/lang/String;

    const-string v1, "Status of the PendingResult when listing colors was not success."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 101
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error listing colors for the cache."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-interface {v0}, Lcom/google/android/calendar/api/ColorClient$ListResult;->getApiColors()[Lcom/google/android/calendar/api/ApiColor;

    move-result-object v3

    .line 105
    if-eqz v3, :cond_3

    array-length v0, v3

    move v1, v0

    .line 107
    :goto_0
    if-ge v2, v1, :cond_5

    .line 108
    aget-object v4, v3, v2

    .line 109
    invoke-virtual {v4}, Lcom/google/android/calendar/api/ApiColor;->getColorDescriptor()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/ColorDescriptor;->getColorId()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual {v4}, Lcom/google/android/calendar/api/ApiColor;->getColorDescriptor()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/ColorDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 111
    invoke-virtual {v4}, Lcom/google/android/calendar/api/ApiColor;->getBackgroundColor()I

    move-result v7

    .line 112
    invoke-virtual {v4}, Lcom/google/android/calendar/api/ApiColor;->getColorDescriptor()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/ColorDescriptor;->getType()I

    move-result v8

    .line 114
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorCache;->mAccountsMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/ColorCache$PerAccountData;

    .line 115
    if-nez v0, :cond_1

    .line 116
    new-instance v0, Lcom/google/android/calendar/api/ColorCache$PerAccountData;

    invoke-direct {v0, v10}, Lcom/google/android/calendar/api/ColorCache$PerAccountData;-><init>(Lcom/google/android/calendar/api/ColorCache$1;)V

    .line 117
    iget-object v9, p0, Lcom/google/android/calendar/api/ColorCache;->mAccountsMap:Ljava/util/Map;

    invoke-interface {v9, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    const/4 v6, 0x2

    if-ne v8, v6, :cond_4

    .line 121
    # getter for: Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mCalendarIdToColorMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->access$100(Lcom/google/android/calendar/api/ColorCache$PerAccountData;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    # getter for: Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mCalendarIntToColorMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->access$200(Lcom/google/android/calendar/api/ColorCache$PerAccountData;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 105
    goto :goto_0

    .line 123
    :cond_4
    const/4 v6, 0x1

    if-ne v8, v6, :cond_2

    .line 124
    # getter for: Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mEventIdToColorMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->access$300(Lcom/google/android/calendar/api/ColorCache$PerAccountData;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    # getter for: Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mEventIntToColorMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->access$400(Lcom/google/android/calendar/api/ColorCache$PerAccountData;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 128
    :cond_5
    return-void
.end method
