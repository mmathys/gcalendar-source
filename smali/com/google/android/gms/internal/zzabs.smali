.class public abstract Lcom/google/android/gms/internal/zzabs;
.super Lcom/google/android/gms/internal/zzabz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzabs",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/zzabz;"
    }
.end annotation


# instance fields
.field protected zzbYP:Lcom/google/android/gms/internal/zzabv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzabz;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzabs;->zzLO()Lcom/google/android/gms/internal/zzabs;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabs;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzabs;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzabv;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabs;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzabv;->zzrB(I)Lcom/google/android/gms/internal/zzabw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzabw;->computeSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzabr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabs;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzabs;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzabv;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabs;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzabv;->zzrB(I)Lcom/google/android/gms/internal/zzabw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzabw;->writeTo(Lcom/google/android/gms/internal/zzabr;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public zzLO()Lcom/google/android/gms/internal/zzabs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzabz;->zzLP()Lcom/google/android/gms/internal/zzabz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabs;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzabx;->zza(Lcom/google/android/gms/internal/zzabs;Lcom/google/android/gms/internal/zzabs;)V

    return-object v0
.end method

.method public synthetic zzLP()Lcom/google/android/gms/internal/zzabz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzabs;->zzLO()Lcom/google/android/gms/internal/zzabs;

    move-result-object v0

    return-object v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzabq;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabq;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzabq;->zzrj(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzacc;->zzrF(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabq;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzabq;->zzN(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzacb;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/zzacb;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzabs;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/zzabv;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzabv;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzabs;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzabw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzabw;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzabs;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/zzabv;->zza(ILcom/google/android/gms/internal/zzabw;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzabw;->zza(Lcom/google/android/gms/internal/zzacb;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzabs;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabv;->zzrA(I)Lcom/google/android/gms/internal/zzabw;

    move-result-object v0

    goto :goto_1
.end method
