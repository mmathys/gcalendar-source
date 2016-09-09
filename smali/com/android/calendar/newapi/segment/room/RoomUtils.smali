.class public Lcom/android/calendar/newapi/segment/room/RoomUtils;
.super Ljava/lang/Object;
.source "RoomUtils.java"


# static fields
.field private static final RESPONSE_SORT_ORDER:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/newapi/segment/room/RoomUtils;->RESPONSE_SORT_ORDER:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x0
        0x3
    .end array-data
.end method

.method public static getRooms(Lcom/google/android/calendar/api/Event;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/Event;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v1, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;

    invoke-interface {p0}, Lcom/google/android/calendar/api/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->ROOM_FILTER:Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;

    invoke-direct {v1, v0, v2}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;-><init>(Ljava/util/List;Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;)V

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    sget-object v3, Lcom/android/calendar/newapi/segment/room/RoomUtils;->RESPONSE_SORT_ORDER:[I

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    .line 31
    invoke-virtual {v1, v5}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;->getAttendees(I)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-object v2
.end method
