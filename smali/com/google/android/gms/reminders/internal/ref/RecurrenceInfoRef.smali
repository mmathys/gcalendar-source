.class public Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/RecurrenceInfo;


# instance fields
.field private zzbzP:Z

.field private zzbzQ:Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzbzP:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "recurrence_id"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "recurrence_master"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "recurrence_exceptional"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zza(Lcom/google/android/gms/reminders/model/RecurrenceInfo;Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzGs()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getExceptional()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "recurrence_exceptional"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getMaster()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "recurrence_master"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzbzP:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzbzP:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzbzQ:Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzbzQ:Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzbzQ:Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;

    goto :goto_0
.end method

.method public getRecurrenceId()Ljava/lang/String;
    .locals 1

    const-string v0, "recurrence_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zza(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGs()Lcom/google/android/gms/reminders/model/RecurrenceInfo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)V

    return-object v0
.end method
