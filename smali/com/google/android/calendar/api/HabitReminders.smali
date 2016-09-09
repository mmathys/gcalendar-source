.class public Lcom/google/android/calendar/api/HabitReminders;
.super Ljava/lang/Object;
.source "HabitReminders.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/HabitReminders;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final enableFollowup:Z

.field public final enableRecommit:Z

.field public final overrideMinutes:Ljava/lang/Integer;

.field public final useDefaultReminders:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/google/android/calendar/api/HabitReminders$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/HabitReminders$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/HabitReminders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1, v1}, Lcom/google/android/calendar/api/HabitReminders;-><init>(ZLjava/lang/Integer;ZZ)V

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 64
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    .line 65
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    .line 66
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    .line 67
    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/HabitReminders$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/HabitReminders;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Integer;ZZ)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    .line 30
    iput-object p2, p0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    .line 31
    iput-boolean p3, p0, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    .line 32
    iput-boolean p4, p0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    instance-of v1, p1, Lcom/google/android/calendar/api/HabitReminders;

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    check-cast p1, Lcom/google/android/calendar/api/HabitReminders;

    .line 80
    iget-boolean v1, p0, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    iget-boolean v2, p1, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    .line 81
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    iget-boolean v2, p1, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    iget-boolean v2, p1, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    .line 89
    iget-boolean v0, p0, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 90
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    add-int/2addr v0, v3

    .line 91
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 93
    return v0

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 91
    goto :goto_2

    :cond_3
    move v1, v2

    .line 92
    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    const/4 v2, 0x4

    new-array v2, v2, [Z

    iget-boolean v3, p0, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    aput-boolean v3, v2, v1

    iget-boolean v3, p0, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    aput-boolean v3, v2, v0

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    aput-boolean v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    :goto_0
    aput-boolean v0, v2, v3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 55
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 49
    goto :goto_0
.end method
