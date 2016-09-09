.class public Lcom/google/android/calendar/api/HabitContractImpl;
.super Ljava/lang/Object;
.source "HabitContractImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/calendar/api/HabitContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/HabitContractImpl$Modification;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/HabitContract;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDailyPatternBitmask:I

.field private mDurationMinutes:I

.field private mInterval:I

.field private mNumInstancesPerInterval:I

.field private mUntilMillisUtc:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 449
    new-instance v0, Lcom/google/android/calendar/api/HabitContractImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/HabitContractImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/HabitContractImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mDurationMinutes:I

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mInterval:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mNumInstancesPerInterval:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/api/HabitContractImpl$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/calendar/api/HabitContractImpl;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/api/HabitContract;)I
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lcom/google/android/calendar/api/HabitContractImpl;->calculateBitmask(Lcom/google/android/calendar/api/HabitContract;)I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/calendar/api/HabitContractImpl;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mDurationMinutes:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/calendar/api/HabitContractImpl;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mInterval:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/calendar/api/HabitContractImpl;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mNumInstancesPerInterval:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/android/calendar/api/HabitContractImpl;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mDailyPatternBitmask:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/calendar/api/HabitContractImpl;J)J
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mUntilMillisUtc:J

    return-wide p1
.end method

.method private static calculateBitmask(Lcom/google/android/calendar/api/HabitContract;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 414
    .line 415
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isMorningPreferable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/lit8 v2, v0, 0x0

    .line 416
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isAfternoonPreferable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v2

    .line 417
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isEveningPreferable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    or-int/2addr v0, v1

    .line 414
    return v0

    :cond_1
    move v0, v1

    .line 415
    goto :goto_0

    :cond_2
    move v0, v1

    .line 416
    goto :goto_1
.end method

.method private static hashCode(Lcom/google/android/calendar/api/HabitContract;)I
    .locals 4

    .prologue
    .line 421
    .line 423
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->getDurationMinutes()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 424
    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->getInterval()I

    move-result v1

    add-int/2addr v0, v1

    .line 425
    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->getNumInstancesPerInterval()I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    mul-int/lit8 v0, v0, 0x1f

    invoke-static {p0}, Lcom/google/android/calendar/api/HabitContractImpl;->calculateBitmask(Lcom/google/android/calendar/api/HabitContract;)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->getUntilMillisUtc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 429
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public getDurationMinutes()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mDurationMinutes:I

    return v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mInterval:I

    return v0
.end method

.method public getNumInstancesPerInterval()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mNumInstancesPerInterval:I

    return v0
.end method

.method public getUntilMillisUtc()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mUntilMillisUtc:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    invoke-static {p0}, Lcom/google/android/calendar/api/HabitContractImpl;->hashCode(Lcom/google/android/calendar/api/HabitContract;)I

    move-result v0

    return v0
.end method

.method public isAfternoonPreferable()Z
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mDailyPatternBitmask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnyDayTimeAcceptable()Z
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mDailyPatternBitmask:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEveningPreferable()Z
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mDailyPatternBitmask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMorningPreferable()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mDailyPatternBitmask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 469
    iget v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mDurationMinutes:I

    iget v1, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mInterval:I

    iget v2, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mNumInstancesPerInterval:I

    iget v3, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mDailyPatternBitmask:I

    iget-wide v4, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mUntilMillisUtc:J

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xb4

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "HabitContractImpl{mDurationMinutes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", mInterval="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumInstancesPerInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDailyPatternBitmask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUntilMillisUtc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 442
    iget v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mDurationMinutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mNumInstancesPerInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mDailyPatternBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget-wide v0, p0, Lcom/google/android/calendar/api/HabitContractImpl;->mUntilMillisUtc:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 447
    return-void
.end method
