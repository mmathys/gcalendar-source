.class final Lcom/google/android/gms/common/zzc$zzw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzw"
.end annotation


# static fields
.field static final zzaiX:[Lcom/google/android/gms/common/zzc$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/zzc$zza;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/zzc$zzw$1;

    const-string v3, "0\u0082\u0003\u00bb0\u0082\u0002\u00a3\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u009b\u00e2q\u00b4\u00ad5Fb0"

    invoke-static {v3}, Lcom/google/android/gms/common/zzc$zza;->zzbM(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzc$zzw$1;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/common/zzc$zzw$2;

    const-string v3, "0\u0082\u0003\u00bb0\u0082\u0002\u00a3\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u008c\u00b0~\u00c0O\u0008\u00c2\u00fe0"

    invoke-static {v3}, Lcom/google/android/gms/common/zzc$zza;->zzbM(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzc$zzw$2;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/zzc$zzw;->zzaiX:[Lcom/google/android/gms/common/zzc$zza;

    return-void
.end method
