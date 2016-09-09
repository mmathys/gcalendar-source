.class public Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/RecurrenceStart;


# instance fields
.field private zzbAd:Z

.field private zzbAe:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zzbAd:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recurrence_start_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/RecurrenceStart;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/RecurrenceStart;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->zza(Lcom/google/android/gms/reminders/model/RecurrenceStart;Lcom/google/android/gms/reminders/model/RecurrenceStart;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zzGu()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v0

    return-object v0
.end method

.method public getStartDateTime()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zzbAd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zzbAd:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zzamq:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "recurrence_start_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zzbAe:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zzbAe:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zzamp:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "recurrence_start_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zzbAe:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->zza(Lcom/google/android/gms/reminders/model/RecurrenceStart;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceStart;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGu()Lcom/google/android/gms/reminders/model/RecurrenceStart;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceStart;)V

    return-object v0
.end method
