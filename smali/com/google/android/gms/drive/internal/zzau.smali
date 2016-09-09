.class public final Lcom/google/android/gms/drive/internal/zzau;
.super Lcom/google/android/gms/internal/zzabs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzabs",
        "<",
        "Lcom/google/android/gms/drive/internal/zzau;",
        ">;"
    }
.end annotation


# instance fields
.field public versionCode:I

.field public zzazU:J

.field public zzazW:Ljava/lang/String;

.field public zzazX:J

.field public zzazY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzabs;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzau;->zzsd()Lcom/google/android/gms/drive/internal/zzau;

    return-void
.end method

.method public static zzs([B)Lcom/google/android/gms/drive/internal/zzau;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaby;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/drive/internal/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzau;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzabz;->zza(Lcom/google/android/gms/internal/zzabz;[B)Lcom/google/android/gms/internal/zzabz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/zzau;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzabs;->computeSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzau;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzabr;->zzQ(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazW:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzabr;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazX:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzabr;->zzk(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazU:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzabr;->zzk(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazY:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazY:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzabr;->zzQ(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/drive/internal/zzau;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzau;

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzau;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/drive/internal/zzau;->versionCode:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazW:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzau;->zzazW:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazX:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzau;->zzazX:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazU:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/zzau;->zzazU:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazY:I

    iget v3, p1, Lcom/google/android/gms/drive/internal/zzau;->zzazY:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzabv;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzau;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/zzau;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzabv;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazW:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/internal/zzau;->zzazW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/zzau;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabv;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzau;->versionCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazW:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazX:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazX:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazU:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazU:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazY:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzabv;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzabv;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zzabq;)Lcom/google/android/gms/internal/zzabz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzau;->zzQ(Lcom/google/android/gms/internal/zzabq;)Lcom/google/android/gms/drive/internal/zzau;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzabr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzau;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzabr;->zzO(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazW:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzabr;->zzb(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazX:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzabr;->zzh(IJ)V

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazU:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzabr;->zzh(IJ)V

    iget v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazY:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzabr;->zzO(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzabs;->writeTo(Lcom/google/android/gms/internal/zzabr;)V

    return-void
.end method

.method public zzQ(Lcom/google/android/gms/internal/zzabq;)Lcom/google/android/gms/drive/internal/zzau;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabq;->zzLw()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/zzau;->zza(Lcom/google/android/gms/internal/zzabq;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabq;->zzLz()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzau;->versionCode:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazW:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabq;->zzLD()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazX:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabq;->zzLD()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazU:J

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabq;->zzLz()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazY:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public zzsd()Lcom/google/android/gms/drive/internal/zzau;
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzau;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazW:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazX:J

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazU:J

    iput v1, p0, Lcom/google/android/gms/drive/internal/zzau;->zzazY:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbYP:Lcom/google/android/gms/internal/zzabv;

    iput v1, p0, Lcom/google/android/gms/drive/internal/zzau;->zzbYZ:I

    return-object p0
.end method
