.class public Lcom/google/android/calendar/api/EventModificationsImpl;
.super Ljava/lang/Object;
.source "EventModificationsImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/EventModifications;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/EventModificationsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_LOCATION:Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;


# instance fields
.field private final mAttachmentModifications:Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;

.field private final mAttendeeModifications:Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;

.field private mAvailability:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private mDescription:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

.field private mEndMillis:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHabitInstanceModifications:Lcom/google/android/calendar/api/HabitInstanceModifications;

.field private mIsAllDay:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationModifications:Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;

.field private final mNotificationModifications:Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;

.field private final mOriginal:Lcom/google/android/calendar/api/Event;

.field private mRecurrence:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Lcom/google/android/calendar/api/time/Recurrence;",
            ">;"
        }
    .end annotation
.end field

.field private mRecurringTimeZoneId:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleEndTimeZoneId:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleStartTimeZoneId:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartMillis:Lcom/google/android/calendar/api/FieldModification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/FieldModification",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/calendar/api/EventModificationsImpl;->EMPTY_LOCATION:Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;

    .line 541
    new-instance v0, Lcom/google/android/calendar/api/EventModificationsImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/EventModificationsImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/EventModificationsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSummary:Lcom/google/android/calendar/api/FieldModification;

    .line 47
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mStartMillis:Lcom/google/android/calendar/api/FieldModification;

    .line 48
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mEndMillis:Lcom/google/android/calendar/api/FieldModification;

    .line 49
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mIsAllDay:Lcom/google/android/calendar/api/FieldModification;

    .line 50
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSingleStartTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    .line 51
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSingleEndTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    .line 52
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mRecurringTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    .line 53
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mRecurrence:Lcom/google/android/calendar/api/FieldModification;

    .line 54
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mVisibility:Lcom/google/android/calendar/api/FieldModification;

    .line 55
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAvailability:Lcom/google/android/calendar/api/FieldModification;

    .line 56
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescription:Lcom/google/android/calendar/api/FieldModification;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mHabitInstanceModifications:Lcom/google/android/calendar/api/HabitInstanceModifications;

    .line 65
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mColorOverride:Lcom/google/android/calendar/api/FieldModification;

    .line 94
    const-class v0, Lcom/google/android/calendar/api/Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/Event;

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    .line 95
    const-class v0, Lcom/google/android/calendar/api/EventDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventDescriptor;

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    .line 97
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/EventModificationsImpl;->setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 100
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/api/EventModificationsImpl;->setStartMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;

    .line 103
    :cond_1
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/api/EventModificationsImpl;->setEndMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;

    .line 106
    :cond_2
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    const-class v0, Ljava/lang/Boolean;

    .line 108
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 107
    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mIsAllDay:Lcom/google/android/calendar/api/FieldModification;

    .line 110
    :cond_3
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/EventModificationsImpl;->setSingleStartTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 113
    :cond_4
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/EventModificationsImpl;->setSingleEndTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 116
    :cond_5
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/EventModificationsImpl;->setRecurringTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 119
    :cond_6
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    const-class v0, Lcom/google/android/calendar/api/time/Recurrence;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/time/Recurrence;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/EventModificationsImpl;->setRecurrence(Lcom/google/android/calendar/api/time/Recurrence;)Lcom/google/android/calendar/api/EventModifications;

    .line 122
    :cond_7
    const-class v0, Lcom/google/android/calendar/api/HabitInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitInstanceModifications;

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mHabitInstanceModifications:Lcom/google/android/calendar/api/HabitInstanceModifications;

    .line 123
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 124
    const-class v0, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/EventModificationsImpl;->setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/EventModifications;

    .line 127
    :cond_8
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/EventUtil;->checkVisibility(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/EventModificationsImpl;->setVisibility(I)Lcom/google/android/calendar/api/EventModifications;

    .line 130
    :cond_9
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/EventUtil;->checkAvailability(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/EventModificationsImpl;->setAvailability(I)Lcom/google/android/calendar/api/EventModifications;

    .line 133
    :cond_a
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/EventModificationsImpl;->setDescription(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 136
    :cond_b
    const-class v0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mLocationModifications:Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;

    .line 138
    const-class v0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mNotificationModifications:Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;

    .line 140
    const-class v0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAttachmentModifications:Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;

    .line 142
    const-class v0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAttendeeModifications:Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/EventModificationsImpl$1;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/EventModificationsImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/Event;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSummary:Lcom/google/android/calendar/api/FieldModification;

    .line 47
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mStartMillis:Lcom/google/android/calendar/api/FieldModification;

    .line 48
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mEndMillis:Lcom/google/android/calendar/api/FieldModification;

    .line 49
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mIsAllDay:Lcom/google/android/calendar/api/FieldModification;

    .line 50
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSingleStartTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    .line 51
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSingleEndTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    .line 52
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mRecurringTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    .line 53
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mRecurrence:Lcom/google/android/calendar/api/FieldModification;

    .line 54
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mVisibility:Lcom/google/android/calendar/api/FieldModification;

    .line 55
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAvailability:Lcom/google/android/calendar/api/FieldModification;

    .line 56
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescription:Lcom/google/android/calendar/api/FieldModification;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mHabitInstanceModifications:Lcom/google/android/calendar/api/HabitInstanceModifications;

    .line 65
    invoke-static {}, Lcom/google/android/calendar/api/FieldModification;->doNotModify()Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mColorOverride:Lcom/google/android/calendar/api/FieldModification;

    .line 68
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/Event;

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    .line 69
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    .line 70
    invoke-interface {p1}, Lcom/google/android/calendar/api/Event;->getHabitInstance()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/Feature;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;

    .line 72
    invoke-interface {p1}, Lcom/google/android/calendar/api/Event;->getHabitInstance()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/Feature;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitInstance;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/api/HabitInstanceModificationsImpl;-><init>(Lcom/google/android/calendar/api/HabitInstance;)V

    iput-object v1, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mHabitInstanceModifications:Lcom/google/android/calendar/api/HabitInstanceModifications;

    .line 74
    :cond_0
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v1}, Lcom/google/android/calendar/api/Event;->getLocation()Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;-><init>(Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mLocationModifications:Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;

    .line 75
    new-instance v0, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v1}, Lcom/google/android/calendar/api/Event;->getNotifications()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mNotificationModifications:Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;

    .line 76
    new-instance v0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v1}, Lcom/google/android/calendar/api/Event;->getAttachments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAttachmentModifications:Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;

    .line 77
    new-instance v0, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v1}, Lcom/google/android/calendar/api/Event;->getAttendees()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAttendeeModifications:Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;

    .line 78
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public getAttachmentModifications()Lcom/google/android/calendar/api/attachments/AttachmentModifications;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAttachmentModifications:Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;

    return-object v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attachments/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAttachmentModifications:Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->getAttachments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttendeeModifications()Lcom/google/android/calendar/api/attendee/AttendeeModifications;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAttendeeModifications:Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;

    return-object v0
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
    .line 466
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAttendeeModifications:Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->getAttendees()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailability()I
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAvailabilityModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAvailability:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/EventUtil;->checkAvailability(I)I

    move-result v0

    .line 429
    :goto_0
    return v0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getAvailability()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isColorOverrideModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mColorOverride:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 411
    :goto_0
    return-object v0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeepLinkData()Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDeepLinkData()Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isDescriptionModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescription:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 437
    :goto_0
    return-object v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    return-object v0
