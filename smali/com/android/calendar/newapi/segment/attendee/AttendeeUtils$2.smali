.class final Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$2;
.super Ljava/lang/Object;
.source "AttendeeUtils.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidType(Lcom/google/android/calendar/api/attendee/Attendee;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 40
    iget v1, p1, Lcom/google/android/calendar/api/attendee/Attendee;->type:I

    if-ne v1, v0, :cond_0

    iget-object v1, p1, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    iget-object v1, v1, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    .line 41
    invoke-static {v1}, Lcom/android/calendar/event/AttendeeCollection;->isResource(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    :goto_0
    return v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
