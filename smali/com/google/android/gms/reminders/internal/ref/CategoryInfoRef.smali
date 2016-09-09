.class public Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/CategoryInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z
    .locals 1

    const-string v0, "category_id"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "display_name"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/CategoryInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/CategoryInfo;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;->zza(Lcom/google/android/gms/reminders/model/CategoryInfo;Lcom/google/android/gms/reminders/model/CategoryInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;->zzGi()Lcom/google/android/gms/reminders/model/CategoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    const-string v0, "category_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/CategoryInfoRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;->zza(Lcom/google/android/gms/reminders/model/CategoryInfo;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;-><init>(Lcom/google/android/gms/reminders/model/CategoryInfo;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGi()Lcom/google/android/gms/reminders/model/CategoryInfo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;-><init>(Lcom/google/android/gms/reminders/model/CategoryInfo;)V

    return-object v0
.end method