.end method

.method public getEndMillisSinceEpoch()J
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isEndModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mEndMillis:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 314
    :goto_0
    return-wide v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getEndMillisSinceEpoch()J

    move-result-wide v0

    goto :goto_0

    .line 318
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getHabitInstance()Lcom/google/android/calendar/api/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/calendar/api/Feature",
            "<",
            "Lcom/google/android/calendar/api/HabitInstance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mHabitInstanceModifications:Lcom/google/android/calendar/api/HabitInstanceModifications;

    if-nez v0, :cond_0

    .line 363
    invoke-static {}, Lcom/google/android/calendar/api/Feature;->createUnsupported()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mHabitInstanceModifications:Lcom/google/android/calendar/api/HabitInstanceModifications;

    invoke-static {v0}, Lcom/google/android/calendar/api/Feature;->createSupported(Ljava/lang/Object;)Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    goto :goto_0
.end method

.method public getHabitInstanceModifications()Lcom/google/android/calendar/api/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/calendar/api/Feature",
            "<",
            "Lcom/google/android/calendar/api/HabitInstanceModifications;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mHabitInstanceModifications:Lcom/google/android/calendar/api/HabitInstanceModifications;

    if-nez v0, :cond_0

    .line 370
    invoke-static {}, Lcom/google/android/calendar/api/Feature;->createUnsupported()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mHabitInstanceModifications:Lcom/google/android/calendar/api/HabitInstanceModifications;

    invoke-static {v0}, Lcom/google/android/calendar/api/Feature;->createSupported(Ljava/lang/Object;)Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation()Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mLocationModifications:Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;

    return-object v0
