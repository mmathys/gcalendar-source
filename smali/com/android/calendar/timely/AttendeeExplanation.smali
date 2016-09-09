.class public Lcom/android/calendar/timely/AttendeeExplanation;
.super Ljava/lang/Object;
.source "AttendeeExplanation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/AttendeeExplanation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final attendee:Lcom/android/calendar/timely/FindTimeAttendee;

.field public final conflictType:I

.field public conflictingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineAttendeeEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/calendar/timely/AttendeeExplanation$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/AttendeeExplanation$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/AttendeeExplanation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/android/calendar/timely/FindTimeAttendee;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineAttendeeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictType:I

    .line 52
    iput-object p2, p0, Lcom/android/calendar/timely/AttendeeExplanation;->attendee:Lcom/android/calendar/timely/FindTimeAttendee;

    .line 53
    iput-object p3, p0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictingEvents:Ljava/util/List;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictType:I

    .line 58
    const-class v0, Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    iput-object v0, p0, Lcom/android/calendar/timely/AttendeeExplanation;->attendee:Lcom/android/calendar/timely/FindTimeAttendee;

    .line 59
    sget-object v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictingEvents:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/timely/AttendeeExplanation;

    if-nez v2, :cond_2

    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    check-cast p1, Lcom/android/calendar/timely/AttendeeExplanation;

    .line 93
    iget v2, p0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictType:I

    iget v3, p1, Lcom/android/calendar/timely/AttendeeExplanation;->conflictType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/AttendeeExplanation;->attendee:Lcom/android/calendar/timely/FindTimeAttendee;

    iget-object v3, p1, Lcom/android/calendar/timely/AttendeeExplanation;->attendee:Lcom/android/calendar/timely/FindTimeAttendee;

    .line 94
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictingEvents:Ljava/util/List;

    iget-object v3, p1, Lcom/android/calendar/timely/AttendeeExplanation;->conflictingEvents:Ljava/util/List;

    .line 95
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getConflictCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictingEvents:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/timely/AttendeeExplanation;->attendee:Lcom/android/calendar/timely/FindTimeAttendee;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictingEvents:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/calendar/Utils;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/android/calendar/timely/AttendeeExplanation;->attendee:Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    iget-object v0, p0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictingEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 73
    return-void
.end method
