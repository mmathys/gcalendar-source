.class public final Lcom/google/android/gms/internal/zzacc;
.super Ljava/lang/Object;


# static fields
.field public static final zzbZb:[I

.field public static final zzbZc:[J

.field public static final zzbZd:[F

.field public static final zzbZe:[D

.field public static final zzbZf:[Z

.field public static final zzbZg:[Ljava/lang/String;

.field public static final zzbZh:[[B

.field public static final zzbZi:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/zzacc;->zzbZb:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/zzacc;->zzbZc:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/zzacc;->zzbZd:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/zzacc;->zzbZe:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/zzacc;->zzbZf:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzacc;->zzbZg:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/zzacc;->zzbZh:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/zzacc;->zzbZi:[B

    return-void
.end method

.method static zzT(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static final zzc(Lcom/google/android/gms/internal/zzabq;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzabq;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzabq;->zzrj(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzabq;->zzLw()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzabq;->zzrj(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzabq;->zzrn(I)V

    return v0
.end method

.method static zzrE(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static zzrF(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
