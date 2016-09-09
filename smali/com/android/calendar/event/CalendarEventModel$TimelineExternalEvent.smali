.class public final Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;
.super Lcom/android/calendar/timely/TimelineEvent;
.source "CalendarEventModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/CalendarEventModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimelineExternalEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent$1;

    invoke-direct {v0}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent$1;-><init>()V

    sput-object v0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJI)V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineEvent;-><init>()V

    .line 314
    iput-wide p1, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->id:J

    .line 315
    iput-wide p3, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->startMillis:J

    .line 316
    iput-wide p5, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->endMillis:J

    .line 317
    iput p7, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->selfAttendeeStatus:I

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineEvent;-><init>()V

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->id:J

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->startMillis:J

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->endMillis:J

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->selfAttendeeStatus:I

    .line 325
    return-void
.end method


# virtual methods
.method public onModelComplete(Lcom/android/calendar/event/CalendarEventModel;I)V
    .locals 2

    .prologue
    .line 330
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    if-nez v0, :cond_0

    .line 331
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->startMillis:J

    .line 332
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->endMillis:J

    .line 334
    :cond_0
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->calendarId:I

    .line 335
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->title:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->color:I

    .line 337
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->location:Ljava/lang/String;

    .line 338
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->ownerAccount:Ljava/lang/String;

    .line 339
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->organizer:Ljava/lang/String;

    .line 340
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->allDay:Z

    .line 341
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->endTimeUnspecified:Z

    .line 342
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mHasSmartMail:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->hasSmartMail:Z

    .line 343
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/calendar/event/EventExtras;->hasImageData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->hasImage:Z

    .line 344
    iput p2, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->selfAttendeeStatus:I

    .line 345
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->calendarAccessLevel:I

    .line 346
    return-void

    .line 343
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 351
    iget-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->startMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 352
    iget-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->endMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 353
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->selfAttendeeStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    return-void
.end method
