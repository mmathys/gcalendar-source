.class public final Lcom/google/android/gms/internal/zzwl$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzwl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzbDT:Z

.field private zzbDU:Z

.field private zzbDV:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

.field private zzbDW:Z

.field private zzbDX:Z

.field private zzbwh:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzGH()Lcom/google/android/gms/internal/zzwl;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/zzwl;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzwl$zza;->zzbDT:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwl$zza;->zzbDU:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzwl$zza;->zzbwh:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzwl$zza;->zzbDV:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzwl$zza;->zzbDW:Z

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzwl$zza;->zzbDX:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzwl;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZLcom/google/android/gms/internal/zzwl$1;)V

    return-object v0
.end method
