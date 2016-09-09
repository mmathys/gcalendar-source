.class final Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$18;
.super Ljava/lang/Object;
.source "ICalProvider.java"

# interfaces
.implements Lcom/google/android/calendar/ical/ICalProvider$Attribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lnet/fortuna/ical4j/model/Calendar;Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/property/Attendee;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    # invokes: Lcom/google/android/calendar/ical/ICalProvider;->getAttendeeRelationship(Lnet/fortuna/ical4j/model/property/Attendee;Lnet/fortuna/ical4j/model/component/VEvent;)I
    invoke-static {p3, p2}, Lcom/google/android/calendar/ical/ICalProvider;->access$400(Lnet/fortuna/ical4j/model/property/Attendee;Lnet/fortuna/ical4j/model/component/VEvent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