.end method

.method public getLocationModification()Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mLocationModifications:Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;

    return-object v0
.end method

.method public getNotificationModifications()Lcom/google/android/calendar/api/notifications/NotificationModifications;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mNotificationModifications:Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;

    return-object v0
.end method

.method public getNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mNotificationModifications:Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->getNotifications()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOriginal()Lcom/google/android/calendar/api/Event;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    return-object v0
.end method

.method public getRecurrence()Lcom/google/android/calendar/api/time/Recurrence;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isRecurrenceModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mRecurrence:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/time/Recurrence;

    .line 277
    :goto_0
    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getRecurrence()Lcom/google/android/calendar/api/time/Recurrence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecurringTimeZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isRecurringTimeZoneModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mRecurringTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    :goto_0
    return-object v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getRecurringTimeZoneId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 357
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSingleEndTimeZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isSingleEndTimeZoneModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSingleEndTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    :goto_0
    return-object v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getSingleEndTimeZoneId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSingleStartTimeZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isSingleStartTimeZoneModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSingleStartTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    :goto_0
    return-object v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getSingleStartTimeZoneId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartMillisSinceEpoch()J
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isStartModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mStartMillis:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 305
    :goto_0
    return-wide v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getStartMillisSinceEpoch()J

    move-result-wide v0

    goto :goto_0

    .line 309
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isSummaryModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSummary:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    :goto_0
    return-object v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getSummary()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isVisibilityModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mVisibility:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/EventUtil;->checkVisibility(I)I

    move-result v0

    .line 421
    :goto_0
    return v0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getVisibility()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllDayEvent()Z
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAllDayModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mIsAllDay:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->getModificationValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 323
    :goto_0
    return v0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->isAllDayEvent()Z

    move-result v0

    goto :goto_0

    .line 327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllDayModified()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mIsAllDay:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isAvailabilityModified()Z
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAvailability:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isColorOverrideModified()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mColorOverride:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isDescriptionModified()Z
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescription:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isEndModified()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mEndMillis:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isModified()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 619
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getHabitInstanceModifications()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lcom/google/android/calendar/api/Feature;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/calendar/api/Feature;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitInstanceModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitInstanceModifications;->isModified()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 623
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isSummaryModified()Z

    move-result v3

    if-nez v3, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isStartModified()Z

    move-result v3

    if-nez v3, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isEndModified()Z

    move-result v3

    if-nez v3, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAllDayModified()Z

    move-result v3

    if-nez v3, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isSingleEndTimeZoneModified()Z

    move-result v3

    if-nez v3, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isSingleEndTimeZoneModified()Z

    move-result v3

    if-nez v3, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isRecurringTimeZoneModified()Z

    move-result v3

    if-nez v3, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isRecurrenceModified()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isColorOverrideModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isVisibilityModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAvailabilityModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isDescriptionModified()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mLocationModifications:Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;

    .line 636
    invoke-interface {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mNotificationModifications:Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;

    .line 637
    invoke-virtual {v0}, Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAttachmentModifications:Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;

    .line 638
    invoke-virtual {v0}, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAttendeeModifications:Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;

    .line 639
    invoke-virtual {v0}, Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    .line 623
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 621
    goto :goto_0
.end method

.method public isNewEvent()Z
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    if-nez v0, :cond_0

    .line 587
    const/4 v0, 0x1

    .line 592
    :goto_0
    return v0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    instance-of v0, v0, Lcom/google/android/calendar/api/EventModifications;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->isNewEvent()Z

    move-result v0

    goto :goto_0

    .line 592
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecurrenceModified()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mRecurrence:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isRecurringTimeZoneModified()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mRecurringTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isSingleEndTimeZoneModified()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSingleEndTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isSingleStartTimeZoneModified()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSingleStartTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isStartModified()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mStartMillis:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isSummaryModified()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSummary:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public isVisibilityModified()Z
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mVisibility:Lcom/google/android/calendar/api/FieldModification;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FieldModification;->shouldModify()Z

    move-result v0

    return v0
.end method

.method public setAvailability(I)Lcom/google/android/calendar/api/EventModifications;
    .locals 1

    .prologue
    .line 608
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAvailability:Lcom/google/android/calendar/api/FieldModification;

    .line 609
    return-object p0
.end method

.method public setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/EventModifications;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 401
    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorDescriptor;->getType()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 403
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ColorDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 404
    invoke-static {p1}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mColorOverride:Lcom/google/android/calendar/api/FieldModification;

    .line 405
    return-object p0

    .line 403
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;
    .locals 1

    .prologue
    .line 649
    invoke-static {p1}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescription:Lcom/google/android/calendar/api/FieldModification;

    .line 650
    return-object p0
.end method

.method public setEndMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;
    .locals 1

    .prologue
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAllDayEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/calendar/api/utils/TimestampHelper;->isTimestampUtcMidnight(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 198
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 200
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mEndMillis:Lcom/google/android/calendar/api/FieldModification;

    .line 201
    return-object p0

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRecurrence(Lcom/google/android/calendar/api/time/Recurrence;)Lcom/google/android/calendar/api/EventModifications;
    .locals 1

    .prologue
    .line 284
    invoke-static {p1}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mRecurrence:Lcom/google/android/calendar/api/FieldModification;

    .line 285
    return-object p0
.end method

.method public setRecurringTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAllDayEvent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 269
    invoke-static {p1}, Lcom/google/android/calendar/api/utils/TimeZoneHelper;->isValidTimeZoneIdOrNull(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 270
    invoke-static {p1}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mRecurringTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    .line 271
    return-object p0

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSingleEndTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAllDayEvent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 256
    invoke-static {p1}, Lcom/google/android/calendar/api/utils/TimeZoneHelper;->isValidTimeZoneIdOrNull(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 257
    invoke-static {p1}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSingleEndTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    .line 258
    return-object p0

    .line 255
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSingleStartTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAllDayEvent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 243
    invoke-static {p1}, Lcom/google/android/calendar/api/utils/TimeZoneHelper;->isValidTimeZoneIdOrNull(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 244
    invoke-static {p1}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSingleStartTimeZoneId:Lcom/google/android/calendar/api/FieldModification;

    .line 245
    return-object p0

    .line 242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStartMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;
    .locals 1

    .prologue
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAllDayEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/calendar/api/utils/TimestampHelper;->isTimestampUtcMidnight(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 185
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 187
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mStartMillis:Lcom/google/android/calendar/api/FieldModification;

    .line 188
    return-object p0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;
    .locals 1

    .prologue
    .line 174
    invoke-static {p1}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mSummary:Lcom/google/android/calendar/api/FieldModification;

    .line 175
    return-object p0
.end method

.method public setToAllDayWithDates(JJ)Lcom/google/android/calendar/api/EventModifications;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 213
    invoke-static {p1, p2}, Lcom/google/android/calendar/api/utils/TimestampHelper;->isTimestampUtcMidnight(J)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 214
    invoke-static {p3, p4}, Lcom/google/android/calendar/api/utils/TimestampHelper;->isTimestampUtcMidnight(J)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/EventModificationsImpl;->setStartMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;

    .line 217
    invoke-virtual {p0, p3, p4}, Lcom/google/android/calendar/api/EventModificationsImpl;->setEndMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;

    .line 218
    invoke-virtual {p0, v2}, Lcom/google/android/calendar/api/EventModificationsImpl;->setSingleStartTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 219
    invoke-virtual {p0, v2}, Lcom/google/android/calendar/api/EventModificationsImpl;->setSingleEndTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 220
    invoke-virtual {p0, v2}, Lcom/google/android/calendar/api/EventModificationsImpl;->setRecurringTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 221
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mIsAllDay:Lcom/google/android/calendar/api/FieldModification;

    .line 222
    return-object p0

    .line 212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setToTimedWithTimes(JJ)Lcom/google/android/calendar/api/EventModifications;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 228
    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 229
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mIsAllDay:Lcom/google/android/calendar/api/FieldModification;

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/EventModificationsImpl;->setStartMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;

    .line 231
    invoke-virtual {p0, p3, p4}, Lcom/google/android/calendar/api/EventModificationsImpl;->setEndMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;

    .line 232
    return-object p0

    :cond_0
    move v0, v1

    .line 228
    goto :goto_0
.end method

.method public setVisibility(I)Lcom/google/android/calendar/api/EventModifications;
    .locals 1

    .prologue
    .line 597
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mVisibility:Lcom/google/android/calendar/api/FieldModification;

    .line 598
    return-object p0
.end method

.method public switchCalendar(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/EventDescriptor;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 556
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isNewEvent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Calendar can only be changed on new habits."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_0
    new-instance v1, Lcom/google/android/calendar/api/EventDescriptor;

    iget-object v2, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    iget-object v2, v2, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-direct {v1, p1, v2}, Lcom/google/android/calendar/api/EventDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/Long;)V

    iput-object v1, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    .line 566
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v1

    .line 567
    if-eqz v1, :cond_1

    .line 569
    invoke-virtual {v1}, Lcom/google/android/calendar/api/ColorDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 570
    invoke-virtual {v1}, Lcom/google/android/calendar/api/ColorDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/calendar/api/utils/AccountUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 571
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/calendar/api/utils/AccountUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 572
    invoke-virtual {v1}, Lcom/google/android/calendar/api/ColorDescriptor;->getType()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 574
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/calendar/api/ColorDescriptor;->getColorId()Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-static {v0, v1}, Lcom/google/android/calendar/api/ColorDescriptor;->createEventColorDescriptor(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/EventModificationsImpl;->setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/EventModifications;

    .line 581
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    return-object v0

    .line 572
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 576
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/EventModificationsImpl;->setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/EventModifications;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/Event;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 484
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 486
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isSummaryModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 487
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isSummaryModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isStartModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 491
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isStartModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getStartMillisSinceEpoch()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isEndModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 495
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isEndModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getEndMillisSinceEpoch()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 498
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAllDayModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 499
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAllDayModified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAllDayEvent()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 502
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isSingleStartTimeZoneModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isSingleStartTimeZoneModified()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 504
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getSingleStartTimeZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isSingleEndTimeZoneModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 507
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isSingleEndTimeZoneModified()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 508
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getSingleEndTimeZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isRecurringTimeZoneModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 511
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isRecurringTimeZoneModified()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 512
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getRecurringTimeZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isRecurrenceModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 515
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isRecurrenceModified()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 516
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getRecurrence()Lcom/google/android/calendar/api/time/Recurrence;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 518
    :cond_7
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mHabitInstanceModifications:Lcom/google/android/calendar/api/HabitInstanceModifications;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 519
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isColorOverrideModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 520
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isColorOverrideModified()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 521
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 523
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isVisibilityModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isVisibilityModified()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 525
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAvailabilityModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 528
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isAvailabilityModified()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 529
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getAvailability()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isDescriptionModified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 532
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->isDescriptionModified()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 533
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventModificationsImpl;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    :cond_b
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mLocationModifications:Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 536
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mNotificationModifications:Lcom/google/android/calendar/api/notifications/NotificationModificationsImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 537
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAttachmentModifications:Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 538
    iget-object v0, p0, Lcom/google/android/calendar/api/EventModificationsImpl;->mAttendeeModifications:Lcom/google/android/calendar/api/attendee/AttendeeModificationsImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 539
    return-void
.end method
