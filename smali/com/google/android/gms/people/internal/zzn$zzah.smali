.class final Lcom/google/android/gms/people/internal/zzn$zzah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Images$LoadImageResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/internal/zzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzah"
.end annotation


# instance fields
.field private final zzQm:Lcom/google/android/gms/common/api/Status;

.field private final zzazt:Landroid/os/ParcelFileDescriptor;

.field private final zzbpP:Z

.field private final zzoh:I

.field private final zzoi:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/people/internal/zzn$zzah;->zzQm:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/people/internal/zzn$zzah;->zzazt:Landroid/os/ParcelFileDescriptor;

    iput-boolean p3, p0, Lcom/google/android/gms/people/internal/zzn$zzah;->zzbpP:Z

    iput p4, p0, Lcom/google/android/gms/people/internal/zzn$zzah;->zzoh:I

    iput p5, p0, Lcom/google/android/gms/people/internal/zzn$zzah;->zzoi:I

    return-void
.end method


# virtual methods
.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/internal/zzn$zzah;->zzazt:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/internal/zzn$zzah;->zzQm:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/internal/zzn$zzah;->zzazt:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/people/internal/zzn$zzah;->zzazt:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Landroid/os/ParcelFileDescriptor;)V

    :cond_0
    return-void
.end method
