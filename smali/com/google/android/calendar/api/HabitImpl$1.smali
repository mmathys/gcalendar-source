.class final Lcom/google/android/calendar/api/HabitImpl$1;
.super Ljava/lang/Object;
.source "HabitImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/HabitImpl;
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
        "Lcom/google/android/calendar/api/HabitImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/api/HabitImpl;
    .locals 10

    .prologue
    .line 512
    new-instance v0, Lcom/google/android/calendar/api/HabitImpl;

    const-class v1, Lcom/google/android/calendar/api/HabitDescriptor;

    .line 513
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/api/HabitDescriptor;

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 516
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/calendar/api/ColorDescriptor;

    const-class v5, Lcom/google/android/calendar/api/HabitContract;

    .line 517
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/calendar/api/HabitContract;

    const-class v6, Lcom/google/android/calendar/api/HabitReminders;

    .line 518
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/calendar/api/HabitReminders;

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/calendar/api/HabitUtil;->checkType(I)I

    move-result v7

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/calendar/api/HabitUtil;->checkDeletionStatus(I)I

    move-result v8

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-static {v9}, Lcom/google/android/calendar/api/HabitUtil;->checkVisibility(I)I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/calendar/api/HabitImpl;-><init>(Lcom/google/android/calendar/api/HabitDescriptor;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/api/ColorDescriptor;Lcom/google/android/calendar/api/HabitContract;Lcom/google/android/calendar/api/HabitReminders;III)V

    .line 512
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/HabitImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/api/HabitImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/calendar/api/HabitImpl;
    .locals 1

    .prologue
    .line 526
    new-array v0, p1, [Lcom/google/android/calendar/api/HabitImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/HabitImpl$1;->newArray(I)[Lcom/google/android/calendar/api/HabitImpl;

    move-result-object v0

    return-object v0
.end method
