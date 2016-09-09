.class public Lcom/google/android/calendar/api/HabitInstanceImpl;
.super Ljava/lang/Object;
.source "HabitInstanceImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/HabitInstance;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/HabitInstanceImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mParentDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

.field private final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/calendar/api/HabitInstanceImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/HabitInstanceImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/HabitInstanceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/google/android/calendar/api/HabitDescriptor;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitDescriptor;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/calendar/api/HabitUtil;->intToHabitInstanceStatus(I)I

    move-result v1

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/api/HabitInstanceImpl;-><init>(Lcom/google/android/calendar/api/HabitDescriptor;I)V

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/google/android/calendar/api/HabitDescriptor;I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitDescriptor;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceImpl;->mParentDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 17
    iput p2, p0, Lcom/google/android/calendar/api/HabitInstanceImpl;->mStatus:I

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getHabitParentDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceImpl;->mParentDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/calendar/api/HabitInstanceImpl;->mStatus:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceImpl;->mParentDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget v0, p0, Lcom/google/android/calendar/api/HabitInstanceImpl;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    return-void
.end method
