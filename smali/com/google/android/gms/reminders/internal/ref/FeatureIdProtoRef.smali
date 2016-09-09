.class public Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/FeatureIdProto;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z
    .locals 1

    const-string v0, "cell_id"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fprint"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/FeatureIdProto;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/FeatureIdProto;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;->zza(Lcom/google/android/gms/reminders/model/FeatureIdProto;Lcom/google/android/gms/reminders/model/FeatureIdProto;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;->zzGn()Lcom/google/android/gms/reminders/model/FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public getCellId()Ljava/lang/Long;
    .locals 1

    const-string v0, "cell_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getFprint()Ljava/lang/Long;
    .locals 1

    const-string v0, "fprint"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/FeatureIdProtoRef;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;->zza(Lcom/google/android/gms/reminders/model/FeatureIdProto;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;-><init>(Lcom/google/android/gms/reminders/model/FeatureIdProto;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGn()Lcom/google/android/gms/reminders/model/FeatureIdProto;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;-><init>(Lcom/google/android/gms/reminders/model/FeatureIdProto;)V

    return-object v0
.end method
