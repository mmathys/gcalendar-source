.class public Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/DateTime;


# instance fields
.field private zzbzB:Z

.field private zzbzC:Lcom/google/android/gms/reminders/internal/ref/TimeRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzbzB:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z
    .locals 1

    const-string v0, "year"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "month"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "day"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "period"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "date_range"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "absolute_time_ms"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unspecified_future_time"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "all_day"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/DateTime;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/DateTime;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zza(Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/DateTime;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzGl()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getAbsoluteTimeMs()Ljava/lang/Long;
    .locals 1

    const-string v0, "absolute_time_ms"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getAllDay()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "all_day"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDateRange()Ljava/lang/Integer;
    .locals 1

    const-string v0, "date_range"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDay()Ljava/lang/Integer;
    .locals 1

    const-string v0, "day"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMonth()Ljava/lang/Integer;
    .locals 1

    const-string v0, "month"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPeriod()Ljava/lang/Integer;
    .locals 1

    const-string v0, "period"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Lcom/google/android/gms/reminders/model/Time;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzbzB:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzbzB:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzbzC:Lcom/google/android/gms/reminders/internal/ref/TimeRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzbzC:Lcom/google/android/gms/reminders/internal/ref/TimeRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/TimeRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/TimeRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzbzC:Lcom/google/android/gms/reminders/internal/ref/TimeRef;

    goto :goto_0
.end method

.method public getUnspecifiedFutureTime()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "unspecified_future_time"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getYear()Ljava/lang/Integer;
    .locals 1

    const-string v0, "year"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzb(Lcom/google/android/gms/reminders/model/DateTime;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/reminders/model/DateTimeEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGl()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    return-object v0
.end method
