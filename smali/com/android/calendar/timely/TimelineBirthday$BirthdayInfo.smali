.class public Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;
.super Ljava/lang/Object;
.source "TimelineBirthday.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelineBirthday;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthdayInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public calendarId:I

.field public contactId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public eventId:J

.field public fullName:Ljava/lang/String;

.field public isBirthday:Z

.field public isGPlusUser:Z

.field public originalTitle:Ljava/lang/String;

.field public photoURL:Ljava/lang/String;

.field public profileId:Ljava/lang/String;

.field public selfBirthday:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 446
    new-instance v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->eventId:J

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->calendarId:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->originalTitle:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->fullName:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->selfBirthday:Z

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isBirthday:Z

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isGPlusUser:Z

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->profileId:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->contactId:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->photoURL:Ljava/lang/String;

    .line 423
    return-void

    :cond_0
    move v0, v2

    .line 416
    goto :goto_0

    :cond_1
    move v0, v2

    .line 417
    goto :goto_1

    :cond_2
    move v1, v2

    .line 419
    goto :goto_2
.end method

.method public constructor <init>(Lcom/android/calendar/timely/TimelineEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->eventId:J

    .line 396
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getCalendarId()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->calendarId:I

    .line 397
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->originalTitle:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->fullName:Ljava/lang/String;

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    .line 401
    iput-boolean v3, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->selfBirthday:Z

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isBirthday:Z

    .line 404
    iput-boolean v3, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isGPlusUser:Z

    .line 405
    iput-object v2, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->profileId:Ljava/lang/String;

    .line 406
    iput-object v2, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->contactId:Ljava/lang/String;

    .line 407
    iput-object v2, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->photoURL:Ljava/lang/String;

    .line 408
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isBirthday:Z

    if-eqz v0, :cond_0

    .line 464
    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->eventId:J

    iget v2, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->calendarId:I

    iget-object v3, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->fullName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->selfBirthday:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x5d

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "[eventId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calendarId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fullName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selfBirthday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->eventId:J

    iget v2, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->calendarId:I

    iget-object v3, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->originalTitle:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x50

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "[eventId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calendarId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBirthday=false, title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    iget-wide v4, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->eventId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 433
    iget v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->calendarId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->originalTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->selfBirthday:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 438
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isBirthday:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 440
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->isGPlusUser:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 441
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->profileId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->contactId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;->photoURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    return-void

    :cond_0
    move v0, v2

    .line 437
    goto :goto_0

    :cond_1
    move v0, v2

    .line 438
    goto :goto_1

    :cond_2
    move v1, v2

    .line 440
    goto :goto_2
.end method
