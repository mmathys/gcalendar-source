.class public Lcom/google/android/gms/drive/OpenFileActivityBuilder;
.super Ljava/lang/Object;


# instance fields
.field private zzawl:Ljava/lang/String;

.field private zzawm:[Ljava/lang/String;

.field private zzawn:Lcom/google/android/gms/drive/query/Filter;

.field private zzawo:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzawm:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzawm:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzawm:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzawn:Lcom/google/android/gms/drive/query/Filter;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use a selection filter and set mimetypes simultaneously"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzawn:Lcom/google/android/gms/drive/query/Filter;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/drive/Drive;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/zzu;->zzrW()Lcom/google/android/gms/drive/internal/zzan;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;

    iget-object v3, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzawl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzawm:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzawo:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/query/internal/FilterHolder;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/drive/internal/zzan;->zza(Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;)Landroid/content/IntentSender;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    iget-object v1, p0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;->zzawn:Lcom/google/android/gms/drive/query/Filter;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect Drive Play Service"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
