.class public Lcom/google/android/gms/reminders/model/Recurrence$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/Recurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbBr:Ljava/lang/Integer;

.field private zzbBs:Ljava/lang/Integer;

.field private zzbBt:Lcom/google/android/gms/reminders/model/RecurrenceStart;

.field private zzbBu:Lcom/google/android/gms/reminders/model/RecurrenceEnd;

.field private zzbBv:Lcom/google/android/gms/reminders/model/DailyPattern;

.field private zzbBw:Lcom/google/android/gms/reminders/model/WeeklyPattern;

.field private zzbBx:Lcom/google/android/gms/reminders/model/MonthlyPattern;

.field private zzbBy:Lcom/google/android/gms/reminders/model/YearlyPattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/Recurrence;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getFrequency()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBr:Ljava/lang/Integer;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getEvery()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBs:Ljava/lang/Integer;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceStart()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBt:Lcom/google/android/gms/reminders/model/RecurrenceStart;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBu:Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getDailyPattern()Lcom/google/android/gms/reminders/model/DailyPattern;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBv:Lcom/google/android/gms/reminders/model/DailyPattern;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getWeeklyPattern()Lcom/google/android/gms/reminders/model/WeeklyPattern;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBw:Lcom/google/android/gms/reminders/model/WeeklyPattern;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBx:Lcom/google/android/gms/reminders/model/MonthlyPattern;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getYearlyPattern()Lcom/google/android/gms/reminders/model/YearlyPattern;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_5
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBy:Lcom/google/android/gms/reminders/model/YearlyPattern;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceStart()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceStart;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getDailyPattern()Lcom/google/android/gms/reminders/model/DailyPattern;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/DailyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/DailyPattern;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getWeeklyPattern()Lcom/google/android/gms/reminders/model/WeeklyPattern;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/WeeklyPattern;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/MonthlyPattern;)V

    goto :goto_4

    :cond_5
    new-instance v1, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getYearlyPattern()Lcom/google/android/gms/reminders/model/YearlyPattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/YearlyPattern;)V

    goto :goto_5
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/Recurrence;
    .locals 10

    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBr:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBs:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBt:Lcom/google/android/gms/reminders/model/RecurrenceStart;

    iget-object v4, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBu:Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    iget-object v5, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBv:Lcom/google/android/gms/reminders/model/DailyPattern;

    iget-object v6, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBw:Lcom/google/android/gms/reminders/model/WeeklyPattern;

    iget-object v7, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBx:Lcom/google/android/gms/reminders/model/MonthlyPattern;

    iget-object v8, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBy:Lcom/google/android/gms/reminders/model/YearlyPattern;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/RecurrenceStart;Lcom/google/android/gms/reminders/model/RecurrenceEnd;Lcom/google/android/gms/reminders/model/DailyPattern;Lcom/google/android/gms/reminders/model/WeeklyPattern;Lcom/google/android/gms/reminders/model/MonthlyPattern;Lcom/google/android/gms/reminders/model/YearlyPattern;Z)V

    return-object v0
.end method

.method public setDailyPattern(Lcom/google/android/gms/reminders/model/DailyPattern;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DailyPattern;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/DailyPattern;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBv:Lcom/google/android/gms/reminders/model/DailyPattern;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEvery(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBs:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFrequency(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    const-string v1, "Invalid constant for Frequency. Use value in ModelConstants"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBr:Ljava/lang/Integer;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMonthlyPattern(Lcom/google/android/gms/reminders/model/MonthlyPattern;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/MonthlyPattern;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBx:Lcom/google/android/gms/reminders/model/MonthlyPattern;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRecurrenceEnd(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBu:Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRecurrenceStart(Lcom/google/android/gms/reminders/model/RecurrenceStart;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceStart;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/RecurrenceStart;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBt:Lcom/google/android/gms/reminders/model/RecurrenceStart;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWeeklyPattern(Lcom/google/android/gms/reminders/model/WeeklyPattern;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/WeeklyPattern;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/WeeklyPattern;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBw:Lcom/google/android/gms/reminders/model/WeeklyPattern;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setYearlyPattern(Lcom/google/android/gms/reminders/model/YearlyPattern;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/YearlyPattern;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/YearlyPattern;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->zzbBy:Lcom/google/android/gms/reminders/model/YearlyPattern;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
