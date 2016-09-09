.class final Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$3;
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
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidType(Lcom/google/android/calendar/api/attendee/Attendee;)Z
    .locals 2

    .prologue
    .line 50
    iget v0, p1, Lcom/google/android/calendar/api/attendee/Attendee;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    iget-object v0, v0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    .line 51
    invoke-static {v0}, Lcom/android/calendar/event/AttendeeCollection;->isResource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
