.class public Lcom/google/android/gms/playlog/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private zzbvQ:Lcom/google/android/gms/playlog/internal/zze;

.field private final zzbwb:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

.field private zzbwc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbwb:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbvQ:Lcom/google/android/gms/playlog/internal/zze;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbwc:Z

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbvQ:Lcom/google/android/gms/playlog/internal/zze;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/zze;->zzaN(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbwc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbwb:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbwb:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    invoke-interface {v0}, Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;->onLoggerConnected()V

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbwc:Z

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbvQ:Lcom/google/android/gms/playlog/internal/zze;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/zze;->zzaN(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbwc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbwb:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbwb:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;->onLoggerFailedConnectionWithResolution(Landroid/app/PendingIntent;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbwc:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbwb:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    invoke-interface {v0}, Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;->onLoggerFailedConnection()V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbvQ:Lcom/google/android/gms/playlog/internal/zze;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/zze;->zzaN(Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/playlog/internal/zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbvQ:Lcom/google/android/gms/playlog/internal/zze;

    return-void
.end method

.method public zzaM(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbwc:Z

    return-void
.end method
