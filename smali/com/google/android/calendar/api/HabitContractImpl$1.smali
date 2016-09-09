.class final Lcom/google/android/calendar/api/HabitContractImpl$1;
.super Ljava/lang/Object;
.source "HabitContractImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/HabitContractImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/calendar/api/HabitContract;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/api/HabitContract;
    .locals 4

    .prologue
    .line 452
    new-instance v0, Lcom/google/android/calendar/api/HabitContractImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/HabitContractImpl;-><init>(Lcom/google/android/calendar/api/HabitContractImpl$1;)V

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/google/android/calendar/api/HabitContractImpl;->mDurationMinutes:I
    invoke-static {v0, v1}, Lcom/google/android/calendar/api/HabitContractImpl;->access$302(Lcom/google/android/calendar/api/HabitContractImpl;I)I

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/calendar/api/HabitUtil;->checkInterval(I)I

    move-result v1

    # setter for: Lcom/google/android/calendar/api/HabitContractImpl;->mInterval:I
    invoke-static {v0, v1}, Lcom/google/android/calendar/api/HabitContractImpl;->access$402(Lcom/google/android/calendar/api/HabitContractImpl;I)I

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/google/android/calendar/api/HabitContractImpl;->mNumInstancesPerInterval:I
    invoke-static {v0, v1}, Lcom/google/android/calendar/api/HabitContractImpl;->access$502(Lcom/google/android/calendar/api/HabitContractImpl;I)I

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/google/android/calendar/api/HabitContractImpl;->mDailyPatternBitmask:I
    invoke-static {v0, v1}, Lcom/google/android/calendar/api/HabitContractImpl;->access$602(Lcom/google/android/calendar/api/HabitContractImpl;I)I

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/google/android/calendar/api/HabitContractImpl;->mUntilMillisUtc:J
    invoke-static {v0, v2, v3}, Lcom/google/android/calendar/api/HabitContractImpl;->access$702(Lcom/google/android/calendar/api/HabitContractImpl;J)J

    .line 458
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/HabitContractImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/api/HabitContract;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/calendar/api/HabitContract;
    .locals 1

    .prologue
    .line 463
    new-array v0, p1, [Lcom/google/android/calendar/api/HabitContract;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/HabitContractImpl$1;->newArray(I)[Lcom/google/android/calendar/api/HabitContract;

    move-result-object v0

    return-object v0
.end method
