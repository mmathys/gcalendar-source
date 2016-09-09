.class Lcom/google/android/calendar/api/InstanceDescriptor;
.super Ljava/lang/Object;
.source "InstanceDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/InstanceDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mOriginalStartMillis:J

.field final mRecurrenceParentLocalId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/calendar/api/InstanceDescriptor$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/InstanceDescriptor$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/InstanceDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/google/android/calendar/api/InstanceDescriptor;->mRecurrenceParentLocalId:J

    .line 23
    iput-wide p3, p0, Lcom/google/android/calendar/api/InstanceDescriptor;->mOriginalStartMillis:J

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 27
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/calendar/api/InstanceDescriptor;-><init>(JJ)V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/InstanceDescriptor$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/InstanceDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 37
    goto :goto_0

    .line 40
    :cond_3
    check-cast p1, Lcom/google/android/calendar/api/InstanceDescriptor;

    .line 42
    iget-wide v2, p0, Lcom/google/android/calendar/api/InstanceDescriptor;->mRecurrenceParentLocalId:J

    iget-wide v4, p1, Lcom/google/android/calendar/api/InstanceDescriptor;->mRecurrenceParentLocalId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    .line 43
    goto :goto_0

    .line 45
    :cond_4
    iget-wide v2, p0, Lcom/google/android/calendar/api/InstanceDescriptor;->mOriginalStartMillis:J

    iget-wide v4, p1, Lcom/google/android/calendar/api/InstanceDescriptor;->mOriginalStartMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 51
    iget-wide v0, p0, Lcom/google/android/calendar/api/InstanceDescriptor;->mRecurrenceParentLocalId:J

    iget-wide v2, p0, Lcom/google/android/calendar/api/InstanceDescriptor;->mRecurrenceParentLocalId:J

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/calendar/api/InstanceDescriptor;->mOriginalStartMillis:J

    iget-wide v4, p0, Lcom/google/android/calendar/api/InstanceDescriptor;->mOriginalStartMillis:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 53
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/android/calendar/api/InstanceDescriptor;->mRecurrenceParentLocalId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Lcom/google/android/calendar/api/InstanceDescriptor;->mOriginalStartMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    return-void
.end method
