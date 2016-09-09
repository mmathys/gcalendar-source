.class public Lcom/android/calendar/timely/FindTimeAttendee;
.super Ljava/lang/Object;
.source "FindTimeAttendee.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/FindTimeAttendee$RequesterFirstComparator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDaysToEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineAttendeeEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisplayName:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineAttendeeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOrganizer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/android/calendar/timely/FindTimeAttendee$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/FindTimeAttendee$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/FindTimeAttendee;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEmail:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mDisplayName:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEvents:Ljava/util/List;

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/calendar/timely/FindTimeAttendee$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeAttendee;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEmail:Ljava/lang/String;

    .line 68
    iput-boolean p2, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mIsOrganizer:Z

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mDaysToEvents:Landroid/util/SparseArray;

    .line 70
    return-void
.end method

.method private processEvents(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineAttendeeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;

    .line 155
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineAttendeeEvent;->getStartDay()I

    move-result v1

    .line 156
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineAttendeeEvent;->getEndDay()I

    move-result v3

    .line 157
    :goto_0
    if-gt v1, v3, :cond_0

    .line 158
    invoke-direct {p0, v1, v0}, Lcom/android/calendar/timely/FindTimeAttendee;->saveEvent(ILcom/android/calendar/timely/TimelineAttendeeEvent;)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method

.method private saveEvent(ILcom/android/calendar/timely/TimelineAttendeeEvent;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mDaysToEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 165
    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mDaysToEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    if-ne p1, p0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/timely/FindTimeAttendee;

    if-nez v2, :cond_2

    move v0, v1

    .line 183
    goto :goto_0

    .line 185
    :cond_2
    check-cast p1, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 186
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEmail:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/timely/FindTimeAttendee;->mEmail:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mDisplayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/timely/FindTimeAttendee;->mDisplayName:Ljava/lang/String;

    .line 187
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEvents:Ljava/util/List;

    iget-object v3, p1, Lcom/android/calendar/timely/FindTimeAttendee;->mEvents:Ljava/util/List;

    .line 190
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAttendee;->isOrganizer()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeAttendee;->isOrganizer()Z

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAllEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineAttendeeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEvents:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getEvents(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineAttendeeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mDaysToEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEmail:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEvents:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/calendar/Utils;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOrganizer()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mIsOrganizer:Z

    return v0
.end method

.method public isRoom()Z
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEmail:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getAttendeeType(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->ROOM:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/android/calendar/timely/FindTimeAttendee;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mDisplayName:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setEvents(Ljava/util/List;)Lcom/android/calendar/timely/FindTimeAttendee;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineAttendeeEvent;",
            ">;)",
            "Lcom/android/calendar/timely/FindTimeAttendee;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mDaysToEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 97
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEvents:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEvents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEvents:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeAttendee;->processEvents(Ljava/util/List;)V

    .line 101
    :cond_0
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendee;->mEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 146
    return-void
.end method
