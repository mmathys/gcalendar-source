.class public Lcom/android/calendar/timely/TimelineSuggestion;
.super Lcom/android/calendar/timely/TimelineEvent;
.source "TimelineSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ATTENDEE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttendeeExplanations:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/AttendeeExplanation;",
            ">;"
        }
    .end annotation
.end field

.field private mAttendees:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;

.field private mIsCustom:Z

.field private mSuggestionId:Ljava/lang/String;

.field public totalPenalty:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/android/calendar/timely/TimelineSuggestion$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelineSuggestion$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/TimelineSuggestion;->ATTENDEE_COMPARATOR:Ljava/util/Comparator;

    .line 45
    new-instance v0, Lcom/android/calendar/timely/TimelineSuggestion$2;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelineSuggestion$2;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/TimelineSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineEvent;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineEvent;-><init>(Landroid/os/Parcel;)V

    .line 81
    sget-object v0, Lcom/android/calendar/timely/FindTimeAttendee;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mDescription:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/android/calendar/timely/AttendeeExplanation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendeeExplanations:Lcom/google/common/collect/ImmutableList;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mSuggestionId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/timely/TimelineSuggestion;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineEvent;-><init>(Lcom/android/calendar/timely/TimelineEvent;)V

    .line 72
    iget-object v0, p1, Lcom/android/calendar/timely/TimelineSuggestion;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mDescription:Ljava/lang/String;

    .line 73
    iget-wide v0, p1, Lcom/android/calendar/timely/TimelineSuggestion;->totalPenalty:D

    iput-wide v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->totalPenalty:D

    .line 74
    iget-object v0, p1, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    .line 75
    iget-object v0, p1, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendeeExplanations:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendeeExplanations:Lcom/google/common/collect/ImmutableList;

    .line 76
    iget-boolean v0, p1, Lcom/android/calendar/timely/TimelineSuggestion;->mIsCustom:Z

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mIsCustom:Z

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    if-ne p1, p0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/timely/TimelineSuggestion;

    if-nez v2, :cond_2

    move v0, v1

    .line 267
    goto :goto_0

    .line 269
    :cond_2
    check-cast p1, Lcom/android/calendar/timely/TimelineSuggestion;

    .line 270
    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->totalPenalty:D

    iget-wide v4, p1, Lcom/android/calendar/timely/TimelineSuggestion;->totalPenalty:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/timely/TimelineSuggestion;->mDescription:Ljava/lang/String;

    .line 271
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    .line 272
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendeeExplanations:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendeeExplanations:Lcom/google/common/collect/ImmutableList;

    .line 273
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    iget-wide v4, p1, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->endMillis:J

    iget-wide v4, p1, Lcom/android/calendar/timely/TimelineSuggestion;->endMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->startDay:I

    iget v3, p1, Lcom/android/calendar/timely/TimelineSuggestion;->startDay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->endDay:I

    iget v3, p1, Lcom/android/calendar/timely/TimelineSuggestion;->endDay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->startTime:I

    iget v3, p1, Lcom/android/calendar/timely/TimelineSuggestion;->startTime:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->endTime:I

    iget v3, p1, Lcom/android/calendar/timely/TimelineSuggestion;->endTime:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->color:I

    iget v3, p1, Lcom/android/calendar/timely/TimelineSuggestion;->color:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/timely/TimelineSuggestion;->title:Ljava/lang/String;

    .line 281
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mSuggestionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/timely/TimelineSuggestion;->mSuggestionId:Ljava/lang/String;

    .line 282
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mIsCustom:Z

    iget-boolean v3, p1, Lcom/android/calendar/timely/TimelineSuggestion;->mIsCustom:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAttendeeExplanations()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/AttendeeExplanation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendeeExplanations:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getAttendees()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getHiddenAttendeeCount(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    .line 175
    if-ltz p1, :cond_2

    if-nez p1, :cond_3

    if-lez v1, :cond_3

    .line 176
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 177
    :cond_3
    if-le v1, p1, :cond_0

    .line 180
    add-int/lit8 v0, p1, -0x1

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public getSortedAndTruncatedAttendees(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_1

    .line 146
    const/4 v0, 0x0

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    sget-object v1, Lcom/android/calendar/timely/TimelineSuggestion;->ATTENDEE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 152
    if-le v1, p1, :cond_0

    .line 156
    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mSuggestionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 256
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mDescription:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    .line 257
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->endMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->startDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->endDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->startTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->endTime:I

    .line 258
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mSuggestionId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mIsCustom:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 256
    invoke-static {v0}, Lcom/android/calendar/Utils;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCustom()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mIsCustom:Z

    return v0
.end method

.method public setAttendeeExplanations(Lcom/google/common/collect/ImmutableList;)Lcom/android/calendar/timely/TimelineSuggestion;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/AttendeeExplanation;",
            ">;)",
            "Lcom/android/calendar/timely/TimelineSuggestion;"
        }
    .end annotation

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendeeExplanations:Lcom/google/common/collect/ImmutableList;

    .line 228
    return-object p0
.end method

.method public setAttendees(Lcom/google/common/collect/ImmutableList;)Lcom/android/calendar/timely/TimelineSuggestion;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;)",
            "Lcom/android/calendar/timely/TimelineSuggestion;"
        }
    .end annotation

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    .line 189
    return-object p0
.end method

.method public setIsCustom(Z)Lcom/android/calendar/timely/TimelineSuggestion;
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mIsCustom:Z

    .line 194
    return-object p0
.end method

.method public setSuggestionId(Ljava/lang/String;)Lcom/android/calendar/timely/TimelineSuggestion;
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mSuggestionId:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public showEndTime()Z
    .locals 4

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineSuggestion;->getEndMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spansAtLeastOneDay()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/TimelineEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendees:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mAttendeeExplanations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 99
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineSuggestion;->mSuggestionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return-void
.end method
