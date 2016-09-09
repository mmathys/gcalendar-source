.class public Lcom/google/android/gms/reminders/model/RecurrenceEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/Recurrence;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/RecurrenceEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbBF:Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;

.field private final zzbBG:Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;

.field private final zzbBH:Lcom/google/android/gms/reminders/model/DailyPatternEntity;

.field private final zzbBI:Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;

.field private final zzbBJ:Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

.field private final zzbBK:Lcom/google/android/gms/reminders/model/YearlyPatternEntity;

.field private final zzbBr:Ljava/lang/Integer;

.field private final zzbBs:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;Lcom/google/android/gms/reminders/model/DailyPatternEntity;Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;Lcom/google/android/gms/reminders/model/YearlyPatternEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBr:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBs:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBF:Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;

    iput-object p5, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBG:Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;

    iput-object p6, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBH:Lcom/google/android/gms/reminders/model/DailyPatternEntity;

    iput-object p7, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBI:Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;

    iput-object p8, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBJ:Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    iput-object p9, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBK:Lcom/google/android/gms/reminders/model/YearlyPatternEntity;

    iput p1, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/Recurrence;)V
    .locals 10

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getFrequency()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getEvery()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceStart()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getDailyPattern()Lcom/google/android/gms/reminders/model/DailyPattern;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getWeeklyPattern()Lcom/google/android/gms/reminders/model/WeeklyPattern;

    move-result-object v6

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v7

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getYearlyPattern()Lcom/google/android/gms/reminders/model/YearlyPattern;

    move-result-object v8

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/RecurrenceStart;Lcom/google/android/gms/reminders/model/RecurrenceEnd;Lcom/google/android/gms/reminders/model/DailyPattern;Lcom/google/android/gms/reminders/model/WeeklyPattern;Lcom/google/android/gms/reminders/model/MonthlyPattern;Lcom/google/android/gms/reminders/model/YearlyPattern;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/RecurrenceStart;Lcom/google/android/gms/reminders/model/RecurrenceEnd;Lcom/google/android/gms/reminders/model/DailyPattern;Lcom/google/android/gms/reminders/model/WeeklyPattern;Lcom/google/android/gms/reminders/model/MonthlyPattern;Lcom/google/android/gms/reminders/model/YearlyPattern;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBr:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBs:Ljava/lang/Integer;

    if-eqz p9, :cond_0

    check-cast p3, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBF:Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;

    check-cast p4, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBG:Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;

    check-cast p5, Lcom/google/android/gms/reminders/model/DailyPatternEntity;

    iput-object p5, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBH:Lcom/google/android/gms/reminders/model/DailyPatternEntity;

    check-cast p6, Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;

    iput-object p6, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBI:Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;

    check-cast p7, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    iput-object p7, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBJ:Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    check-cast p8, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;

    iput-object p8, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBK:Lcom/google/android/gms/reminders/model/YearlyPatternEntity;

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBF:Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;

    if-nez p4, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBG:Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;

    if-nez p5, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBH:Lcom/google/android/gms/reminders/model/DailyPatternEntity;

    if-nez p6, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBI:Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;

    if-nez p7, :cond_5

    move-object v0, v1

    :goto_5
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBJ:Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    if-nez p8, :cond_6

    :goto_6
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBK:Lcom/google/android/gms/reminders/model/YearlyPatternEntity;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;

    invoke-direct {v0, p3}, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceStart;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;

    invoke-direct {v0, p4}, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;

    invoke-direct {v0, p5}, Lcom/google/android/gms/reminders/model/DailyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/DailyPattern;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;

    invoke-direct {v0, p6}, Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/WeeklyPattern;)V

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    invoke-direct {v0, p7}, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/MonthlyPattern;)V

    goto :goto_5

    :cond_6
    new-instance v1, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;

    invoke-direct {v1, p8}, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/YearlyPattern;)V

    goto :goto_6
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/Recurrence;Lcom/google/android/gms/reminders/model/Recurrence;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getFrequency()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getFrequency()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getEvery()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getEvery()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceStart()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceStart()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getDailyPattern()Lcom/google/android/gms/reminders/model/DailyPattern;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getDailyPattern()Lcom/google/android/gms/reminders/model/DailyPattern;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getWeeklyPattern()Lcom/google/android/gms/reminders/model/WeeklyPattern;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getWeeklyPattern()Lcom/google/android/gms/reminders/model/WeeklyPattern;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getYearlyPattern()Lcom/google/android/gms/reminders/model/YearlyPattern;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getYearlyPattern()Lcom/google/android/gms/reminders/model/YearlyPattern;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzb(Lcom/google/android/gms/reminders/model/Recurrence;)I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getFrequency()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getEvery()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceStart()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getDailyPattern()Lcom/google/android/gms/reminders/model/DailyPattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getWeeklyPattern()Lcom/google/android/gms/reminders/model/WeeklyPattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getYearlyPattern()Lcom/google/android/gms/reminders/model/YearlyPattern;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

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

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzGt()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v0

    return-object v0
.end method

.method public getDailyPattern()Lcom/google/android/gms/reminders/model/DailyPattern;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBH:Lcom/google/android/gms/reminders/model/DailyPatternEntity;

    return-object v0
.end method

.method public getEvery()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBs:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFrequency()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBr:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBJ:Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    return-object v0
.end method

.method public getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBG:Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;

    return-object v0
.end method

.method public getRecurrenceStart()Lcom/google/android/gms/reminders/model/RecurrenceStart;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBF:Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;

    return-object v0
.end method

.method public getWeeklyPattern()Lcom/google/android/gms/reminders/model/WeeklyPattern;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBI:Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;

    return-object v0
.end method

.method public getYearlyPattern()Lcom/google/android/gms/reminders/model/YearlyPattern;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzbBK:Lcom/google/android/gms/reminders/model/YearlyPatternEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->zzb(Lcom/google/android/gms/reminders/model/Recurrence;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzl;->zza(Lcom/google/android/gms/reminders/model/RecurrenceEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGt()Lcom/google/android/gms/reminders/model/Recurrence;
    .locals 0

    return-object p0
.end method
