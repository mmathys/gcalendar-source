.class public Lcom/android/calendar/timely/FindTimeTimeframe;
.super Ljava/lang/Object;
.source "FindTimeTimeframe.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/FindTimeTimeframe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final date:Ljava/lang/Long;

.field public final durationMillis:J

.field public final endTimeMillis:J

.field public final startTimeMillis:J

.field public final timeframeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/calendar/timely/FindTimeTimeframe$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/FindTimeTimeframe$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/FindTimeTimeframe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJLjava/lang/Long;JLjava/lang/Long;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->timeframeType:I

    .line 24
    iput-wide p2, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->startTimeMillis:J

    .line 25
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->endTimeMillis:J

    .line 26
    iput-wide p5, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->durationMillis:J

    .line 27
    iput-object p7, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->date:Ljava/lang/Long;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->timeframeType:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->startTimeMillis:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->endTimeMillis:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->durationMillis:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 84
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->date:Ljava/lang/Long;

    .line 85
    return-void

    .line 84
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/calendar/timely/FindTimeTimeframe$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeTimeframe;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static aroundDate(JJJJ)Lcom/android/calendar/timely/FindTimeTimeframe;
    .locals 8

    .prologue
    .line 40
    new-instance v0, Lcom/android/calendar/timely/FindTimeTimeframe;

    const/4 v1, 0x4

    .line 41
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 42
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-wide v2, p2

    move-wide v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/timely/FindTimeTimeframe;-><init>(IJLjava/lang/Long;JLjava/lang/Long;)V

    .line 40
    return-object v0
.end method

.method public static other(IJJJ)Lcom/android/calendar/timely/FindTimeTimeframe;
    .locals 9

    .prologue
    .line 55
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Around a date timeframes must be built with other factory method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Lcom/android/calendar/timely/FindTimeTimeframe;

    .line 60
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x0

    move v1, p0

    move-wide v2, p1

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/timely/FindTimeTimeframe;-><init>(IJLjava/lang/Long;JLjava/lang/Long;)V

    .line 59
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    if-ne p1, p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/timely/FindTimeTimeframe;

    if-nez v2, :cond_2

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_2
    check-cast p1, Lcom/android/calendar/timely/FindTimeTimeframe;

    .line 115
    iget v2, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->timeframeType:I

    iget v3, p1, Lcom/android/calendar/timely/FindTimeTimeframe;->timeframeType:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->startTimeMillis:J

    iget-wide v4, p1, Lcom/android/calendar/timely/FindTimeTimeframe;->startTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->endTimeMillis:J

    iget-wide v4, p1, Lcom/android/calendar/timely/FindTimeTimeframe;->endTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->durationMillis:J

    iget-wide v4, p1, Lcom/android/calendar/timely/FindTimeTimeframe;->durationMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->date:Ljava/lang/Long;

    iget-object v3, p1, Lcom/android/calendar/timely/FindTimeTimeframe;->date:Ljava/lang/Long;

    .line 119
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->timeframeType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->startTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->endTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->durationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->date:Ljava/lang/Long;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/calendar/Utils;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->timeframeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-wide v0, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->startTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-wide v0, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->endTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-wide v0, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->durationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->date:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeTimeframe;->date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method
