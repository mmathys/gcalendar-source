.class public Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;
.super Ljava/lang/Object;
.source "HabitInstanceModificationsImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/HabitInstanceModifications;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mOriginal:Lcom/google/android/calendar/api/HabitInstance;

.field private final mParentDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

.field private mStatus:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mStatus:Lcom/google/android/calendar/api/FieldModification;

    .line 33
    const-class v0, Lcom/google/android/calendar/api/HabitInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitInstance;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/HabitInstance;

    .line 34
    const-class v0, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitDescriptor;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mParentDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 36
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitUtil;->intToHabitInstanceStatus(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->setStatus(I)Lcom/google/android/calendar/api/HabitInstanceModifications;

    .line 39
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/HabitInstanceModificationsImpl$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/calendar/api/HabitInstance;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mStatus:Lcom/google/android/calendar/api/FieldModification;

    .line 22
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitInstance;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/HabitInstance;

    .line 23
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/HabitInstance;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitInstance;->getHabitParentDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mParentDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getHabitParentDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mParentDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->isStatusModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mStatus:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitUtil;->intToHabitInstanceStatus(I)I

    move-result v0

    .line 67
    :goto_0
    return v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/HabitInstance;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/HabitInstance;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitInstance;->getStatus()I

    move-result v0

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->isStatusModified()Z

    move-result v0

    return v0
.end method

.method public isStatusModified()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mStatus:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public setStatus(I)Lcom/google/android/calendar/api/HabitInstanceModifications;
    .locals 1

    .prologue
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mStatus:Lcom/google/android/calendar/api/FieldModification;

    .line 61
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/HabitInstance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->mParentDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->isStatusModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->isStatusModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;->getStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    :cond_0
    return-void
.end method
