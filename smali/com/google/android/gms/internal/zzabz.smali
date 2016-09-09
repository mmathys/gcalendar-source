.class public abstract Lcom/google/android/gms/internal/zzabz;
.super Ljava/lang/Object;


# instance fields
.field protected volatile zzbYZ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzabz;->zzbYZ:I

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/zzabz;[B)Lcom/google/android/gms/internal/zzabz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzabz;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaby;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzabz;->zzb(Lcom/google/android/gms/internal/zzabz;[BII)Lcom/google/android/gms/internal/zzabz;

    move-result-object v0

    return-object v0
.end method

.method public static final zza(Lcom/google/android/gms/internal/zzabz;[BII)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzabr;->zzb([BII)Lcom/google/android/gms/internal/zzabr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzabz;->writeTo(Lcom/google/android/gms/internal/zzabr;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzabr;->zzLN()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final zzb(Lcom/google/android/gms/internal/zzabz;[BII)Lcom/google/android/gms/internal/zzabz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzabz;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaby;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzabq;->zza([BII)Lcom/google/android/gms/internal/zzabq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzabz;->mergeFrom(Lcom/google/android/gms/internal/zzabq;)Lcom/google/android/gms/internal/zzabz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabq;->zzri(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzaby; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final zzf(Lcom/google/android/gms/internal/zzabz;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzabz;->zzMa()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzabz;->zza(Lcom/google/android/gms/internal/zzabz;[BII)V

    return-object v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzabz;->zzLP()Lcom/google/android/gms/internal/zzabz;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract mergeFrom(Lcom/google/android/gms/internal/zzabq;)Lcom/google/android/gms/internal/zzabz;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaca;->zzg(Lcom/google/android/gms/internal/zzabz;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzabr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public zzLP()Lcom/google/android/gms/internal/zzabz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabz;

    return-object v0
.end method

.method public zzLZ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzabz;->zzbYZ:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzabz;->zzMa()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzabz;->zzbYZ:I

    return v0
.end method

.method public zzMa()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzabz;->computeSerializedSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzabz;->zzbYZ:I

    return v0
.end method
