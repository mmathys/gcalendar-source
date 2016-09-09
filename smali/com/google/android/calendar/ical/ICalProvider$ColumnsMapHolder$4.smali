.class final Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$4;
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
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lnet/fortuna/ical4j/model/Calendar;Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/property/Attendee;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/component/VEvent;->getSequence()Lnet/fortuna/ical4j/model/property/Sequence;

    move-result-object v0

    # invokes: Lcom/google/android/calendar/ical/ICalProvider;->getPropertyValueOrNull(Lnet/fortuna/ical4j/model/Property;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/calendar/ical/ICalProvider;->access$000(Lnet/fortuna/ical4j/model/Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
