.class public Lcom/google/android/gms/internal/zzta;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Images;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzta$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadByReference(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/people/model/AvatarReference;",
            "Lcom/google/android/gms/people/Images$LoadImageOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/people/internal/zzl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loadByReference"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/people/internal/zzl;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzta$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzta$7;-><init>(Lcom/google/android/gms/internal/zzta;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    return-object v0
.end method

.method public loadOwnerAvatar(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/people/internal/zzl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loadOwnerAvatar"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/people/internal/zzl;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzta$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzta$5;-><init>(Lcom/google/android/gms/internal/zzta;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    return-object v0
.end method
