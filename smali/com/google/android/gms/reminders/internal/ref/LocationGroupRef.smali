.class public Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/LocationGroup;


# instance fields
.field private zzbzD:Z

.field private zzbzE:Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;

.field private zzbzF:Z

.field private zzbzG:Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbzD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbzF:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z
    .locals 1

    const-string v0, "location_query"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "location_query_type"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/LocationGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/LocationGroup;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zza(Lcom/google/android/gms/reminders/model/LocationGroup;Lcom/google/android/gms/reminders/model/LocationGroup;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzGo()Lcom/google/android/gms/reminders/model/LocationGroup;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryInfo()Lcom/google/android/gms/reminders/model/CategoryInfo;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbzF:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbzF:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbzG:Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbzG:Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbzG:Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;

    goto :goto_0
.end method

.method public getChainInfo()Lcom/google/android/gms/reminders/model/ChainInfo;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbzD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbzD:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbzE:Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbzE:Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzbzE:Lcom/google/android/gms/reminders/internal/ref/ChainInfoRef;

    goto :goto_0
.end method

.method public getLocationQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "location_query"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationQueryType()Ljava/lang/Integer;
    .locals 1

    const-string v0, "location_query_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zza(Lcom/google/android/gms/reminders/model/LocationGroup;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/LocationGroupEntity;-><init>(Lcom/google/android/gms/reminders/model/LocationGroup;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGo()Lcom/google/android/gms/reminders/model/LocationGroup;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/LocationGroupEntity;-><init>(Lcom/google/android/gms/reminders/model/LocationGroup;)V

    return-object v0
.end method
