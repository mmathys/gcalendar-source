.class public Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/Recurrence;


# instance fields
.field private zzbAa:Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;

.field private zzbAb:Z

.field private zzbAc:Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;

.field private zzbzR:Z

.field private zzbzS:Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;

.field private zzbzT:Z

.field private zzbzU:Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;

.field private zzbzV:Z

.field private zzbzW:Lcom/google/android/gms/reminders/internal/ref/DailyPatternRef;

.field private zzbzX:Z

.field private zzbzY:Lcom/google/android/gms/reminders/internal/ref/WeeklyPatternRef;

.field private zzbzZ:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzR:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzT:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzV:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzX:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzZ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAb:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z
    .locals 1

    const-string v0, "recurrence_frequency"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "recurrence_every"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/DailyPatternRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/WeeklyPatternRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/Recurrence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/Recurrence;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zza(Lcom/google/android/gms/reminders/model/Recurrence;Lcom/google/android/gms/reminders/model/Recurrence;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzGt()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v0

    return-object v0
.end method

.method public getDailyPattern()Lcom/google/android/gms/reminders/model/DailyPattern;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzV:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzV:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/DailyPatternRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzW:Lcom/google/android/gms/reminders/internal/ref/DailyPatternRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzW:Lcom/google/android/gms/reminders/internal/ref/DailyPatternRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/DailyPatternRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/DailyPatternRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzW:Lcom/google/android/gms/reminders/internal/ref/DailyPatternRef;

    goto :goto_0
.end method

.method public getEvery()Ljava/lang/Integer;
    .locals 1

    const-string v0, "recurrence_every"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFrequency()Ljava/lang/Integer;
    .locals 1

    const-string v0, "recurrence_frequency"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzZ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzZ:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAa:Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAa:Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAa:Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;

    goto :goto_0
.end method

.method public getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzT:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzT:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzU:Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzU:Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzU:Lcom/google/android/gms/reminders/internal/ref/RecurrenceEndRef;

    goto :goto_0
.end method

.method public getRecurrenceStart()Lcom/google/android/gms/reminders/model/RecurrenceStart;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzR:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzR:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzS:Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzS:Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzS:Lcom/google/android/gms/reminders/internal/ref/RecurrenceStartRef;

    goto :goto_0
.end method

.method public getWeeklyPattern()Lcom/google/android/gms/reminders/model/WeeklyPattern;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzX:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzX:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/WeeklyPatternRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzY:Lcom/google/android/gms/reminders/internal/ref/WeeklyPatternRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzY:Lcom/google/android/gms/reminders/internal/ref/WeeklyPatternRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/WeeklyPatternRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/WeeklyPatternRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbzY:Lcom/google/android/gms/reminders/internal/ref/WeeklyPatternRef;

    goto :goto_0
.end method

.method public getYearlyPattern()Lcom/google/android/gms/reminders/model/YearlyPattern;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAb:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAc:Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAc:Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceRef;->zzbAc:Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzb(Lcom/google/android/gms/reminders/model/Recurrence;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;-><init>(Lcom/google/android/gms/reminders/model/Recurrence;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGt()Lcom/google/android/gms/reminders/model/Recurrence;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;-><init>(Lcom/google/android/gms/reminders/model/Recurrence;)V

    return-object v0
.end method
