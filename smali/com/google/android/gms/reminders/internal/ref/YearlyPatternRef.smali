.class public Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/YearlyPattern;


# instance fields
.field private zzbAa:Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;

.field private zzbzZ:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzbzZ:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yearly_pattern_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yearly_pattern_year_month"

    invoke-static {p3, v0}, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/YearlyPattern;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/YearlyPattern;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zza(Lcom/google/android/gms/reminders/model/YearlyPattern;Lcom/google/android/gms/reminders/model/YearlyPattern;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzGz()Lcom/google/android/gms/reminders/model/YearlyPattern;

    move-result-object v0

    return-object v0
.end method

.method public getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzbzZ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzbzZ:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzamq:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "yearly_pattern_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzbAa:Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzbAa:Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzamp:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "yearly_pattern_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzbAa:Lcom/google/android/gms/reminders/internal/ref/MonthlyPatternRef;

    goto :goto_0
.end method

.method public getYearMonth()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "yearly_pattern_year_month"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/YearlyPatternRef;->zzgT(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zza(Lcom/google/android/gms/reminders/model/YearlyPattern;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/YearlyPattern;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGz()Lcom/google/android/gms/reminders/model/YearlyPattern;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/YearlyPattern;)V

    return-object v0
.end method
