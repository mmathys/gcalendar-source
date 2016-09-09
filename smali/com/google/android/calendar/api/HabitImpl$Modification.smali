.class public Lcom/google/android/calendar/api/HabitImpl$Modification;
.super Ljava/lang/Object;
.source "HabitImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/HabitModifications;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/HabitImpl;
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
            "Lcom/google/android/calendar/api/HabitImpl$Modification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColorOverride:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Lcom/google/android/calendar/api/ColorDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletionStatus:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

.field private mFingerprint:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

.field private mHabitReminders:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Lcom/google/android/calendar/api/HabitReminders;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginal:Lcom/google/android/calendar/api/Habit;

.field private mSummary:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibility:Lcom/google/android/calendar/api/FieldModification;
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
    .line 475
    new-instance v0, Lcom/google/android/calendar/api/HabitImpl$Modification$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/HabitImpl$Modification$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/HabitImpl$Modification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mSummary:Lcom/google/android/calendar/api/FieldModification;

    .line 115
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mColorOverride:Lcom/google/android/calendar/api/FieldModification;

    .line 116
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mFingerprint:Lcom/google/android/calendar/api/FieldModification;

    .line 117
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDeletionStatus:Lcom/google/android/calendar/api/FieldModification;

    .line 119
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mHabitReminders:Lcom/google/android/calendar/api/FieldModification;

    .line 120
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mType:Lcom/google/android/calendar/api/FieldModification;

    .line 121
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mVisibility:Lcom/google/android/calendar/api/FieldModification;

    .line 442
    const-class v0, Lcom/google/android/calendar/api/Habit;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/Habit;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    .line 443
    const-class v0, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitDescriptor;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;

    .line 449
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setFingerprint(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;

    .line 452
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitUtil;->checkDeletionStatus(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setDeletionStatus(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 455
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitUtil;->checkType(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setType(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 458
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    .line 459
    const-class v0, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 460
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 459
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/HabitModifications;

    .line 462
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitUtil;->checkVisibility(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setVisibility(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 465
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    .line 466
    const-class v0, Lcom/google/android/calendar/api/HabitReminders;

    .line 467
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitReminders;

    .line 466
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setReminders(Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitModifications;

    .line 470
    :cond_6
    const-class v0, Lcom/google/android/calendar/api/HabitContractModifications;

    .line 471
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitContractModifications;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    .line 472
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/HabitImpl$1;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/HabitImpl$Modification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/Habit;)V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mSummary:Lcom/google/android/calendar/api/FieldModification;

    .line 115
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mColorOverride:Lcom/google/android/calendar/api/FieldModification;

    .line 116
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mFingerprint:Lcom/google/android/calendar/api/FieldModification;

    .line 117
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDeletionStatus:Lcom/google/android/calendar/api/FieldModification;

    .line 119
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mHabitReminders:Lcom/google/android/calendar/api/FieldModification;

    .line 120
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mType:Lcom/google/android/calendar/api/FieldModification;

    .line 121
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mVisibility:Lcom/google/android/calendar/api/FieldModification;

    .line 124
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/Habit;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    .line 125
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 126
    new-instance v0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;

    invoke-interface {p1}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;-><init>(Lcom/google/android/calendar/api/HabitContract;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V
    .locals 2

    .prologue
    .line 130
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/api/HabitImpl$Modification;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method constructor <init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mSummary:Lcom/google/android/calendar/api/FieldModification;

    .line 115
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mColorOverride:Lcom/google/android/calendar/api/FieldModification;

    .line 116
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mFingerprint:Lcom/google/android/calendar/api/FieldModification;

    .line 117
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDeletionStatus:Lcom/google/android/calendar/api/FieldModification;

    .line 119
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mHabitReminders:Lcom/google/android/calendar/api/FieldModification;

    .line 120
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mType:Lcom/google/android/calendar/api/FieldModification;

    .line 121
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mVisibility:Lcom/google/android/calendar/api/FieldModification;

    .line 134
    iput-object v2, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    .line 135
    if-nez p2, :cond_0

    .line 137
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/google/android/calendar/utils/Base32EncodingHelper;->encodeLowercaseNoPaddingBase32Hex([B)Ljava/lang/String;

    move-result-object p2

    .line 139
    :cond_0
    new-instance v0, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-direct {v0, p1, p2}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mType:Lcom/google/android/calendar/api/FieldModification;

    .line 142
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDeletionStatus:Lcom/google/android/calendar/api/FieldModification;

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mVisibility:Lcom/google/android/calendar/api/FieldModification;

    .line 144
    invoke-static {v2}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mColorOverride:Lcom/google/android/calendar/api/FieldModification;

    .line 145
    new-instance v0, Lcom/google/android/calendar/api/HabitContractImpl$Modification;

    invoke-direct {v0}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    .line 146
    return-void
.end method


# virtual methods
.method public applyModifications(Lcom/google/android/calendar/api/HabitModifications;)V
    .locals 2

    .prologue
    .line 352
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/api/HabitDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->switchCalendar(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/HabitDescriptor;

    .line 356
    :cond_0
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->isSummaryModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;

    .line 359
    :cond_1
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->isVisibilityModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setVisibility(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 362
    :cond_2
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->isRemindersModified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setReminders(Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitModifications;

    .line 365
    :cond_3
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->isColorOverrideModified()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/HabitModifications;

    .line 368
    :cond_4
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->isDeletionStatusModified()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 369
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getDeletionStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setDeletionStatus(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 371
    :cond_5
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->isTypeModified()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 372
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setType(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 374
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitContractModifications;->applyModifications(Lcom/google/android/calendar/api/HabitContractModifications;)V

    .line 375
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isColorOverrideModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mColorOverride:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 310
    :goto_0
    return-object v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContract()Lcom/google/android/calendar/api/HabitContract;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    return-object v0
.end method

.method public getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    return-object v0
.end method

.method public getDeletionStatus()I
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isDeletionStatusModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDeletionStatus:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitUtil;->checkDeletionStatus(I)I

    move-result v0

    .line 204
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getDeletionStatus()I

    move-result v0

    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isFingerprintModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mFingerprint:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    :goto_0
    return-object v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOriginal()Lcom/google/android/calendar/api/Habit;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    return-object v0
.end method

.method public getReminders()Lcom/google/android/calendar/api/HabitReminders;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isRemindersModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mHabitReminders:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitReminders;

    .line 340
    :goto_0
    return-object v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isSummaryModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mSummary:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    :goto_0
    return-object v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getSummary()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isTypeModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mType:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitUtil;->checkType(I)I

    move-result v0

    .line 245
    :goto_0
    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getType()I

    move-result v0

    goto :goto_0

    .line 249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isVisibilityModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mVisibility:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitUtil;->checkVisibility(I)I

    move-result v0

    .line 265
    :goto_0
    return v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getVisibility()I

    move-result v0

    goto :goto_0

    .line 269
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isColorOverrideModified()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mColorOverride:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isDeletionStatusModified()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDeletionStatus:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isFingerprintModified()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mFingerprint:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isDeletionStatusModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isFingerprintModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isTypeModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isVisibilityModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isSummaryModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isColorOverrideModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isRemindersModified()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    .line 381
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewHabit()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    if-nez v0, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    instance-of v0, v0, Lcom/google/android/calendar/api/HabitModifications;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->isNewHabit()Z

    move-result v0

    goto :goto_0

    .line 392
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemindersModified()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mHabitReminders:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isSummaryModified()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mSummary:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isTypeModified()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mType:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isVisibilityModified()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mVisibility:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/HabitModifications;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorDescriptor;->getType()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 302
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v2, v2, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 303
    invoke-static {p1}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mColorOverride:Lcom/google/android/calendar/api/FieldModification;

    .line 304
    return-object p0

    .line 302
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeletionStatus(I)Lcom/google/android/calendar/api/HabitModifications;
    .locals 1

    .prologue
    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDeletionStatus:Lcom/google/android/calendar/api/FieldModification;

    .line 199
    return-object p0
.end method

.method public setFingerprint(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;
    .locals 1

    .prologue
    .line 218
    invoke-static {p1}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mFingerprint:Lcom/google/android/calendar/api/FieldModification;

    .line 219
    return-object p0
.end method

.method public setReminders(Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitModifications;
    .locals 1

    .prologue
    .line 334
    invoke-static {p1}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mHabitReminders:Lcom/google/android/calendar/api/FieldModification;

    .line 335
    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;
    .locals 1

    .prologue
    .line 279
    invoke-static {p1}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mSummary:Lcom/google/android/calendar/api/FieldModification;

    .line 280
    return-object p0
.end method

.method public setType(I)Lcom/google/android/calendar/api/HabitModifications;
    .locals 1

    .prologue
    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mType:Lcom/google/android/calendar/api/FieldModification;

    .line 240
    return-object p0
.end method

.method public setVisibility(I)Lcom/google/android/calendar/api/HabitModifications;
    .locals 1

    .prologue
    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mVisibility:Lcom/google/android/calendar/api/FieldModification;

    .line 260
    return-object p0
.end method

.method public switchCalendar(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/HabitDescriptor;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 156
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    .line 157
    :goto_0
    if-eqz v0, :cond_0

    .line 158
    instance-of v2, v0, Lcom/google/android/calendar/api/HabitImpl$Modification;

    if-nez v2, :cond_1

    .line 163
    :cond_0
    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Calendar can only be changed on new habits."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getOriginal()Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v2, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v2, v2, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 169
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v2

    .line 170
    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/utils/AccountUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 174
    invoke-virtual {v2}, Lcom/google/android/calendar/api/ColorDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/utils/AccountUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 175
    invoke-virtual {v2}, Lcom/google/android/calendar/api/ColorDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    invoke-virtual {v2}, Lcom/google/android/calendar/api/ColorDescriptor;->getType()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 178
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/calendar/api/ColorDescriptor;->getColorId()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Lcom/google/android/calendar/api/ColorDescriptor;->createEventColorDescriptor(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/HabitModifications;

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    return-object v0

    .line 176
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mOriginal:Lcom/google/android/calendar/api/Habit;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 405
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl$Modification;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 409
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isSummaryModified()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 410
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isSummaryModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isFingerprintModified()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 414
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isFingerprintModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isDeletionStatusModified()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 418
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isDeletionStatusModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->getDeletionStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isTypeModified()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 422
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isTypeModified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isColorOverrideModified()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 426
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isColorOverrideModified()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 429
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isVisibilityModified()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 430
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isVisibilityModified()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 431
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isRemindersModified()Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_6
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 434
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->isRemindersModified()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 435
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 438
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitImpl$Modification;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 439
    return-void

    :cond_7
    move v0, v2

    .line 409
    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 413
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 417
    goto :goto_2

    :cond_a
    move v0, v2

    .line 421
    goto :goto_3

    :cond_b
    move v0, v2

    .line 425
    goto :goto_4

    :cond_c
    move v0, v2

    .line 429
    goto :goto_5

    :cond_d
    move v1, v2

    .line 433
    goto :goto_6
.end method
