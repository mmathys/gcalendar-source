.class public Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/ChainInfo;


# instance fields
.field private zzbzx:Z

.field private zzbzy:Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzbzx:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z
    .locals 2

    const-string v0, "chain_name"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chain_id_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/ChainInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/ChainInfo;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->zza(Lcom/google/android/gms/reminders/model/ChainInfo;Lcom/google/android/gms/reminders/model/ChainInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzGj()Lcom/google/android/gms/reminders/model/ChainInfo;

    move-result-object v0

    return-object v0
.end method

.method public getChainId()Lcom/google/android/gms/reminders/model/FeatureIdProto;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzbzx:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzbzx:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzamq:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "chain_id_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzbzy:Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzbzy:Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzamp:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "chain_id_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzbzy:Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;

    goto :goto_0
.end method

.method public getChainName()Ljava/lang/String;
    .locals 1

    const-string v0, "chain_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->zza(Lcom/google/android/gms/reminders/model/ChainInfo;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/ChainInfoEntity;-><init>(Lcom/google/android/gms/reminders/model/ChainInfo;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGj()Lcom/google/android/gms/reminders/model/ChainInfo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/ChainInfoEntity;-><init>(Lcom/google/android/gms/reminders/model/ChainInfo;)V

    return-object v0
.end method
