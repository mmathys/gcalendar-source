.class Lcom/google/android/gms/internal/zzta$5;
.super Lcom/google/android/gms/internal/zzta$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzta;->loadOwnerAvatar(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbrC:Ljava/lang/String;

.field final synthetic zzbrI:Ljava/lang/String;

.field final synthetic zzbsq:Lcom/google/android/gms/internal/zzta;

.field final synthetic zzbss:I

.field final synthetic zzbsv:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzta;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzta$5;->zzbsq:Lcom/google/android/gms/internal/zzta;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzta$5;->zzbrC:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzta$5;->zzbrI:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/zzta$5;->zzbss:I

    iput p6, p0, Lcom/google/android/gms/internal/zzta$5;->zzbsv:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzta$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzta$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/people/internal/zzn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzta$5;->zza(Lcom/google/android/gms/people/internal/zzn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/people/internal/zzn;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzta$5;->zzbrC:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzta$5;->zzbrI:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/zzta$5;->zzbss:I

    iget v5, p0, Lcom/google/android/gms/internal/zzta$5;->zzbsv:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/people/internal/zzn;->zzb(Lcom/google/android/gms/internal/zzmc$zzb;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzta$5;->setCancelToken(Lcom/google/android/gms/common/internal/zzq;)V

    return-void
.end method
