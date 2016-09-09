.class final Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$12;
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
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lnet/fortuna/ical4j/model/Calendar;Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/property/Attendee;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/component/VEvent;->getOrganizer()Lnet/fortuna/ical4j/model/property/Organizer;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Organizer;->getValue()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/google/android/calendar/ical/ICalProvider;->getEmailWithoutScheme(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/calendar/ical/ICalProvider;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
