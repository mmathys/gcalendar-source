.class public Lcom/google/android/calendar/api/EventDescriptor;
.super Ljava/lang/Object;
.source "EventDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/EventDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCalendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

.field final mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

.field final mLocalId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/calendar/api/EventDescriptor$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/EventDescriptor$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/EventDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 50
    const-class v0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    const-class v1, Ljava/lang/Long;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-class v2, Lcom/google/android/calendar/api/InstanceDescriptor;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/calendar/api/InstanceDescriptor;

    .line 50
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/calendar/api/EventDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/Long;Lcom/google/android/calendar/api/InstanceDescriptor;)V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/EventDescriptor$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/EventDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/api/EventDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/Long;Lcom/google/android/calendar/api/InstanceDescriptor;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/Long;Lcom/google/android/calendar/api/InstanceDescriptor;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 44
    iput-object p1, p0, Lcom/google/android/calendar/api/EventDescriptor;->mCalendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 45
    iput-object p2, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    .line 46
    iput-object p3, p0, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    .line 47
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 102
    check-cast p1, Lcom/google/android/calendar/api/EventDescriptor;

    .line 104
    iget-object v2, p0, Lcom/google/android/calendar/api/EventDescriptor;->mCalendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/calendar/api/EventDescriptor;->mCalendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    iget-object v3, p1, Lcom/google/android/calendar/api/EventDescriptor;->mCalendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2, v3}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    iget-object v1, p1, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/InstanceDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_4
    :goto_1
    move v1, v0

    goto :goto_0

    .line 104
    :cond_5
    iget-object v2, p1, Lcom/google/android/calendar/api/EventDescriptor;->mCalendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 107
    :cond_6
    iget-object v2, p1, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 111
    :cond_7
    iget-object v2, p1, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_1
.end method

.method public getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mCalendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    return-object v0
.end method

.method public getOriginalLocalId()J
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 76
    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 76
    :goto_1
    return-wide v0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    iget-wide v0, v0, Lcom/google/android/calendar/api/InstanceDescriptor;->mRecurrenceParentLocalId:J

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mCalendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mCalendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->hashCode()I

    move-result v0

    .line 118
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/InstanceDescriptor;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 120
    return v0

    :cond_1
    move v0, v1

    .line 117
    goto :goto_0

    :cond_2
    move v0, v1

    .line 118
    goto :goto_1
.end method

.method isRecurringException()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRecurringPhantom()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSingleEvent()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    const-string v0, "EventDescriptor{calendar=%s, localId=\'%s\'}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/calendar/api/EventDescriptor;->mCalendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mCalendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 138
    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 140
    return-void
.end method
