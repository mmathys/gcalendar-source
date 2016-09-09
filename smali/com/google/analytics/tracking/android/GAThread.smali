.class Lcom/google/analytics/tracking/android/GAThread;
.super Ljava/lang/Thread;
.source "GAThread.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsThread;


# static fields
.field private static sInstance:Lcom/google/analytics/tracking/android/GAThread;


# instance fields
.field private volatile mAppOptOut:Z

.field private volatile mClientId:Ljava/lang/String;

.field private volatile mClosed:Z

.field private volatile mCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private volatile mDisabled:Z

.field private volatile mInstallCampaign:Ljava/lang/String;

.field private volatile mMetaModel:Lcom/google/analytics/tracking/android/MetaModel;

.field private volatile mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    .line 53
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mClosed:Z

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAThread;->start()V

    .line 80
    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/GAThread;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mAppOptOut:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/ServiceProxy;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->isSampledOut(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/analytics/tracking/android/GAThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->fillAppParameters(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->fillCampaignParameters(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->fillExceptionParameters(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/MetaModel;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mMetaModel:Lcom/google/analytics/tracking/android/MetaModel;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->getHostUrl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/analytics/tracking/android/GAThread;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    return-object v0
.end method

.method private fillAppParameters(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 212
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    const/4 v0, 0x0

    .line 218
    :try_start_0
    iget-object v4, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 219
    if-eqz v4, :cond_0

    .line 220
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 221
    :try_start_1
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :goto_0
    const-string v4, "appName"

    invoke-direct {p0, p1, v4, v1}, Lcom/google/analytics/tracking/android/GAThread;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "appVersion"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/analytics/tracking/android/GAThread;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "appId"

    invoke-direct {p0, p1, v0, v2}, Lcom/google/analytics/tracking/android/GAThread;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "appInstallerId"

    invoke-direct {p0, p1, v0, v3}, Lcom/google/analytics/tracking/android/GAThread;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "apiVersion"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void

    .line 223
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 224
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error retrieving package info: appName set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :catch_1
    move-exception v4

    goto :goto_1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method private fillCampaignParameters(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    const-string v0, "campaign"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->filterCampaign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->parseURLParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 252
    const-string v1, "campaignContent"

    const-string v2, "utm_content"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v1, "campaignMedium"

    const-string v2, "utm_medium"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "campaignName"

    const-string v2, "utm_campaign"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "campaignSource"

    const-string v2, "utm_source"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "campaignKeyword"

    const-string v2, "utm_term"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "campaignId"

    const-string v2, "utm_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v1, "gclid"

    const-string v2, "gclid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "dclid"

    const-string v2, "dclid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "gmob_t"

    const-string v2, "gmob_t"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private fillExceptionParameters(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    const-string v0, "rawException"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string v1, "rawException"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->hexDecode(Ljava/lang/String;)[B

    move-result-object v0

    .line 164
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 167
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 169
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 170
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 171
    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v2, Lcom/google/analytics/tracking/android/StandardExceptionParser;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/analytics/tracking/android/StandardExceptionParser;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    .line 186
    const-string v3, "exDescription"

    const-string v1, "exceptionThreadName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/google/analytics/tracking/android/ExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v0, "IOException reading exception"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :catch_1
    move-exception v0

    .line 179
    const-string v0, "ClassNotFoundException reading exception"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateClientId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->storeClientId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    const-string v0, "0"

    .line 371
    :cond_0
    return-object v0
.end method

.method static getAndClearCampaign(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 428
    :try_start_0
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 433
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 434
    const/4 v3, 0x0

    const/16 v4, 0x2000

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 435
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-lez v4, :cond_0

    .line 438
    const-string v2, "Too much campaign data, ignoring it."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 439
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 440
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 462
    :goto_0
    return-object v0

    .line 443
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 444
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 445
    if-gtz v3, :cond_1

    .line 446
    const-string v1, "Campaign file is empty."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 453
    :catch_0
    move-exception v1

    .line 455
    const-string v1, "No campaign data found."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Campaign found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 451
    goto :goto_0

    .line 457
    :catch_1
    move-exception v1

    .line 460
    const-string v1, "Error reading campaign data."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 461
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private getHostUrl(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 140
    const-string v0, "internalHitUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    if-nez v0, :cond_0

    .line 142
    const-string v0, "useSecure"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const-string v0, "useSecure"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->safeParseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://ssl.google-analytics.com/collect"

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    const-string v0, "http://www.google-analytics.com/collect"

    goto :goto_0

    .line 148
    :cond_2
    const-string v0, "https://ssl.google-analytics.com/collect"

    goto :goto_0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GAThread;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/analytics/tracking/android/GAThread;->sInstance:Lcom/google/analytics/tracking/android/GAThread;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/google/analytics/tracking/android/GAThread;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAThread;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/GAThread;->sInstance:Lcom/google/analytics/tracking/android/GAThread;

    .line 68
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/GAThread;->sInstance:Lcom/google/analytics/tracking/android/GAThread;

    return-object v0
.end method

.method private isSampledOut(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 193
    const-string v0, "sampleRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "sampleRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->safeParseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 195
    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    move v0, v1

    .line 206
    :goto_0
    return v0

    .line 198
    :cond_0
    cmpg-double v0, v2, v6

    if-gez v0, :cond_1

    .line 199
    const-string v0, "clientId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit16 v0, v0, 0x2710

    int-to-double v4, v0

    mul-double/2addr v2, v6

    cmpl-double v0, v4, v2

    if-ltz v0, :cond_1

    move v0, v1

    .line 202
    goto :goto_0

    .line 206
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAppOptOut()Z
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v1, "gaOptOut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 467
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 468
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 469
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 470
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 471
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    return-void
.end method

.method private queueToThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method private storeClientId(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v2, "gaClientId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 349
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 350
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 351
    const/4 v0, 0x1

    .line 357
    :goto_0
    return v0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    const-string v1, "Error creating clientId file."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :catch_1
    move-exception v1

    .line 356
    const-string v1, "Error writing to clientId file."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatch()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/google/analytics/tracking/android/GAThread$2;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAThread$2;-><init>(Lcom/google/analytics/tracking/android/GAThread;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->queueToThread(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method public getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 543
    return-object p0
.end method

.method protected init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 96
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/ServiceProxy;->createService()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string v2, "appendVersion"

    const-string v3, "_v"

    const-string v4, "ma1b6"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string v2, "appendQueueTime"

    const-string v3, "qt"

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string v2, "appendCacheBuster"

    const-string v3, "z"

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v0, Lcom/google/analytics/tracking/android/MetaModel;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/MetaModel;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mMetaModel:Lcom/google/analytics/tracking/android/MetaModel;

    .line 102
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mMetaModel:Lcom/google/analytics/tracking/android/MetaModel;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/MetaModelInitializer;->set(Lcom/google/analytics/tracking/android/MetaModel;)V

    .line 103
    return-void
.end method

.method initializeClientId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v2, "gaClientId"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 386
    const/16 v1, 0x80

    new-array v3, v1, [B

    .line 387
    const/4 v1, 0x0

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 388
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 391
    const-string v1, "clientId file seems corrupted, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 392
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 393
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v5, "gaInstallData"

    invoke-virtual {v1, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 395
    :cond_0
    if-gtz v4, :cond_2

    .line 396
    const-string v1, "clientId file seems empty, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 397
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 398
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v2, "gaInstallData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 413
    :goto_0
    if-nez v0, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAThread;->generateClientId()Ljava/lang/String;

    move-result-object v0

    .line 416
    :cond_1
    return-object v0

    .line 400
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    goto :goto_0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    :goto_1
    const-string v1, "Error reading clientId file, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v2, "gaInstallData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 408
    :catch_1
    move-exception v1

    .line 409
    :goto_2
    const-string v1, "cliendId file doesn\'t have long value, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 410
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v2, "gaInstallData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 408
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 405
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 403
    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public requestAppOptOut(Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;)V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/google/analytics/tracking/android/GAThread$4;

    invoke-direct {v0, p0, p1}, Lcom/google/analytics/tracking/android/GAThread$4;-><init>(Lcom/google/analytics/tracking/android/GAThread;Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->queueToThread(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public requestClientId(Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;)V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/google/analytics/tracking/android/GAThread$5;

    invoke-direct {v0, p0, p1}, Lcom/google/analytics/tracking/android/GAThread$5;-><init>(Lcom/google/analytics/tracking/android/GAThread;Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->queueToThread(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 483
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 492
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceProxy;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAThread;->init()V

    .line 503
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAThread;->loadAppOptOut()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mAppOptOut:Z

    .line 504
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAThread;->initializeClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mClientId:Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->getAndClearCampaign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 513
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mClosed:Z

    if-nez v0, :cond_2

    .line 519
    :try_start_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 520
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    if-nez v1, :cond_1

    .line 521
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 523
    :catch_0
    move-exception v0

    .line 524
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 526
    :catch_1
    move-exception v0

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on GAThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 530
    const-string v0, "Google Analytics is shutting down."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 531
    iput-boolean v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    goto :goto_1

    .line 484
    :catch_2
    move-exception v0

    .line 486
    const-string v0, "sleep interrupted in GAThread initialize"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :catch_3
    move-exception v0

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error initializing the GAThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 510
    const-string v0, "Google Analytics will not start up."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 511
    iput-boolean v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    goto :goto_1

    .line 534
    :cond_2
    return-void
.end method

.method public sendHit(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 109
    const-string v1, "hitTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v1, Lcom/google/analytics/tracking/android/GAThread$1;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/analytics/tracking/android/GAThread$1;-><init>(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;J)V

    invoke-direct {p0, v1}, Lcom/google/analytics/tracking/android/GAThread;->queueToThread(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method
