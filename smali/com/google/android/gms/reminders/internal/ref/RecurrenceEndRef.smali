.class public Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/RecurrenceEnd;


# instance fields
.field private zzbzL:Z

.field private zzbzM:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

.field private zzbzN:Z

.field private zzbzO:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbzL:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbzN:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recurrence_end_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "recurrence_end_num_occurrences"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "recurrence_end_auto_renew"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recurrence_end_auto_renew_until_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zza(Lcom/google/android/gms/reminders/model/RecurrenceEnd;Lcom/google/android/gms/reminders/model/RecurrenceEnd;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzGr()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRenew()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "recurrence_end_auto_renew"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRenewUntil()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbzN:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbzN:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzamq:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "recurrence_end_auto_renew_until_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbzO:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbzO:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzamp:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "recurrence_end_auto_renew_until_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbzO:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    goto :goto_0
.end method

.method public getEndDateTime()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbzL:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbzL:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzamq:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "recurrence_end_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbzM:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbzM:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzamp:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "recurrence_end_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzbzM:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    goto :goto_0
.end method

.method public getNumOccurrences()Ljava/lang/Integer;
    .locals 1

    const-string v0, "recurrence_end_num_occurrences"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zza(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGr()Lcom/google/android/gms/reminders/model/RecurrenceEnd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)V

    return-object v0
.end method
