.class public Lcom/google/android/gms/playlog/PlayLogger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzbvQ:Lcom/google/android/gms/playlog/internal/zze;

.field private zzbvR:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/playlog/PlayLogger;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/playlog/PlayLogger;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;ZLjava/lang/String;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/gms/playlog/PlayLogger;->zzbvR:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    new-instance v1, Lcom/google/android/gms/playlog/internal/zze;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/playlog/internal/zzd;

    move-object/from16 v0, p5

    invoke-direct {v13, v0}, Lcom/google/android/gms/playlog/internal/zzd;-><init>(Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;)V

    new-instance v3, Lcom/google/android/gms/common/internal/zzf;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x31

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v9, v2

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/common/internal/zzf;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzwl;)V

    invoke-direct {v1, p1, v12, v13, v3}, Lcom/google/android/gms/playlog/internal/zze;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/playlog/internal/zzd;Lcom/google/android/gms/common/internal/zzf;)V

    iput-object v1, p0, Lcom/google/android/gms/playlog/PlayLogger;->zzbvQ:Lcom/google/android/gms/playlog/internal/zze;

    return-void

    :catch_0
    move-exception v1

    const-string v4, "PlayLogger"

    const-string v5, "This can\'t happen."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public setUploadAccountName(Ljava/lang/String;)Lcom/google/android/gms/playlog/PlayLogger;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->zzbvR:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v0, v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->uploadAccountName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/playlog/PlayLogger;->zzbvR:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, v1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/playlog/PlayLogger;->zzbvR:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget v2, v2, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->packageVersionCode:I

    iget-object v3, p0, Lcom/google/android/gms/playlog/PlayLogger;->zzbvR:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget v3, v3, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->logSource:I

    iget-object v4, p0, Lcom/google/android/gms/playlog/PlayLogger;->zzbvR:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v5, v4, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->loggingId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/playlog/PlayLogger;->zzbvR:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-boolean v6, v4, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->logAndroidId:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->zzbvR:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->zzbvQ:Lcom/google/android/gms/playlog/internal/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/zze;->start()V

    return-void
.end method
