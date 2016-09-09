.class public Lcom/google/android/gms/internal/zzox;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/internal/zzoy;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;)V
    .locals 7

    const/16 v3, 0x1d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzox;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/io/File;)Lcom/google/android/gms/feedback/ErrorReport;
    .locals 3

    new-instance v1, Lcom/google/android/gms/feedback/ErrorReport;

    invoke-direct {v1}, Lcom/google/android/gms/feedback/ErrorReport;-><init>()V

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getPsdBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getPsdBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getPsdBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->psdBundle:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getAccountInUse()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getAccountInUse()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->account:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->description:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getCrashInfo()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getCrashInfo()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->throwMethodName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getCrashInfo()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    iput v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->throwLineNumber:I

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getCrashInfo()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->throwClassName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getCrashInfo()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->stackTrace:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getCrashInfo()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getCrashInfo()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getCrashInfo()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->throwFileName:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getThemeSettings()Lcom/google/android/gms/feedback/ThemeSettings;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getThemeSettings()Lcom/google/android/gms/feedback/ThemeSettings;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->themeSettings:Lcom/google/android/gms/feedback/ThemeSettings;

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getCategoryTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getCategoryTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->categoryTag:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->applicationErrorReport:Landroid/app/ApplicationErrorReport;

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getBitmapTeleporter()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getBitmapTeleporter()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->bitmapTeleporter:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iget-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->bitmapTeleporter:Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/BitmapTeleporter;->setTempDir(Ljava/io/File;)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getFileTeleporters()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getFileTeleporters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getFileTeleporters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/feedback/FileTeleporter;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/feedback/FileTeleporter;->setTempDir(Ljava/io/File;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getFileTeleporters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getFileTeleporters()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/feedback/FileTeleporter;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/feedback/FileTeleporter;

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->fileTeleporterList:[Lcom/google/android/gms/feedback/FileTeleporter;

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getLogOptions()Lcom/google/android/gms/feedback/LogOptions;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getLogOptions()Lcom/google/android/gms/feedback/LogOptions;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->logOptions:Lcom/google/android/gms/feedback/LogOptions;

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;->getExcludePii()Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/feedback/ErrorReport;->excludePii:Z

    :cond_b
    return-object v1
.end method

.method private zzc(Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/feedback/ErrorReport;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzox;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzox;->zza(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/io/File;)Lcom/google/android/gms/feedback/ErrorReport;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/feedback/FeedbackOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzox;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoy;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzox;->zzc(Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/feedback/ErrorReport;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzoy;->zza(Lcom/google/android/gms/feedback/ErrorReport;)Z

    return-void
.end method

.method protected synthetic zzaa(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzox;->zzcQ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzoy;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/feedback/FeedbackOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzox;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoy;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzox;->zzc(Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/feedback/ErrorReport;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzoy;->zzb(Lcom/google/android/gms/feedback/ErrorReport;)Z

    return-void
.end method

.method protected zzcQ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzoy;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzoy$zza;->zzcR(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzoy;

    move-result-object v0

    return-object v0
.end method

.method protected zzfO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.feedback.internal.IFeedbackService"

    return-object v0
.end method

.method protected zzfP()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.feedback.internal.IFeedbackService"

    return-object v0
.end method
