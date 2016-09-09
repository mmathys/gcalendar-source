.class public Lcom/google/android/calendar/api/EventImpl;
.super Ljava/lang/Object;
.source "EventImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/Event;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/EventImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final mAttendees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private final mAttendesOmitted:Z

.field private final mAvailability:I

.field private final mColorOverride:Lcom/google/android/calendar/api/ColorDescriptor;

.field private final mDeepLinkData:Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

.field private final mDescription:Ljava/lang/String;

.field private final mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

.field private final mEndMillis:J

.field private final mHabitInstance:Lcom/google/android/calendar/api/HabitInstance;

.field private final mIsAllDay:Z

.field private final mLocation:Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

.field private final mNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrganizer:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

.field private final mRecurrence:Lcom/google/android/calendar/api/time/Recurrence;

.field private final mRecurringTimeZoneId:Ljava/lang/String;

.field private final mSingleEndTimeZoneId:Ljava/lang/String;

.field private final mSingleStartTimeZoneId:Ljava/lang/String;

.field private final mStartMillis:J

.field private final mSummary:Ljava/lang/String;

.field private final mVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    new-instance v0, Lcom/google/android/calendar/api/EventImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/EventImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/EventImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 26

    .prologue
    .line 125
    const-class v2, Lcom/google/android/calendar/api/EventDescriptor;

    .line 127
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/calendar/api/EventDescriptor;

    const-class v2, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    .line 129
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    const-class v2, Ljava/lang/Boolean;

    .line 133
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    const-class v2, Lcom/google/android/calendar/api/time/Recurrence;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lcom/google/android/calendar/api/time/Recurrence;

    const-class v2, Lcom/google/android/calendar/api/HabitInstance;

    .line 139
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/google/android/calendar/api/HabitInstance;

    const-class v2, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 141
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/calendar/api/EventUtil;->checkVisibility(I)I

    move-result v17

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/calendar/api/EventUtil;->checkAvailability(I)I

    move-result v18

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    const-class v2, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 145
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    const-class v2, Ljava/lang/Boolean;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    sget-object v2, Lcom/google/android/calendar/api/notifications/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/calendar/api/notifications/Notification;

    move-object/from16 v21, v2

    .line 149
    :goto_0
    const-class v2, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    .line 151
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 150
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    sget-object v2, Lcom/google/android/calendar/api/attachments/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 152
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lcom/google/android/calendar/api/attachments/Attachment;

    sget-object v2, Lcom/google/android/calendar/api/attendee/Attendee;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 153
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Lcom/google/android/calendar/api/attendee/Attendee;

    const-class v2, Ljava/lang/Boolean;

    .line 154
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    move-object/from16 v2, p0

    .line 125
    invoke-direct/range {v2 .. v25}, Lcom/google/android/calendar/api/EventImpl;-><init>(Lcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/api/time/Recurrence;Lcom/google/android/calendar/api/HabitInstance;Lcom/google/android/calendar/api/ColorDescriptor;IILjava/lang/String;Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;[Lcom/google/android/calendar/api/notifications/Notification;Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;[Lcom/google/android/calendar/api/attachments/Attachment;[Lcom/google/android/calendar/api/attendee/Attendee;Z)V

    .line 155
    return-void

    .line 149
    :cond_0
    const/16 v21, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/EventImpl$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/EventImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/api/time/Recurrence;Lcom/google/android/calendar/api/HabitInstance;Lcom/google/android/calendar/api/ColorDescriptor;IILjava/lang/String;Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;[Lcom/google/android/calendar/api/notifications/Notification;Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;[Lcom/google/android/calendar/api/attachments/Attachment;[Lcom/google/android/calendar/api/attendee/Attendee;Z)V
    .locals 4

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/calendar/api/EventDescriptor;

    iput-object v2, p0, Lcom/google/android/calendar/api/EventImpl;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    .line 80
    invoke-virtual {p1}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 81
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    iput-object v2, p0, Lcom/google/android/calendar/api/EventImpl;->mOrganizer:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    .line 82
    iput-object p3, p0, Lcom/google/android/calendar/api/EventImpl;->mSummary:Ljava/lang/String;

    .line 83
    cmp-long v2, p4, p6

    if-gtz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 84
    iput-wide p4, p0, Lcom/google/android/calendar/api/EventImpl;->mStartMillis:J

    .line 85
    iput-wide p6, p0, Lcom/google/android/calendar/api/EventImpl;->mEndMillis:J

    .line 86
    iput-boolean p8, p0, Lcom/google/android/calendar/api/EventImpl;->mIsAllDay:Z

    .line 87
    invoke-static {p9}, Lcom/google/android/calendar/api/utils/TimeZoneHelper;->isValidTimeZoneIdOrNull(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 88
    iput-object p9, p0, Lcom/google/android/calendar/api/EventImpl;->mSingleStartTimeZoneId:Ljava/lang/String;

    .line 89
    invoke-static {p10}, Lcom/google/android/calendar/api/utils/TimeZoneHelper;->isValidTimeZoneIdOrNull(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 90
    iput-object p10, p0, Lcom/google/android/calendar/api/EventImpl;->mSingleEndTimeZoneId:Ljava/lang/String;

    .line 91
    invoke-static {p11}, Lcom/google/android/calendar/api/utils/TimeZoneHelper;->isValidTimeZoneIdOrNull(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    iput-object p11, p0, Lcom/google/android/calendar/api/EventImpl;->mRecurringTimeZoneId:Ljava/lang/String;

    .line 93
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mRecurrence:Lcom/google/android/calendar/api/time/Recurrence;

    .line 94
    iget-boolean v2, p0, Lcom/google/android/calendar/api/EventImpl;->mIsAllDay:Z

    if-eqz v2, :cond_0

    .line 95
    iget-wide v2, p0, Lcom/google/android/calendar/api/EventImpl;->mStartMillis:J

    invoke-static {v2, v3}, Lcom/google/android/calendar/api/utils/TimestampHelper;->isTimestampUtcMidnight(J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 96
    iget-wide v2, p0, Lcom/google/android/calendar/api/EventImpl;->mEndMillis:J

    invoke-static {v2, v3}, Lcom/google/android/calendar/api/utils/TimestampHelper;->isTimestampUtcMidnight(J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 97
    iget-object v2, p0, Lcom/google/android/calendar/api/EventImpl;->mSingleStartTimeZoneId:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 98
    iget-object v2, p0, Lcom/google/android/calendar/api/EventImpl;->mSingleEndTimeZoneId:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 99
    iget-object v2, p0, Lcom/google/android/calendar/api/EventImpl;->mRecurringTimeZoneId:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 101
    :cond_0
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mHabitInstance:Lcom/google/android/calendar/api/HabitInstance;

    .line 102
    if-eqz p14, :cond_1

    .line 103
    invoke-virtual/range {p14 .. p14}, Lcom/google/android/calendar/api/ColorDescriptor;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 104
    invoke-virtual/range {p14 .. p14}, Lcom/google/android/calendar/api/ColorDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    const/4 v2, 0x1

    .line 102
    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 105
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mColorOverride:Lcom/google/android/calendar/api/ColorDescriptor;

    .line 106
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/calendar/api/EventImpl;->mVisibility:I

    .line 107
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/calendar/api/EventImpl;->mAvailability:I

    .line 108
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mDescription:Ljava/lang/String;

    .line 109
    invoke-static/range {p18 .. p18}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mLocation:Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    .line 111
    if-eqz p19, :cond_8

    .line 112
    invoke-static/range {p19 .. p19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 113
    :goto_6
    iput-object v2, p0, Lcom/google/android/calendar/api/EventImpl;->mNotifications:Ljava/util/List;

    .line 114
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mDeepLinkData:Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    .line 115
    if-eqz p21, :cond_9

    .line 116
    invoke-static/range {p21 .. p21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 115
    :goto_7
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/calendar/api/EventImpl;->mAttachments:Ljava/util/List;

    .line 118
    if-eqz p22, :cond_a

    .line 119
    invoke-static/range {p22 .. p22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 120
    :goto_8
    iput-object v2, p0, Lcom/google/android/calendar/api/EventImpl;->mAttendees:Ljava/util/List;

    .line 121
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/google/android/calendar/api/EventImpl;->mAttendesOmitted:Z

    .line 122
    return-void

    .line 80
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 83
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 97
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 98
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 99
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 104
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 113
    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .line 117
    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_7

    .line 120
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_8
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
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
    .line 264
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mAttachments:Ljava/util/List;

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
    .line 269
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mAttendees:Ljava/util/List;

    return-object v0
.end method

.method public getAvailability()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/google/android/calendar/api/EventImpl;->mAvailability:I

    return v0
.end method

.method public getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mColorOverride:Lcom/google/android/calendar/api/ColorDescriptor;

    return-object v0
.end method

.method public getDeepLinkData()Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mDeepLinkData:Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    return-object v0
.end method

.method public getEndMillisSinceEpoch()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/google/android/calendar/api/EventImpl;->mEndMillis:J

    return-wide v0
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
    .line 213
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mHabitInstance:Lcom/google/android/calendar/api/HabitInstance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    .line 214
    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/utils/AccountUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mHabitInstance:Lcom/google/android/calendar/api/HabitInstance;

    invoke-static {v0}, Lcom/google/android/calendar/api/Feature;->createSupported(Ljava/lang/Object;)Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/calendar/api/Feature;->createUnsupported()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation()Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mLocation:Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

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
    .line 253
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mNotifications:Ljava/util/List;

    return-object v0
.end method

.method public getRecurrence()Lcom/google/android/calendar/api/time/Recurrence;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mRecurrence:Lcom/google/android/calendar/api/time/Recurrence;

    return-object v0
.end method

.method public getRecurringTimeZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mRecurringTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleEndTimeZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mSingleEndTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleStartTimeZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mSingleStartTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartMillisSinceEpoch()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/google/android/calendar/api/EventImpl;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/google/android/calendar/api/EventImpl;->mVisibility:I

    return v0
.end method

.method public isAllDayEvent()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/android/calendar/api/EventImpl;->mIsAllDay:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 287
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mOrganizer:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 288
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-wide v0, p0, Lcom/google/android/calendar/api/EventImpl;->mStartMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 290
    iget-wide v0, p0, Lcom/google/android/calendar/api/EventImpl;->mEndMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 291
    iget-boolean v0, p0, Lcom/google/android/calendar/api/EventImpl;->mIsAllDay:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mSingleStartTimeZoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mSingleEndTimeZoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mRecurringTimeZoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mRecurrence:Lcom/google/android/calendar/api/time/Recurrence;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 296
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mHabitInstance:Lcom/google/android/calendar/api/HabitInstance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 297
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mColorOverride:Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 298
    iget v0, p0, Lcom/google/android/calendar/api/EventImpl;->mVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Lcom/google/android/calendar/api/EventImpl;->mAvailability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mLocation:Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 302
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mNotifications:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mNotifications:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mNotifications:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/calendar/api/EventImpl;->mNotifications:Ljava/util/List;

    .line 305
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/calendar/api/notifications/Notification;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/api/notifications/Notification;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mDeepLinkData:Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 308
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mAttachments:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/calendar/api/EventImpl;->mAttachments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/calendar/api/attachments/Attachment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/api/attachments/Attachment;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 309
    iget-object v0, p0, Lcom/google/android/calendar/api/EventImpl;->mAttendees:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/calendar/api/EventImpl;->mAttendees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/calendar/api/attendee/Attendee;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/api/attendee/Attendee;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 310
    iget-boolean v0, p0, Lcom/google/android/calendar/api/EventImpl;->mAttendesOmitted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 311
    return-void

    .line 302
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
