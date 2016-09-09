.class public Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;
.super Ljava/lang/Object;
.source "CalendarListEntryImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccessLevel:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

.field private final mColorDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

.field private final mDefaultAllDayNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultTimedNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private final mDescriptor:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

.field private final mName:Ljava/lang/String;

.field private final mNameOverride:Ljava/lang/String;

.field private final mPrimary:Z

.field private final mSyncEnabled:Z

.field private final mTimeZoneId:Ljava/lang/String;

.field private final mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 68
    const-class v0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-class v0, Ljava/lang/Boolean;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    const-class v0, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v7, :cond_0

    move v6, v7

    .line 77
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v7, :cond_1

    .line 78
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/google/android/calendar/api/notifications/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/calendar/api/notifications/Notification;

    sget-object v0, Lcom/google/android/calendar/api/notifications/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/android/calendar/api/notifications/Notification;

    const-class v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    move-object v0, p0

    .line 68
    invoke-direct/range {v0 .. v11}, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/calendar/api/ColorDescriptor;ZZLjava/lang/String;[Lcom/google/android/calendar/api/notifications/Notification;[Lcom/google/android/calendar/api/notifications/Notification;Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;)V

    .line 83
    return-void

    :cond_0
    move v6, v8

    .line 76
    goto :goto_0

    :cond_1
    move v7, v8

    .line 77
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/calendar/api/ColorDescriptor;ZZLjava/lang/String;[Lcom/google/android/calendar/api/notifications/Notification;[Lcom/google/android/calendar/api/notifications/Notification;Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mDescriptor:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 44
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mName:Ljava/lang/String;

    .line 45
    iput-boolean p3, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mPrimary:Z

    .line 46
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mNameOverride:Ljava/lang/String;

    .line 47
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p5}, Lcom/google/android/calendar/api/ColorDescriptor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 50
    invoke-virtual {p5}, Lcom/google/android/calendar/api/ColorDescriptor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 48
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 51
    iput-object p5, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mColorDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    .line 52
    iput-boolean p6, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mVisible:Z

    .line 53
    iput-boolean p7, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mSyncEnabled:Z

    .line 54
    invoke-static {p8}, Lcom/google/android/calendar/api/utils/TimeZoneHelper;->isValidTimeZoneIdOrNull(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 55
    iput-object p8, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mTimeZoneId:Ljava/lang/String;

    .line 57
    invoke-static {p9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/api/notifications/Notification;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 59
    :goto_1
    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mDefaultTimedNotifications:Ljava/util/List;

    .line 61
    invoke-static {p10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/api/notifications/Notification;

    array-length v0, v0

    if-nez v0, :cond_3

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 63
    :goto_2
    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mDefaultAllDayNotifications:Ljava/util/List;

    .line 64
    invoke-static {p11}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mAccessLevel:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    .line 65
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_2
    invoke-static {p9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessLevel()Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mAccessLevel:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    return-object v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mPrimary:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mDescriptor:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 153
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-boolean v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mPrimary:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mNameOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mColorDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    iget-boolean v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mVisible:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 158
    iget-boolean v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mSyncEnabled:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 159
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mTimeZoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mDefaultTimedNotifications:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mDefaultTimedNotifications:Ljava/util/List;

    .line 161
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/calendar/api/notifications/Notification;

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/api/notifications/Notification;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 162
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mDefaultAllDayNotifications:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mDefaultAllDayNotifications:Ljava/util/List;

    .line 163
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/calendar/api/notifications/Notification;

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/api/notifications/Notification;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 164
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;->mAccessLevel:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    return-void

    :cond_0
    move v0, v2

    .line 157
    goto :goto_0

    :cond_1
    move v1, v2

    .line 158
    goto :goto_1
.end method
