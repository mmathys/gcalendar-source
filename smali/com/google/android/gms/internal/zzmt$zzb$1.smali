.class Lcom/google/android/gms/internal/zzmt$zzb$1;
.super Lcom/google/android/gms/internal/zzmm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmt$zzb;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzalM:Landroid/app/Dialog;

.field final synthetic zzalN:Lcom/google/android/gms/internal/zzmt$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmt$zzb;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmt$zzb$1;->zzalN:Lcom/google/android/gms/internal/zzmt$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmt$zzb$1;->zzalM:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmm;-><init>()V

    return-void
.end method


# virtual methods
.method protected zznP()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb$1;->zzalN:Lcom/google/android/gms/internal/zzmt$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmt;->zzc(Lcom/google/android/gms/internal/zzmt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb$1;->zzalM:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
