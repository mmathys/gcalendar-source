.class Lcom/google/android/gms/internal/zzmg$1;
.super Lcom/google/android/gms/internal/zzmj$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmg;->zzb(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakc:Lcom/google/android/gms/internal/zzmg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmg;Lcom/google/android/gms/internal/zzmk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmg$1;->zzakc:Lcom/google/android/gms/internal/zzmg;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmj$zzb;-><init>(Lcom/google/android/gms/internal/zzmk;)V

    return-void
.end method


# virtual methods
.method public zznv()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg$1;->zzakc:Lcom/google/android/gms/internal/zzmg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmg;->onConnectionSuspended(I)V

    return-void
.end method
