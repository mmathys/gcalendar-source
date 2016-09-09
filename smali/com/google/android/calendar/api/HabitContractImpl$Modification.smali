.class public Lcom/google/android/calendar/api/HabitContractImpl$Modification;
.super Ljava/lang/Object;
.source "HabitContractImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/HabitContractModifications;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/HabitContractImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Modification"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/HabitContractImpl$Modification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDailyPatternBitmask:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDurationMinutes:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInterval:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstancesPerInterval:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginal:Lcom/google/android/calendar/api/HabitContract;

.field private mUntilMillisUtc:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    new-instance v0, Lcom/google/android/calendar/api/HabitContractImpl$Modification$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    .line 90
    invoke-direct {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->modifyToDefaultValues()V

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    const-class v0, Lcom/google/android/calendar/api/Habit;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitContract;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    .line 379
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->clearModifications()V

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setDurationMinutes(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitUtil;->checkInterval(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 388
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setNumInstancesPerInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 391
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setDailyPatternBitmask(I)V

    .line 394
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setUntilMillisUtc(J)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 397
    :cond_4
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/HabitContractImpl$1;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/HabitContract;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitContract;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->clearModifications()V

    .line 96
    return-void
.end method

.method private getDailyPatternBitmask()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDailyPatternBitmask:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private isDailyPatternBitSet(I)Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDailyPatternBitmask:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private modifyToDefaultValues()V
    .locals 2

    .prologue
    .line 286
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDurationMinutes:Lcom/google/android/calendar/api/FieldModification;

    .line 287
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mInterval:Lcom/google/android/calendar/api/FieldModification;

    .line 288
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mNumInstancesPerInterval:Lcom/google/android/calendar/api/FieldModification;

    .line 289
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDailyPatternBitmask:Lcom/google/android/calendar/api/FieldModification;

    .line 290
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mUntilMillisUtc:Lcom/google/android/calendar/api/FieldModification;

    .line 291
    return-void
.end method

.method private setDailyPatternBit(IZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDailyPatternModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    if-nez v0, :cond_1

    move v0, v1

    .line 278
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 277
    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDailyPatternBitmask:Lcom/google/android/calendar/api/FieldModification;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDailyPatternBitmask:Lcom/google/android/calendar/api/FieldModification;

    .line 282
    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v0, v2

    if-eqz p2, :cond_2

    :goto_1
    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 281
    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDailyPatternBitmask:Lcom/google/android/calendar/api/FieldModification;

    .line 283
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    # invokes: Lcom/google/android/calendar/api/HabitContractImpl;->calculateBitmask(Lcom/google/android/calendar/api/HabitContract;)I
    invoke-static {v0}, Lcom/google/android/calendar/api/HabitContractImpl;->access$000(Lcom/google/android/calendar/api/HabitContract;)I

    move-result v0

    goto :goto_0

    :cond_2
    move p1, v1

    .line 282
    goto :goto_1
.end method

.method private setDailyPatternBitmask(I)V
    .locals 1

    .prologue
    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDailyPatternBitmask:Lcom/google/android/calendar/api/FieldModification;

    .line 269
    return-void
.end method


# virtual methods
.method public applyModifications(Lcom/google/android/calendar/api/HabitContractModifications;)V
    .locals 2

    .prologue
    .line 315
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->isDurationMinutesModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->getDurationMinutes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setDurationMinutes(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 318
    :cond_0
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->isNumInstancesPerIntervalModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->getNumInstancesPerInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setNumInstancesPerInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 321
    :cond_1
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->isUntilMillisUtcModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->getUntilMillisUtc()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setUntilMillisUtc(J)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 324
    :cond_2
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->isIntervalModified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->getInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 327
    :cond_3
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->isDailyPatternModified()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 328
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->isAnyDayTimeAcceptable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 329
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setAnyDayTimeAcceptable()Lcom/google/android/calendar/api/HabitContractModifications;

    .line 336
    :cond_4
    :goto_0
    return-void

    .line 331
    :cond_5
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->isMorningPreferable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setMorningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 332
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->isAfternoonPreferable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setAfternoonPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 333
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContractModifications;->isEveningPreferable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setEveningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    goto :goto_0
.end method

.method public clearModifications()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDurationMinutes:Lcom/google/android/calendar/api/FieldModification;

    .line 297
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mInterval:Lcom/google/android/calendar/api/FieldModification;

    .line 298
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mNumInstancesPerInterval:Lcom/google/android/calendar/api/FieldModification;

    .line 299
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDailyPatternBitmask:Lcom/google/android/calendar/api/FieldModification;

    .line 300
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mUntilMillisUtc:Lcom/google/android/calendar/api/FieldModification;

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->modifyToDefaultValues()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public getDurationMinutes()I
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDurationMinutesModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDurationMinutes:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->getDurationMinutes()I

    move-result v0

    goto :goto_0

    .line 122
    :cond_1
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isIntervalModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mInterval:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitUtil;->checkInterval(I)I

    move-result v0

    .line 140
    :goto_0
    return v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->getInterval()I

    move-result v0

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getNumInstancesPerInterval()I
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isNumInstancesPerIntervalModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mNumInstancesPerInterval:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->getNumInstancesPerInterval()I

    move-result v0

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getUntilMillisUtc()J
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isUntilMillisUtcModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mUntilMillisUtc:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 250
    :goto_0
    return-wide v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->getUntilMillisUtc()J

    move-result-wide v0

    goto :goto_0

    .line 254
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public isAfternoonPreferable()Z
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDailyPatternModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDailyPatternBitSet(I)Z

    move-result v0

    .line 214
    :goto_0
    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->isAfternoonPreferable()Z

    move-result v0

    goto :goto_0

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnyDayTimeAcceptable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 184
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDailyPatternModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDailyPatternBitmask:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 184
    :goto_0
    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->isAnyDayTimeAcceptable()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 188
    goto :goto_0
.end method

.method public isDailyPatternModified()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDailyPatternBitmask:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isDurationMinutesModified()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDurationMinutes:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isEveningPreferable()Z
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDailyPatternModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDailyPatternBitSet(I)Z

    move-result v0

    .line 230
    :goto_0
    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->isEveningPreferable()Z

    move-result v0

    goto :goto_0

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIntervalModified()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mInterval:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDurationMinutesModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isIntervalModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isNumInstancesPerIntervalModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDailyPatternModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isUntilMillisUtcModified()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    .line 310
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMorningPreferable()Z
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDailyPatternModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDailyPatternBitSet(I)Z

    move-result v0

    .line 199
    :goto_0
    return v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->isMorningPreferable()Z

    move-result v0

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumInstancesPerIntervalModified()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mNumInstancesPerInterval:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isUntilMillisUtcModified()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mUntilMillisUtc:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public setAfternoonPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setDailyPatternBit(IZ)V

    .line 224
    return-object p0
.end method

.method public setAnyDayTimeAcceptable()Lcom/google/android/calendar/api/HabitContractModifications;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDailyPatternBitmask:Lcom/google/android/calendar/api/FieldModification;

    .line 194
    return-object p0
.end method

.method public setDurationMinutes(I)Lcom/google/android/calendar/api/HabitContractModifications;
    .locals 1

    .prologue
    .line 128
    if-ltz p1, :cond_0

    const/16 v0, 0x2760

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mDurationMinutes:Lcom/google/android/calendar/api/FieldModification;

    .line 130
    return-object p0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEveningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setDailyPatternBit(IZ)V

    .line 240
    return-object p0
.end method

.method public setInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;
    .locals 1

    .prologue
    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mInterval:Lcom/google/android/calendar/api/FieldModification;

    .line 150
    return-object p0
.end method

.method public setMorningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->setDailyPatternBit(IZ)V

    .line 209
    return-object p0
.end method

.method public setNumInstancesPerInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;
    .locals 1

    .prologue
    .line 170
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    .line 171
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mNumInstancesPerInterval:Lcom/google/android/calendar/api/FieldModification;

    .line 174
    return-object p0

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUntilMillisUtc(J)Lcom/google/android/calendar/api/HabitContractModifications;
    .locals 1

    .prologue
    .line 259
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mUntilMillisUtc:Lcom/google/android/calendar/api/FieldModification;

    .line 260
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/HabitContract;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 351
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDurationMinutesModified()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 352
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDurationMinutesModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->getDurationMinutes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isIntervalModified()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 357
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isIntervalModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->getInterval()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isNumInstancesPerIntervalModified()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 362
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isNumInstancesPerIntervalModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->getNumInstancesPerInterval()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDailyPatternModified()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 367
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isDailyPatternModified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    invoke-direct {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->getDailyPatternBitmask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isUntilMillisUtcModified()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 372
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->isUntilMillisUtcModified()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;->getUntilMillisUtc()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 375
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 351
    goto :goto_0

    :cond_6
    move v0, v2

    .line 356
    goto :goto_1

    :cond_7
    move v0, v2

    .line 361
    goto :goto_2

    :cond_8
    move v0, v2

    .line 366
    goto :goto_3

    :cond_9
    move v1, v2

    .line 371
    goto :goto_4
.end method
