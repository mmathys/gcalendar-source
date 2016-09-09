.class final Lcom/google/android/gms/people/internal/zzn$zzq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Images$SetAvatarResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/internal/zzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzq"
.end annotation


# instance fields
.field private final zzE:Ljava/lang/String;

.field private final zzQm:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/people/internal/zzn$zzq;->zzQm:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/people/internal/zzn$zzq;->zzE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/internal/zzn$zzq;->zzQm:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
