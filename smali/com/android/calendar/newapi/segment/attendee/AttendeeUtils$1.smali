.class final Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$1;
.super Ljava/lang/Object;
.source "AttendeeUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/calendar/api/attendee/Attendee;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/calendar/api/attendee/Attendee;Lcom/google/android/calendar/api/attendee/Attendee;)I
    .locals 2

    .prologue
    .line 31
    invoke-static {p1}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->getAttendeeName(Lcom/google/android/calendar/api/attendee/Attendee;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->getAttendeeName(Lcom/google/android/calendar/api/attendee/Attendee;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/calendar/api/attendee/Attendee;

    check-cast p2, Lcom/google/android/calendar/api/attendee/Attendee;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$1;->compare(Lcom/google/android/calendar/api/attendee/Attendee;Lcom/google/android/calendar/api/attendee/Attendee;)I

    move-result v0

    return v0
.end method
