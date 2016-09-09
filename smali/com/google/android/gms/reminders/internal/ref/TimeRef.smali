.class public Lcom/google/android/gms/reminders/internal/ref/TimeRef;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/Time;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z
    .locals 1

    const-string v0, "hour"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "minute"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "second"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/Time;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/Time;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/TimeEntity;->zza(Lcom/google/android/gms/reminders/model/Time;Lcom/google/android/gms/reminders/model/Time;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;->zzGx()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    return-object v0
.end method

.method public getHour()Ljava/lang/Integer;
    .locals 1

    const-string v0, "hour"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMinute()Ljava/lang/Integer;
    .locals 1

    const-string v0, "minute"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSecond()Ljava/lang/Integer;
    .locals 1

    const-string v0, "second"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/TimeEntity;->zzc(Lcom/google/android/gms/reminders/model/Time;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/TimeEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/TimeEntity;-><init>(Lcom/google/android/gms/reminders/model/Time;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/reminders/model/TimeEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGx()Lcom/google/android/gms/reminders/model/Time;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/TimeEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/TimeEntity;-><init>(Lcom/google/android/gms/reminders/model/Time;)V

    return-object v0
.end method
