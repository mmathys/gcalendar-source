.class public Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;
.super Ljava/lang/Object;
.source "AttendeeModificationsImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/attendee/AttendeeModifications;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttendees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/google/android/calendar/api/attendee/Attendee;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mOriginal:Ljava/util/List;

    .line 27
    sget-object v0, Lcom/google/android/calendar/api/attendee/Attendee;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mOriginal:Ljava/util/List;

    .line 20
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mOriginal:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getAttendees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mOriginal:Ljava/util/List;

    goto :goto_0
.end method

.method public isModified()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 83
    iget-object v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mOriginal:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    if-nez v2, :cond_3

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mOriginal:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    if-eq v2, v3, :cond_2

    .line 95
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 84
    goto :goto_0

    .line 87
    :cond_3
    iget-object v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mOriginal:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 95
    iget-object v2, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mOriginal:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public setAttendeeResponse(Lcom/google/android/calendar/api/attendee/Attendee;Lcom/google/android/calendar/api/attendee/Response;)V
    .locals 7

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 59
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/google/android/calendar/api/attendee/Attendee;

    iget-object v1, p1, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    iget-object v2, p1, Lcom/google/android/calendar/api/attendee/Attendee;->displayName:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/calendar/api/attendee/Attendee;->role:I

    iget v4, p1, Lcom/google/android/calendar/api/attendee/Attendee;->type:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/api/attendee/Attendee;-><init>(Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;Ljava/lang/String;IILcom/google/android/calendar/api/attendee/Response;)V

    .line 66
    iget-object v1, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    invoke-interface {v1, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mOriginal:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->mAttendees:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 103
    return-void
.end method
