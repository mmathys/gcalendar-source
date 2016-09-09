.class public Lcom/android/calendar/timely/TimelineHoliday$Info;
.super Ljava/lang/Object;
.source "TimelineHoliday.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelineHoliday;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/TimelineHoliday$Info;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mItem:Lcom/android/calendar/timely/data/CalendarItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/android/calendar/timely/TimelineHoliday$Info$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelineHoliday$Info$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/TimelineHoliday$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarItem;->newBuilder()Lcom/android/calendar/timely/data/CalendarItem$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/timely/data/CalendarItem$Builder;->setId(J)Lcom/android/calendar/timely/data/CalendarItem$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/data/CalendarItem$Builder;->setDisplayName(Ljava/lang/String;)Lcom/android/calendar/timely/data/CalendarItem$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/data/CalendarItem$Builder;->setOwnerAccount(Ljava/lang/String;)Lcom/android/calendar/timely/data/CalendarItem$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem$Builder;->build()Lcom/android/calendar/timely/data/CalendarItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$Info;->mItem:Lcom/android/calendar/timely/data/CalendarItem;

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/timely/TimelineEvent;)V
    .locals 4

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarItem;->newBuilder()Lcom/android/calendar/timely/data/CalendarItem$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getCalendarId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/timely/data/CalendarItem$Builder;->setId(J)Lcom/android/calendar/timely/data/CalendarItem$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/calendar/timely/TimelineEvent;->ownerAccount:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/data/CalendarItem$Builder;->setDisplayName(Ljava/lang/String;)Lcom/android/calendar/timely/data/CalendarItem$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/calendar/timely/TimelineEvent;->ownerAccount:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/data/CalendarItem$Builder;->setOwnerAccount(Ljava/lang/String;)Lcom/android/calendar/timely/data/CalendarItem$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem$Builder;->build()Lcom/android/calendar/timely/data/CalendarItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$Info;->mItem:Lcom/android/calendar/timely/data/CalendarItem;

    .line 175
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public getCalendarId()J
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$Info;->mItem:Lcom/android/calendar/timely/data/CalendarItem;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCalendarItem()Lcom/android/calendar/timely/data/CalendarItem;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$Info;->mItem:Lcom/android/calendar/timely/data/CalendarItem;

    return-object v0
.end method

.method public setCalendarItem(Lcom/android/calendar/timely/data/CalendarItem;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineHoliday$Info;->mItem:Lcom/android/calendar/timely/data/CalendarItem;

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$Info;->mItem:Lcom/android/calendar/timely/data/CalendarItem;

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineHoliday$Info;->getCalendarId()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "[id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineHoliday$Info;->getCalendarId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineHoliday$Info;->mItem:Lcom/android/calendar/timely/data/CalendarItem;

    invoke-virtual {v2}, Lcom/android/calendar/timely/data/CalendarItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "[id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineHoliday$Info;->getCalendarId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$Info;->mItem:Lcom/android/calendar/timely/data/CalendarItem;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$Info;->mItem:Lcom/android/calendar/timely/data/CalendarItem;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    return-void
.end method
