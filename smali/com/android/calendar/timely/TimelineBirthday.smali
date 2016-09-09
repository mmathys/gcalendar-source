.class public Lcom/android/calendar/timely/TimelineBirthday;
.super Ljava/lang/Object;
.source "TimelineBirthday.java"

# interfaces
.implements Lcom/android/calendar/timely/TimelineItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/TimelineBirthday;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBirthdayInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCalendarEventIdPairs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mColor:I

.field private mEndDay:I

.field private mEndMillis:J

.field private mEndTime:I

.field private mLoadFinished:Z

.field private mMainAccountEmail:Ljava/lang/String;

.field private mSingleLineTitle:Ljava/lang/String;

.field private mStartDay:I

.field private mStartMillis:J

.field private mStartTime:I

.field private mSubtitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lcom/android/calendar/timely/TimelineBirthday$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelineBirthday$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/TimelineBirthday;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mBirthdayInfoList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mCalendarEventIdPairs:Ljava/util/Set;

    .line 63
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 64
    new-instance v2, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    invoke-direct {v2, p1}, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;-><init>(Landroid/os/Parcel;)V

    .line 65
    invoke-direct {p0, v2}, Lcom/android/calendar/timely/TimelineBirthday;->addBirthdayInfo(Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineBirthday;->init(Landroid/os/Parcel;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/timely/TimelineEvent;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mBirthdayInfoList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mCalendarEventIdPairs:Ljava/util/Set;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelineBirthday;->addEvent(Lcom/android/calendar/timely/TimelineEvent;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineBirthday;->init(Lcom/android/calendar/timely/TimelineEvent;)V

    .line 56
    return-void
.end method

.method private addBirthdayInfo(Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;)V
    .locals 6

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mBirthdayInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mCalendarEventIdPairs:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    iget v2, p1, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->calendarId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->eventId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method private init(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mColor:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mTitle:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mSubtitle:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mSingleLineTitle:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mMainAccountEmail:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mLoadFinished:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartTime:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mEndTime:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartDay:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mEndDay:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartMillis:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mEndMillis:J

    .line 99
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Lcom/android/calendar/timely/TimelineEvent;)V
    .locals 2

    .prologue
    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mTitle:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mSubtitle:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mSingleLineTitle:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mMainAccountEmail:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mLoadFinished:Z

    .line 77
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->startTime:I

    iput v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartTime:I

    .line 78
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->endTime:I

    iput v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mEndTime:I

    .line 79
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    iput v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartDay:I

    .line 80
    iget v0, p1, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    iput v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mEndDay:I

    .line 81
    iget-wide v0, p1, Lcom/android/calendar/timely/TimelineEvent;->startMillis:J

    iput-wide v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartMillis:J

    .line 82
    iget-wide v0, p1, Lcom/android/calendar/timely/TimelineEvent;->endMillis:J

    iput-wide v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mEndMillis:J

    .line 83
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/android/calendar/timely/TimelineEvent;)V
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;-><init>(Lcom/android/calendar/timely/TimelineEvent;)V

    .line 371
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelineBirthday;->addBirthdayInfo(Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;)V

    .line 372
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public finishLoad()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mLoadFinished:Z

    .line 193
    return-void
.end method

.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBirthdayCalendarEventIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mCalendarEventIdPairs:Ljava/util/Set;

    return-object v0
.end method

.method public getBirthdayInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mBirthdayInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCalendarId()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mColor:I

    return v0
.end method

.method public getCountOfBirthdays()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mBirthdayInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEndDay()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mEndDay:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mEndMillis:J

    return-wide v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mEndTime:I

    return v0
.end method

.method public getId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNames()Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mBirthdayInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 162
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    iget-object v0, v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mMainAccountEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfAttendeeStatus()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public getSingleLineTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mSingleLineTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSortId()J
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mBirthdayInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const-wide/16 v0, -0x1

    .line 260
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mBirthdayInfoList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    iget-wide v0, v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->eventId:J

    goto :goto_0
.end method

.method public getSortType()I
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x3

    return v0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartDay:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartMillis:J

    return-wide v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartTime:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineBirthday;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public hasAssist()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public hasDeclinedStatus()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public hasHeadlineImage()Z
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineBirthday;->hasImage()Z

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public hasInvitedStatus()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mLoadFinished:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 305
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/android/calendar/timely/TimelineBirthday;->mColor:I

    .line 176
    return-void
.end method

.method public setMainAccountEmail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineBirthday;->mMainAccountEmail:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setSingleLineTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineBirthday;->mSingleLineTitle:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineBirthday;->mSubtitle:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineBirthday;->mTitle:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public shouldShowOrganizerImage()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public showEndTime()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public spansAtLeastOneDay()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSwipe()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineBirthday;->getCountOfBirthdays()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineBirthday;->getNames()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartDay:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "[title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", count="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mBirthdayInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mBirthdayInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    .line 338
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 341
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mSingleLineTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mMainAccountEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mLoadFinished:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 348
    iget v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mEndTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mEndDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mStartMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 353
    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineBirthday;->mEndMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 354
    return-void

    .line 346
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
